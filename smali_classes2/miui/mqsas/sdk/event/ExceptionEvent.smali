.class public Lmiui/mqsas/sdk/event/ExceptionEvent;
.super Ljava/lang/Object;
.source "ExceptionEvent.java"


# static fields
.field public static final IMPORTANT_PROCESS:I = 0x1

.field public static final NORMAL_PROCESS:I = 0x2

.field public static final SEVERITY_FATAL:I = 0x0

.field public static final SEVERITY_MAJOR:I = 0x1

.field public static final SEVERITY_MINOR:I = 0x3

.field public static final SEVERITY_NORMAL:I = 0x2

.field public static final UNKWOWN_PROCESS:I = -0x1

.field public static final VERY_IMPORTANT_PROCESS:I


# instance fields
.field protected mDetails:Ljava/lang/String;

.field protected mDigest:Ljava/lang/String;

.field public final mImportantProcesses:[Ljava/lang/String;

.field protected mIsSystem:Z

.field protected mIsUpload:Z

.field protected mKeyWord:Ljava/lang/String;

.field protected mLogName:Ljava/lang/String;

.field protected mPackageName:Ljava/lang/String;

.field protected mPid:I

.field protected mProcessName:Ljava/lang/String;

.field protected mSummary:Ljava/lang/String;

.field protected mTimeStamp:J

.field protected mType:I

.field public final mVerytImportantProcesses:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-array v0, v6, [Ljava/lang/String;

    .line 18
    const-string/jumbo v1, "system_server"

    aput-object v1, v0, v2

    .line 19
    const-string/jumbo v1, "zygote"

    aput-object v1, v0, v3

    .line 20
    const-string/jumbo v1, "zygote64"

    aput-object v1, v0, v4

    .line 21
    const-string/jumbo v1, "surfaceflinger"

    aput-object v1, v0, v5

    .line 17
    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mVerytImportantProcesses:[Ljava/lang/String;

    .line 24
    new-array v0, v6, [Ljava/lang/String;

    .line 25
    const-string/jumbo v1, "com.android.systemui"

    aput-object v1, v0, v2

    .line 26
    const-string/jumbo v1, "com.miui.home"

    aput-object v1, v0, v3

    .line 27
    const-string/jumbo v1, "com.android.phone"

    aput-object v1, v0, v4

    .line 28
    const-string/jumbo v1, "mediaserver"

    aput-object v1, v0, v5

    .line 24
    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mImportantProcesses:[Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;->initType()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPid:I

    .line 70
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    .line 72
    iput-boolean v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsSystem:Z

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    .line 74
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDetails:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    .line 79
    iput-boolean v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsUpload:Z

    .line 67
    return-void
.end method


# virtual methods
.method public getDetails()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getDigest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    return-object v0
.end method

.method public getEventSeverity()I
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x2

    return v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    return-object v0
.end method

.method public getLogName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPid:I

    return v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    return v0
.end method

.method public initType()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    .line 90
    return-void
.end method

.method public isSystem()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsSystem:Z

    return v0
.end method

.method public isUpload()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsUpload:Z

    return v0
.end method

.method public judgeProcessLevel()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 32
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 33
    :cond_0
    const/4 v1, -0x1

    return v1

    .line 36
    :cond_1
    iget-object v3, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mVerytImportantProcesses:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v0, v3, v2

    .line 37
    .local v0, "process":Ljava/lang/String;
    iget-object v5, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 38
    :cond_2
    return v1

    .line 36
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "process":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mImportantProcesses:[Ljava/lang/String;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_7

    aget-object v0, v2, v1

    .line 43
    .restart local v0    # "process":Ljava/lang/String;
    iget-object v4, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 44
    :cond_5
    const/4 v1, 0x1

    return v1

    .line 42
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 48
    .end local v0    # "process":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x2

    return v1
.end method

.method public setDetails(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDetails"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDetails:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setDigest(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDigest"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setKeyWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "mKeyWord"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setLogName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLogName"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPackageName"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setPid(I)V
    .locals 0
    .param p1, "mPid"    # I

    .prologue
    .line 99
    iput p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPid:I

    .line 98
    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mProcessName"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSummary"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setSystem(Z)V
    .locals 0
    .param p1, "system"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsSystem:Z

    .line 122
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1
    .param p1, "mTimeStamp"    # J

    .prologue
    .line 131
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    .line 130
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "mType"    # I

    .prologue
    .line 87
    iput p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    .line 86
    return-void
.end method

.method public setUpload(Z)V
    .locals 0
    .param p1, "upload"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsUpload:Z

    .line 178
    return-void
.end method
