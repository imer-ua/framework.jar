.class public Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
.super Ljava/lang/Object;
.source "WhetstonePackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;
    }
.end annotation


# static fields
.field public static final CAP_LOWMEM_KILL:I = 0x1

.field public static final CAP_LOWMEM_THRESOLD_KILL:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/whetstone/strategy/WhetstonePackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ANDROID_PERSISTENT_APP:I = 0x40000

.field public static final FLAG_APP_STOP:I = 0x40000000

.field public static final FLAG_APP_SYSTEM:I = -0x80000000

.field public static final FLAG_BACKGROUND_START:I = 0x100

.field public static final FLAG_BITMAPCACHE:I = 0x1

.field public static final FLAG_DEAL_SCHEDULE:I = 0x1000

.field public static final FLAG_DESTORYACTIVITY:I = 0x4

.field public static final FLAG_DISABLEOPENGL:I = 0x2

.field public static final FLAG_DISABLE_WAKELOCK:I = 0x4000

.field public static final FLAG_ONEKEY_CLEAN_NO_UI_WHITE:I = 0x20000

.field public static final FLAG_ONEKEY_CLEAN_WHITE:I = 0x10000

.field public static final FLAG_SOFT_RESET:I = 0x400

.field public static final FLAG_TRIMBACKGOUNDAPPS:I = 0x20

.field public static final FLAG_TRIMHEAPS:I = 0x40

.field public static final FLAG_TRIMHEAPSIZE:I = 0x2000

.field public static final FLAG_TRIMPROCESS_BY_ACTIVITY:I = 0x800

.field public static final FLAG_TRIMSERVICES:I = 0x10

.field public static final FLAG_TRIM_OPENGL:I = 0x200

.field public static final FLAG_UPDATESETTING:I = 0x8

.field public static final FLAG_ZRAM:I = 0x80

.field public static final TRIM_LEVEL_WHETSTONE_HEAP:I = 0x3e9

.field public static final TRIM_LEVLE_WHETSTONE_BITMAPCACHE:I = 0x3e8

.field public static final TRIM_LEVLE_WHETSTONE_DEFAULT:I = 0x44c

.field public static final TRIM_LEVLE_WHETSTONE_NATIVE:I = 0x3ea

.field public static final TYPE_AUTO_START:I = 0x40

.field public static final TYPE_GAME:I = 0x2

.field public static final TYPE_IM_PUSH:I = 0x1

.field public static final TYPE_INPUT_METHOD:I = 0x20

.field public static final TYPE_LARGE_MEMORY:I = 0x80

.field public static final TYPE_MUSIC:I = 0x4

.field public static final TYPE_NOTE:I = 0x8

.field public static final TYPE_NOTIFICATION:I = 0x10


# instance fields
.field public capacity:I

.field public flag:I

.field public mBackGroundTime:J

.field public mClearScore:I

.field public mClearType:I

.field public mExceptionAnrCount:I

.field public mExceptionCrashCount:I

.field public mExceptionTotalCount:I

.field public mFirstExceptionTime:J

.field public mForeGroundStartCount:J

.field public mForeGroundTime:J

.field public mHistoryOrder:I

.field public mLifeOrder:I

.field public mPermission:I

.field public mPromoteLevel:I

.field public mScreenOffClear:Z

.field public mStartTime:J

.field public mTotalForeGroundTime:J

.field public nonUiMemoryThresold:I

.field public packageName:Ljava/lang/String;

.field public samePackageList:Ljava/lang/String;

.field public type:I

.field public uiMemoryThresold:I

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;

    invoke-direct {v0}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;-><init>()V

    .line 233
    sput-object v0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 243
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/whetstone/strategy/WhetstonePackageInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "samePList"    # Ljava/lang/String;
    .param p3, "packageCapability"    # I
    .param p4, "uiThreshold"    # I
    .param p5, "nonUiThreshold"    # I
    .param p6, "screenOffClear"    # Z

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->samePackageList:Ljava/lang/String;

    .line 115
    iput p3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->capacity:I

    .line 116
    iput p4, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uiMemoryThresold:I

    .line 117
    iput p5, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->nonUiMemoryThresold:I

    .line 118
    iput-boolean p6, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mScreenOffClear:Z

    .line 119
    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    .line 120
    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    .line 121
    iput-wide v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundStartCount:J

    .line 122
    iput-wide v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundTime:J

    .line 123
    iput-wide v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mBackGroundTime:J

    .line 124
    iput-wide v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mTotalForeGroundTime:J

    .line 125
    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mHistoryOrder:I

    .line 126
    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mLifeOrder:I

    .line 127
    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mClearType:I

    .line 128
    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mClearScore:I

    .line 129
    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPermission:I

    .line 130
    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPromoteLevel:I

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "system"    # Z

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    .line 95
    if-eqz p2, :cond_0

    const/high16 v0, -0x80000000

    :goto_0
    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    .line 96
    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    .line 97
    iput-boolean v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mScreenOffClear:Z

    .line 98
    iput-wide v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundStartCount:J

    .line 99
    iput-wide v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundTime:J

    .line 100
    iput-wide v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mBackGroundTime:J

    .line 101
    iput-wide v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mTotalForeGroundTime:J

    .line 102
    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mHistoryOrder:I

    .line 103
    iput v4, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mLifeOrder:I

    .line 104
    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mClearType:I

    .line 105
    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mClearScore:I

    .line 106
    iput v4, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPermission:I

    .line 107
    iput v4, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPromoteLevel:I

    .line 93
    return-void

    :cond_0
    move v0, v1

    .line 95
    goto :goto_0
.end method


# virtual methods
.method public addFlag(I)V
    .locals 1
    .param p1, "flg"    # I

    .prologue
    .line 191
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    .line 190
    return-void
.end method

.method public addForeGroundStartCount()V
    .locals 4

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundStartCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundStartCount:J

    .line 133
    return-void
.end method

.method public addType(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 187
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    .line 186
    return-void
.end method

.method public clearBackGroundStartTime()V
    .locals 2

    .prologue
    .line 167
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mBackGroundTime:J

    .line 166
    return-void
.end method

.method public clearForeGroundStartTime()V
    .locals 2

    .prologue
    .line 163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundTime:J

    .line 162
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 314
    const/4 v2, 0x0

    .line 316
    .local v2, "info":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v2    # "info":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :goto_0
    return-object v2

    .line 317
    .restart local v2    # "info":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public endForeGround()V
    .locals 6

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->setBackGroundStartTime()V

    .line 153
    iget-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mTotalForeGroundTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mTotalForeGroundTime:J

    .line 151
    return-void
.end method

.method public getForeGroundStartCount()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundStartCount:J

    return-wide v0
.end method

.method public getScore()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mClearScore:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    return v0
.end method

.method public isDisableWakelock()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 199
    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEnable(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 179
    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSystemApp()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 195
    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isType(I)Z
    .locals 2
    .param p1, "flag"    # I

    .prologue
    const/4 v0, 0x0

    .line 183
    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPermission:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPromoteLevel:I

    .line 224
    return-void
.end method

.method public setBackGroundStartTime()V
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mBackGroundTime:J

    return-void
.end method

.method public setForeGroundStartCount(J)V
    .locals 1
    .param p1, "count"    # J

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundStartCount:J

    .line 141
    return-void
.end method

.method public setForeGroundStartTime()V
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundTime:J

    .line 145
    return-void
.end method

.method public setScore(I)V
    .locals 0
    .param p1, "score"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mClearScore:I

    .line 202
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    .line 170
    return-void
.end method

.method public startForceGround()V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->clearBackGroundStartTime()V

    .line 158
    invoke-virtual {p0}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->setForeGroundStartTime()V

    .line 159
    invoke-virtual {p0}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->addForeGroundStartCount()V

    .line 156
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{WhetstonePackageInfo#PacakgeName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string/jumbo v2, " uid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    const-string/jumbo v2, " uiMemoryThresold:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uiMemoryThresold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    const-string/jumbo v2, " nonUiMemoryThresold:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->nonUiMemoryThresold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "hexFlag":Ljava/lang/String;
    const-string/jumbo v2, " Flag:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 257
    const-string/jumbo v2, ",BitmapCache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_0
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 260
    const-string/jumbo v2, ",DestoryActivity"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_1
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 263
    const-string/jumbo v2, ",isOPENGLDiable"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_2
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_3

    .line 266
    const-string/jumbo v2, ",TRIMHEAPS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_3
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_4

    .line 269
    const-string/jumbo v2, ",TRIM_OPENGL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_4
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_5

    .line 272
    const-string/jumbo v2, ",SOFT_RESET"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_5
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    .line 275
    const-string/jumbo v2, ",APP_SYSTEM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_6
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    .line 278
    const-string/jumbo v2, ",ZRAM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_7
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_8

    .line 281
    const-string/jumbo v2, ",TRIMPROCESS_BY_ACTIVITY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_8
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_9

    .line 284
    const-string/jumbo v2, ",FLAG_DEAL_SCHEDULE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_9
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_a

    .line 287
    const-string/jumbo v2, ",FLAG_TRIMHEAPSIZE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_a
    const-string/jumbo v2, "] Type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_b

    .line 291
    const-string/jumbo v2, ",IM_PUSH"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_b
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_c

    .line 294
    const-string/jumbo v2, ",Game"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_c
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_d

    .line 297
    const-string/jumbo v2, ",note"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_d
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_e

    .line 300
    const-string/jumbo v2, ",notification"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_e
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_f

    .line 303
    const-string/jumbo v2, ",AUTO_START"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_f
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_10

    .line 306
    const-string/jumbo v2, ",TYPE_LARGE_MEMORY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_10
    const-string/jumbo v2, "] }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPermission:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPromoteLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    return-void
.end method
