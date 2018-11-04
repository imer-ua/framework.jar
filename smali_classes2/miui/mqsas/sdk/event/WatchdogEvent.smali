.class public Lmiui/mqsas/sdk/event/WatchdogEvent;
.super Lmiui/mqsas/sdk/event/ExceptionEvent;
.source "WatchdogEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/sdk/event/WatchdogEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/mqsas/sdk/event/WatchdogEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCheckers:[Ljava/lang/String;

.field private mStackTraces:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lmiui/mqsas/sdk/event/WatchdogEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/WatchdogEvent$1;-><init>()V

    .line 52
    sput-object v0, Lmiui/mqsas/sdk/event/WatchdogEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 63
    invoke-direct {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPid:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsSystem:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDetails:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/WatchdogEvent;->mCheckers:[Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/WatchdogEvent;->mStackTraces:[Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsUpload:Z

    .line 63
    return-void

    :cond_0
    move v0, v2

    .line 68
    goto :goto_0

    :cond_1
    move v1, v2

    .line 77
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/WatchdogEvent;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/WatchdogEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public getCheckers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lmiui/mqsas/sdk/event/WatchdogEvent;->mCheckers:[Ljava/lang/String;

    return-object v0
.end method

.method public getStackTraces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lmiui/mqsas/sdk/event/WatchdogEvent;->mStackTraces:[Ljava/lang/String;

    return-object v0
.end method

.method public initType()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    .line 24
    return-void
.end method

.method public setCheckers([Ljava/lang/String;)V
    .locals 0
    .param p1, "mCheckers"    # [Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lmiui/mqsas/sdk/event/WatchdogEvent;->mCheckers:[Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setStackTraces([Ljava/lang/String;)V
    .locals 0
    .param p1, "mStackTraces"    # [Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lmiui/mqsas/sdk/event/WatchdogEvent;->mStackTraces:[Ljava/lang/String;

    .line 93
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Watchdog { mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " processName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    const-string/jumbo v2, " mTimeStamp="

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    iget-wide v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    .line 109
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 111
    const-string/jumbo v2, " mDigest="

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 112
    const-string/jumbo v2, " mSummary="

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 112
    const-string/jumbo v2, " mLogName="

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 113
    const-string/jumbo v2, " mKeyWord="

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Watchdog { mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " processName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 100
    const-string/jumbo v2, " mTimeStamp="

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 100
    iget-wide v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    .line 99
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    const-string/jumbo v2, " mSummary="

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    const-string/jumbo v2, " mDetails="

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDetails:Ljava/lang/String;

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    const-string/jumbo v2, " mDigest="

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    const-string/jumbo v2, " mLogName="

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 103
    const-string/jumbo v2, " mKeyWord="

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    iget v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsSystem:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-wide v4, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDetails:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lmiui/mqsas/sdk/event/WatchdogEvent;->mCheckers:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lmiui/mqsas/sdk/event/WatchdogEvent;->mStackTraces:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 49
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsUpload:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    return-void

    :cond_0
    move v0, v2

    .line 40
    goto :goto_0

    :cond_1
    move v1, v2

    .line 49
    goto :goto_1
.end method
