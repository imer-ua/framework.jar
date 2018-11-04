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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 337
    new-instance v0, Lmiui/process/ProcessConfig$1;

    invoke-direct {v0}, Lmiui/process/ProcessConfig$1;-><init>()V

    .line 336
    sput-object v0, Lmiui/process/ProcessConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "policy"    # I

    .prologue
    const/4 v1, -0x1

    const/16 v0, -0x2710

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v0, p0, Lmiui/process/ProcessConfig;->mUserId:I

    .line 76
    iput v1, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    .line 79
    iput v1, p0, Lmiui/process/ProcessConfig;->mUid:I

    .line 82
    iput v0, p0, Lmiui/process/ProcessConfig;->mPriority:I

    .line 108
    iput p1, p0, Lmiui/process/ProcessConfig;->mPolicy:I

    .line 107
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
    .line 156
    .local p3, "killingPackageMaps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0, p1}, Lmiui/process/ProcessConfig;-><init>(I)V

    .line 157
    iput p2, p0, Lmiui/process/ProcessConfig;->mUserId:I

    .line 158
    iput-object p3, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    .line 155
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
    .line 176
    .local p3, "killingPackageMaps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lmiui/process/ProcessConfig;-><init>(IILandroid/util/ArrayMap;)V

    .line 177
    iput-object p4, p0, Lmiui/process/ProcessConfig;->mReason:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "policy"    # I
    .param p2, "killingPackage"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lmiui/process/ProcessConfig;-><init>(I)V

    .line 123
    iput-object p2, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    .line 124
    iput p3, p0, Lmiui/process/ProcessConfig;->mUid:I

    .line 121
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .param p1, "policy"    # I
    .param p2, "killingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "taskId"    # I

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lmiui/process/ProcessConfig;-><init>(I)V

    .line 137
    iput-object p2, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    .line 138
    iput p3, p0, Lmiui/process/ProcessConfig;->mUserId:I

    .line 139
    iput p4, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    .line 135
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, -0x1

    const/16 v0, -0x2710

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v0, p0, Lmiui/process/ProcessConfig;->mUserId:I

    .line 76
    iput v1, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    .line 79
    iput v1, p0, Lmiui/process/ProcessConfig;->mUid:I

    .line 82
    iput v0, p0, Lmiui/process/ProcessConfig;->mPriority:I

    .line 349
    invoke-virtual {p0, p1}, Lmiui/process/ProcessConfig;->readFromParcel(Landroid/os/Parcel;)V

    .line 348
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
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public getKillingPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
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
    .line 225
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getPolicy()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lmiui/process/ProcessConfig;->mPolicy:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lmiui/process/ProcessConfig;->mPriority:I

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
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
    .line 221
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    return-object v0
.end method

.method public getTaskId()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lmiui/process/ProcessConfig;->mUid:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 197
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
    .line 185
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public isPriorityInvalid()Z
    .locals 2

    .prologue
    .line 365
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
    .line 213
    iget-boolean v0, p0, Lmiui/process/ProcessConfig;->mRemoveTaskNeeded:Z

    return v0
.end method

.method public isTaskIdInvalid()Z
    .locals 2

    .prologue
    .line 357
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
    .line 361
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
    .line 353
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

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lmiui/process/ProcessConfig;->mPolicy:I

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/process/ProcessConfig;->mReason:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lmiui/process/ProcessConfig;->mUserId:I

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lmiui/process/ProcessConfig;->mUid:I

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lmiui/process/ProcessConfig;->mPriority:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lmiui/process/ProcessConfig;->mRemoveTaskNeeded:Z

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    const-class v2, Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    .line 322
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 323
    const-class v2, Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    .line 326
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 328
    .local v0, "level":Ljava/lang/Integer;
    const-class v2, Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    .line 329
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    if-nez v2, :cond_3

    .line 330
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    .line 332
    :cond_3
    iget-object v2, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 308
    .end local v0    # "level":Ljava/lang/Integer;
    .end local v1    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method public setKillingPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "killingPackage"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    .line 232
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
    .line 237
    .local p1, "killingPackageMaps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    .line 236
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 257
    iput p1, p0, Lmiui/process/ProcessConfig;->mPriority:I

    .line 256
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lmiui/process/ProcessConfig;->mReason:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setRemoveTaskNeeded(Z)V
    .locals 0
    .param p1, "removeTaskNeeded"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Lmiui/process/ProcessConfig;->mRemoveTaskNeeded:Z

    .line 260
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
    .line 217
    .local p1, "taskIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    .line 216
    return-void
.end method

.method public setTaskId(I)V
    .locals 0
    .param p1, "taskId"    # I

    .prologue
    .line 253
    iput p1, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    .line 252
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 249
    iput p1, p0, Lmiui/process/ProcessConfig;->mUid:I

    .line 248
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 245
    iput p1, p0, Lmiui/process/ProcessConfig;->mUserId:I

    .line 244
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
    .line 229
    .local p1, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    .line 228
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 271
    iget v3, p0, Lmiui/process/ProcessConfig;->mPolicy:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget v3, p0, Lmiui/process/ProcessConfig;->mUserId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget v3, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget v3, p0, Lmiui/process/ProcessConfig;->mUid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget v3, p0, Lmiui/process/ProcessConfig;->mPriority:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-boolean v3, p0, Lmiui/process/ProcessConfig;->mRemoveTaskNeeded:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 281
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 287
    :goto_1
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 288
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 294
    :goto_2
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    if-eqz v3, :cond_4

    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 296
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 297
    .local v1, "level":Ljava/lang/Integer;
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 298
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 299
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 295
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    .end local v1    # "level":Ljava/lang/Integer;
    .end local v2    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move v3, v5

    .line 278
    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 291
    :cond_3
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 305
    :cond_4
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    return-void
.end method
