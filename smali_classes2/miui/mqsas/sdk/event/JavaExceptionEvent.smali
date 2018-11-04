.class public Lmiui/mqsas/sdk/event/JavaExceptionEvent;
.super Lmiui/mqsas/sdk/event/ExceptionEvent;
.source "JavaExceptionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/sdk/event/JavaExceptionEvent$1;
    }
.end annotation


# static fields
.field public static CATEGROY_JE_OOM_NEED_DUMPHEAP:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/mqsas/sdk/event/JavaExceptionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExceptionClassName:Ljava/lang/String;

.field private mExceptionMessage:Ljava/lang/String;

.field private mJeCategroy:I

.field private mPrefix:Ljava/lang/String;

.field private mStackTrace:Ljava/lang/String;

.field private mThreadName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    sput v0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->CATEGROY_JE_OOM_NEED_DUMPHEAP:I

    .line 70
    new-instance v0, Lmiui/mqsas/sdk/event/JavaExceptionEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent$1;-><init>()V

    .line 69
    sput-object v0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;-><init>()V

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mThreadName:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mPrefix:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mExceptionClassName:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mExceptionMessage:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mStackTrace:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 80
    invoke-direct {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPid:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDetails:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mThreadName:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mPrefix:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsSystem:Z

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mExceptionClassName:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mExceptionMessage:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mStackTrace:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsUpload:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mJeCategroy:I

    .line 80
    return-void

    :cond_0
    move v0, v2

    .line 93
    goto :goto_0

    :cond_1
    move v1, v2

    .line 97
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public getExceptionClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mExceptionClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mExceptionMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getJeCategroy()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mJeCategroy:I

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getStackTrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mStackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mThreadName:Ljava/lang/String;

    return-object v0
.end method

.method public initType()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    .line 36
    return-void
.end method

.method public setExceptionClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mExceptionClassName"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mExceptionClassName:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setExceptionMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "mExceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mExceptionMessage:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setJeCategroy(I)V
    .locals 0
    .param p1, "jeCategroy"    # I

    .prologue
    .line 146
    iput p1, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mJeCategroy:I

    .line 145
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPrefix"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mPrefix:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setStackTrace(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStackTrace"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mStackTrace:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setThreadName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mThreadName"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mThreadName:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "JavaException { mType="

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

    .line 164
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    const-string/jumbo v2, " mTimeStamp="

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    iget-wide v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    .line 163
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    const-string/jumbo v2, " mDigest="

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    const-string/jumbo v2, " mSummary="

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    const-string/jumbo v2, " mLogName="

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    const-string/jumbo v2, " mKeyWord="

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    const-string/jumbo v2, " mExceptionClassName="

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mExceptionClassName:Ljava/lang/String;

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    const-string/jumbo v2, " mExceptionMessage="

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    iget-object v2, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mExceptionMessage:Ljava/lang/String;

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "JavaException { mType="

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

    .line 152
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    const-string/jumbo v2, " mTimeStamp="

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    iget-wide v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    .line 151
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    const-string/jumbo v2, " mSummary="

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    const-string/jumbo v2, " mDetails="

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDetails:Ljava/lang/String;

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    const-string/jumbo v2, " mDigest="

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    const-string/jumbo v2, " mLogName="

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    const-string/jumbo v2, " mKeyWord="

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    const-string/jumbo v2, " mExceptionClassName="

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mExceptionClassName:Ljava/lang/String;

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    const-string/jumbo v2, " mExceptionMessage="

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mExceptionMessage:Ljava/lang/String;

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    const-string/jumbo v2, " mStackTrace="

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mStackTrace:Ljava/lang/String;

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 157
    const-string/jumbo v2, " mIsSystem="

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 157
    iget-boolean v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsSystem:Z

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 157
    const-string/jumbo v2, " mJeCategroy="

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 157
    iget v2, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mJeCategroy:I

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
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

    .line 48
    iget v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-wide v4, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDetails:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mThreadName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsSystem:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-object v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mExceptionClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mExceptionMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mStackTrace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsUpload:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->mJeCategroy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    return-void

    :cond_0
    move v0, v2

    .line 61
    goto :goto_0

    :cond_1
    move v1, v2

    .line 65
    goto :goto_1
.end method
