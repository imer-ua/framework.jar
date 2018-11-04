.class public Lmiui/mqsas/sdk/event/ScreenOnEvent;
.super Ljava/lang/Object;
.source "ScreenOnEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/sdk/event/ScreenOnEvent$1;
    }
.end annotation


# static fields
.field public static final AVG_SCREEN_ON:Ljava/lang/String; = "avg_screen_on"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/mqsas/sdk/event/ScreenOnEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final LT_SCREEN_ON:Ljava/lang/String; = "lt_screen_on"

.field public static final TYPE_SCREEN_ON:[Ljava/lang/String;


# instance fields
.field private mBlockScreenTime:J

.field private mScreenOnType:Ljava/lang/String;

.field private mSetDisplayTime:J

.field private mTimeOutDetail:Ljava/lang/String;

.field private mTimeStamp:Ljava/lang/String;

.field private mTimeoutSummary:Ljava/lang/String;

.field private mTotalTime:J

.field private mWakeSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "avg_screen_on"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "power"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "dp_center"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 14
    const-string/jumbo v1, "keyguard_screenon_notification"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "keyguard_screenon_finger_pass"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "lid"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 13
    sput-object v0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->TYPE_SCREEN_ON:[Ljava/lang/String;

    .line 80
    new-instance v0, Lmiui/mqsas/sdk/event/ScreenOnEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/ScreenOnEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    .line 63
    iput-wide v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    .line 64
    iput-wide v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    .line 65
    iput-wide v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    .line 66
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/ScreenOnEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/ScreenOnEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public getBlockScreenTime()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    return-wide v0
.end method

.method public getScreenOnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    return-object v0
.end method

.method public getSetDisplayTime()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    return-wide v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeoutSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    return-wide v0
.end method

.method public getWakeSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    return-object v0
.end method

.method public getmTimeOutDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    return-object v0
.end method

.method public setBlockScreenTime(J)V
    .locals 1
    .param p1, "mBlockScreenTime"    # J

    .prologue
    .line 146
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    .line 145
    return-void
.end method

.method public setScreenOnType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mScreenOnType"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setSetDisplayTime(J)V
    .locals 1
    .param p1, "mSetDisplayTime"    # J

    .prologue
    .line 138
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    .line 137
    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTimeStamp"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setTimeoutSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTimeoutSummary"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setTotalTime(J)V
    .locals 1
    .param p1, "mTotalTime"    # J

    .prologue
    .line 130
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    .line 129
    return-void
.end method

.method public setWakeSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "mWakeSource"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setmTimeOutDetail(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTimeOutDetail"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ScreenOnEvent { mTimeoutSummary = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    const-string/jumbo v2, ", mTimeOutDetail = "

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    const-string/jumbo v2, ", mWakeSource = "

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    const-string/jumbo v2, ", mTimeStamp = "

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    const-string/jumbo v2, ", mTotalTime = "

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    iget-wide v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    .line 161
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    const-string/jumbo v2, ", mSetDisplayTime = "

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    iget-wide v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    .line 161
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    const-string/jumbo v2, ", mBlockScreenTime = "

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    iget-wide v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    .line 161
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    const-string/jumbo v2, ", mScreenOnType = "

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    const-string/jumbo v2, " }"

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 186
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 187
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 188
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    return-void
.end method
