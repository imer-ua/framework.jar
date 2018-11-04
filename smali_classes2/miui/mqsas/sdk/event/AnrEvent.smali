.class public Lmiui/mqsas/sdk/event/AnrEvent;
.super Lmiui/mqsas/sdk/event/ExceptionEvent;
.source "AnrEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/sdk/event/AnrEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/mqsas/sdk/event/AnrEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final PATTERN_ACTION:Ljava/util/regex/Pattern;

.field private static final PATTERN_COMPONENT:Ljava/util/regex/Pattern;

.field private static final REGEX_DECIMAL:Ljava/lang/String; = "\\d{1,}\\.\\d{1,}"

.field private static final REGEX_EXTRAS:Ljava/lang/String; = "(?<=timed out \\().*?(?=Waiting)"

.field private static final REGEX_INT:Ljava/lang/String; = "\\d{1,}"

.field private static final REGEX_STATUS:Ljava/lang/String; = "NORMAL|BROKEN|ZOMBIE|UNKNOWN"

.field private static final REGEX_TARGET_TYPE:Ljava/lang/String; = "touched|focused"

.field private static final REPLACEMENT:Ljava/lang/String; = "XX"

.field private static final SPECIAL_CHARS:Ljava/lang/String; = "\\(\\)\\{\\}\\[\\]\\s"


# instance fields
.field private mCpuInfo:Ljava/lang/String;

.field private mIsBgAnr:Z

.field private mParent:Ljava/lang/String;

.field private mReason:Ljava/lang/String;

.field private mTargetActivity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "act=[^\\(\\)\\{\\}\\[\\]\\s]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/mqsas/sdk/event/AnrEvent;->PATTERN_ACTION:Ljava/util/regex/Pattern;

    .line 24
    const-string/jumbo v0, "cmp=[^\\(\\)\\{\\}\\[\\]\\s]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/mqsas/sdk/event/AnrEvent;->PATTERN_COMPONENT:Ljava/util/regex/Pattern;

    .line 77
    new-instance v0, Lmiui/mqsas/sdk/event/AnrEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/AnrEvent$1;-><init>()V

    .line 76
    sput-object v0, Lmiui/mqsas/sdk/event/AnrEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsBgAnr:Z

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTargetActivity:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mParent:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mCpuInfo:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 87
    invoke-direct {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPid:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsSystem:Z

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDetails:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsBgAnr:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTargetActivity:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mParent:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mCpuInfo:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsUpload:Z

    .line 87
    return-void

    :cond_0
    move v0, v2

    .line 92
    goto :goto_0

    :cond_1
    move v0, v2

    .line 99
    goto :goto_1

    :cond_2
    move v1, v2

    .line 104
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/AnrEvent;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/AnrEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private getAnrType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->isInputAnr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const-string/jumbo v0, "input"

    return-object v0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->isServiceAnr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    const-string/jumbo v0, "service"

    return-object v0

    .line 233
    :cond_1
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->isBroadcastAnr()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    const-string/jumbo v0, "broadcast"

    return-object v0

    .line 235
    :cond_2
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->isProviderAnr()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    const-string/jumbo v0, "provider"

    return-object v0

    .line 238
    :cond_3
    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method private getBroadcastDetails()Ljava/lang/String;
    .locals 6

    .prologue
    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v2, "details":Ljava/lang/StringBuilder;
    sget-object v3, Lmiui/mqsas/sdk/event/AnrEvent;->PATTERN_ACTION:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 176
    .local v0, "act":Ljava/util/regex/Matcher;
    sget-object v3, Lmiui/mqsas/sdk/event/AnrEvent;->PATTERN_COMPONENT:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 177
    .local v1, "cmp":Ljava/util/regex/Matcher;
    const-string/jumbo v3, "Broadcast of Intent { "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 178
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 179
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 180
    const-string/jumbo v4, "}"

    .line 177
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 178
    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0

    .line 179
    :cond_1
    const-string/jumbo v3, ""

    goto :goto_1
.end method

.method private getFixedReason(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Input dispatching timed out"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    :try_start_0
    const-string/jumbo v2, "\\d{1,}\\.\\d{1,}"

    const-string/jumbo v3, "XX"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 301
    const-string/jumbo v3, "\\d{1,}"

    const-string/jumbo v4, "XX"

    .line 300
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 302
    const-string/jumbo v3, "touched|focused"

    const-string/jumbo v4, "XX"

    .line 300
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    const-string/jumbo v3, "NORMAL|BROKEN|ZOMBIE|UNKNOWN"

    const-string/jumbo v4, "XX"

    .line 300
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 304
    .local v1, "newStr":Ljava/lang/String;
    return-object v1

    .line 305
    .end local v1    # "newStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object p1
.end method

.method private getInformation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "information":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->isBroadcastAnr()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    invoke-direct {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->getBroadcastDetails()Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_0
    return-object v0

    .line 188
    :cond_1
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->isInputAnr()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "system"

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    const-string/jumbo v1, "(?<=timed out \\().*?(?=Waiting)"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createDefaultDetails()Ljava/lang/String;
    .locals 4

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v0, "detailBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "@@@"

    .line 223
    .local v1, "splitChar":Ljava/lang/String;
    const-string/jumbo v2, "bgAnr="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->getBgAnr()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string/jumbo v2, "type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->getAnrType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public createDefaultDigest()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v0, "digest":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v1, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTargetActivity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    iget-object v1, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTargetActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_0
    invoke-direct {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->getInformation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public createDefaultSummary()Ljava/lang/String;
    .locals 3

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v0, "summary":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ANR in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-object v1, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTargetActivity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    iget-object v1, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTargetActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_0
    invoke-direct {p0}, Lmiui/mqsas/sdk/event/AnrEvent;->getInformation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getBgAnr()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsBgAnr:Z

    return v0
.end method

.method public getCpuInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mCpuInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mParent:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTargetActivity:Ljava/lang/String;

    return-object v0
.end method

.method public initType()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x8

    iput v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    .line 45
    return-void
.end method

.method public isBroadcastAnr()Z
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    const-string/jumbo v1, "Broadcast of"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x1

    return v0

    .line 266
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInputAnr()Z
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    const-string/jumbo v1, "Input dispatching timed out"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x1

    return v0

    .line 248
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isProviderAnr()Z
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    const-string/jumbo v1, "ContentProvider not responding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x1

    return v0

    .line 275
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isServiceAnr()Z
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    const-string/jumbo v1, "executing service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x1

    return v0

    .line 257
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setBgAnr(Z)V
    .locals 0
    .param p1, "mIsBgAnr"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsBgAnr:Z

    .line 111
    return-void
.end method

.method public setCpuInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "cpuInfo"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mCpuInfo:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setParent(Ljava/lang/String;)V
    .locals 0
    .param p1, "mParent"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mParent:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 1
    .param p1, "mReason"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/AnrEvent;->getFixedReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setTargetActivity(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTargetActivity"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTargetActivity:Ljava/lang/String;

    .line 127
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
    const-string/jumbo v1, "AnrEvent { mType="

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
    const-string/jumbo v2, " mIsBgAnr="

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    iget-boolean v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsBgAnr:Z

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    const-string/jumbo v2, " mReason="

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    const-string/jumbo v2, " mTargetActivity="

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTargetActivity:Ljava/lang/String;

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    const-string/jumbo v2, " mParent="

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mParent:Ljava/lang/String;

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    const-string/jumbo v2, " mCpuinfo="

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mCpuInfo:Ljava/lang/String;

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "AnrEvent { mType="

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

    .line 151
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    const-string/jumbo v2, " mTimeStamp="

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    iget-wide v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    .line 150
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    const-string/jumbo v2, " mSummary="

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    const-string/jumbo v2, " mDetails="

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDetails:Ljava/lang/String;

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    const-string/jumbo v2, " mDigest="

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    const-string/jumbo v2, " mDetails="

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDetails:Ljava/lang/String;

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    const-string/jumbo v2, " mSummary="

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    const-string/jumbo v2, " mLogName="

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    const-string/jumbo v2, " mKeyWord="

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    const-string/jumbo v2, " mIsBgAnr="

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    iget-boolean v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsBgAnr:Z

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    const-string/jumbo v2, " mReason="

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    const-string/jumbo v2, " mTargetActivity="

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTargetActivity:Ljava/lang/String;

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 157
    const-string/jumbo v2, " mParent="

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mParent:Ljava/lang/String;

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 157
    const-string/jumbo v2, " mCpuinfo="

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mCpuInfo:Ljava/lang/String;

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 57
    iget v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsSystem:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-wide v4, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDetails:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mIsBgAnr:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mTargetActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mParent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lmiui/mqsas/sdk/event/AnrEvent;->mCpuInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsUpload:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return-void

    :cond_0
    move v0, v2

    .line 61
    goto :goto_0

    :cond_1
    move v0, v2

    .line 68
    goto :goto_1

    :cond_2
    move v1, v2

    .line 73
    goto :goto_2
.end method
