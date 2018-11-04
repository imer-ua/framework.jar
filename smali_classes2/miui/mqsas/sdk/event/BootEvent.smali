.class public Lmiui/mqsas/sdk/event/BootEvent;
.super Ljava/lang/Object;
.source "BootEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/sdk/event/BootEvent$1;
    }
.end annotation


# static fields
.field public static final ACTION_BOOT_AMS_READY:Ljava/lang/String; = "AmsReady"

.field public static final ACTION_BOOT_BOOT_COMPLETE:Ljava/lang/String; = "BootComplete"

.field public static final ACTION_BOOT_DEXOPT:Ljava/lang/String; = "Dexopt"

.field public static final ACTION_BOOT_PMS_SCAN:Ljava/lang/String; = "PmsScan"

.field public static final ACTION_BOOT_SYSTEM_RUN:Ljava/lang/String; = "SystemRun"

.field public static final ACTION_BOOT_UI_READY:Ljava/lang/String; = "UIReady"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/mqsas/sdk/event/BootEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_BOOT_FIRST:I = 0x2

.field public static final TYPE_BOOT_NORMAL:I = 0x1

.field public static final TYPE_BOOT_OTA:I = 0x3


# instance fields
.field private mBootType:I

.field private mDetailAmsReady:Ljava/lang/String;

.field private mDetailBootComplete:Ljava/lang/String;

.field private mDetailDexopt:Ljava/lang/String;

.field private mDetailPmsScan:Ljava/lang/String;

.field private mDetailSystemRun:Ljava/lang/String;

.field private mDetailUIReady:Ljava/lang/String;

.field private mMiuiVersion:Ljava/lang/String;

.field private mPeriodAmsReady:J

.field private mPeriodBootComplete:J

.field private mPeriodDexopt:J

.field private mPeriodPmsScan:J

.field private mPeriodSystemRun:J

.field private mPeriodUIReady:J

.field private mTimeStamp:J

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lmiui/mqsas/sdk/event/BootEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/BootEvent$1;-><init>()V

    .line 102
    sput-object v0, Lmiui/mqsas/sdk/event/BootEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mType:I

    .line 59
    iput-wide v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mTimeStamp:J

    .line 60
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mMiuiVersion:Ljava/lang/String;

    .line 61
    iput v1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mBootType:I

    .line 62
    iput-wide v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodSystemRun:J

    .line 63
    iput-wide v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodPmsScan:J

    .line 64
    iput-wide v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodDexopt:J

    .line 65
    iput-wide v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodAmsReady:J

    .line 66
    iput-wide v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodUIReady:J

    .line 67
    iput-wide v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodBootComplete:J

    .line 68
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailSystemRun:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailPmsScan:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailDexopt:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailAmsReady:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailUIReady:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailBootComplete:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mType:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mTimeStamp:J

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mBootType:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodSystemRun:J

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodPmsScan:J

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodDexopt:J

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodAmsReady:J

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodUIReady:J

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodBootComplete:J

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailSystemRun:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailPmsScan:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailDexopt:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailAmsReady:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailUIReady:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailBootComplete:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mMiuiVersion:Ljava/lang/String;

    .line 113
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/BootEvent;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/BootEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static bootTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "bootType"    # I

    .prologue
    .line 161
    packed-switch p0, :pswitch_data_0

    .line 169
    const-string/jumbo v0, "Unknown"

    return-object v0

    .line 163
    :pswitch_0
    const-string/jumbo v0, "NormalBoot"

    return-object v0

    .line 165
    :pswitch_1
    const-string/jumbo v0, "FirstBoot"

    return-object v0

    .line 167
    :pswitch_2
    const-string/jumbo v0, "OtaBoot"

    return-object v0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private formatTime(J)Ljava/lang/String;
    .locals 3
    .param p1, "timestamp"    # J

    .prologue
    .line 135
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public getBootType()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mBootType:I

    return v0
.end method

.method public getDetailAmsReady()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailAmsReady:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailBootComplete()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailBootComplete:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailDexopt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailDexopt:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailPmsScan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailPmsScan:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailSystemRun()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailSystemRun:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailUIReady()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailUIReady:Ljava/lang/String;

    return-object v0
.end method

.method public getMiuiVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mMiuiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodAmsReady()J
    .locals 2

    .prologue
    .line 231
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodAmsReady:J

    return-wide v0
.end method

.method public getPeriodBootComplete()J
    .locals 2

    .prologue
    .line 247
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodBootComplete:J

    return-wide v0
.end method

.method public getPeriodDexopt()J
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodDexopt:J

    return-wide v0
.end method

.method public getPeriodPmsScan()J
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodPmsScan:J

    return-wide v0
.end method

.method public getPeriodSystemRun()J
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodSystemRun:J

    return-wide v0
.end method

.method public getPeriodUIReady()J
    .locals 2

    .prologue
    .line 239
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodUIReady:J

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mTimeStamp:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mType:I

    return v0
.end method

.method public setBootType(I)V
    .locals 0
    .param p1, "mBootType"    # I

    .prologue
    .line 203
    iput p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mBootType:I

    .line 202
    return-void
.end method

.method public setDetailAmsReady(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDetailAmsReady"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailAmsReady:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setDetailBootComplete(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDetailBootComplete"    # Ljava/lang/String;

    .prologue
    .line 299
    iput-object p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailBootComplete:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setDetailDexopt(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDetailDexopt"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailDexopt:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setDetailPmsScan(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDetailPmsScan"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailPmsScan:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setDetailSystemRun(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDetailSystemRun"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailSystemRun:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setDetailUIReady(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDetailUIReady"    # Ljava/lang/String;

    .prologue
    .line 291
    iput-object p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailUIReady:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setMiuiVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMiuiVersion"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mMiuiVersion:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setPeriodAmsReady(J)V
    .locals 1
    .param p1, "mPeriodAmsReady"    # J

    .prologue
    .line 235
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodAmsReady:J

    .line 234
    return-void
.end method

.method public setPeriodBootComplete(J)V
    .locals 1
    .param p1, "mPeriodBootComplete"    # J

    .prologue
    .line 251
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodBootComplete:J

    .line 250
    return-void
.end method

.method public setPeriodDexopt(J)V
    .locals 1
    .param p1, "mPeriodDexopt"    # J

    .prologue
    .line 227
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodDexopt:J

    .line 226
    return-void
.end method

.method public setPeriodPmsScan(J)V
    .locals 1
    .param p1, "mPeriodPmsScan"    # J

    .prologue
    .line 219
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodPmsScan:J

    .line 218
    return-void
.end method

.method public setPeriodSystemRun(J)V
    .locals 1
    .param p1, "mPeriodSystemRun"    # J

    .prologue
    .line 211
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodSystemRun:J

    .line 210
    return-void
.end method

.method public setPeriodUIReady(J)V
    .locals 1
    .param p1, "mPeriodUIReady"    # J

    .prologue
    .line 243
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodUIReady:J

    .line 242
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1
    .param p1, "mTimeStamp"    # J

    .prologue
    .line 187
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mTimeStamp:J

    .line 186
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "mType"    # I

    .prologue
    .line 179
    iput p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mType:I

    .line 178
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "BootEvent {mTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mTimeStamp:J

    invoke-direct {p0, v2, v3}, Lmiui/mqsas/sdk/event/BootEvent;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 142
    const-string/jumbo v2, ","

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 142
    const-string/jumbo v2, "mBootType="

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 142
    iget v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mBootType:I

    invoke-static {v2}, Lmiui/mqsas/sdk/event/BootEvent;->bootTypeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 143
    const-string/jumbo v2, ","

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 143
    const-string/jumbo v2, "mPeriod"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 143
    const-string/jumbo v2, "SystemRun"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 143
    const-string/jumbo v2, ":"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 143
    iget-wide v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodSystemRun:J

    .line 141
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    const-string/jumbo v2, ","

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    const-string/jumbo v2, "mPeriod"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    const-string/jumbo v2, "PmsScan"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    const-string/jumbo v2, ":"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    iget-wide v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodPmsScan:J

    .line 141
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    const-string/jumbo v2, ","

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    const-string/jumbo v2, "mPeriod"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    const-string/jumbo v2, "Dexopt"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    const-string/jumbo v2, ":"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    iget-wide v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodDexopt:J

    .line 141
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    const-string/jumbo v2, ","

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    const-string/jumbo v2, "mPeriod"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    const-string/jumbo v2, "AmsReady"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    const-string/jumbo v2, ":"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    iget-wide v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodAmsReady:J

    .line 141
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    const-string/jumbo v2, ","

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    const-string/jumbo v2, "mPeriod"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    const-string/jumbo v2, "UIReady"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    const-string/jumbo v2, ":"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    iget-wide v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodUIReady:J

    .line 141
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    const-string/jumbo v2, ","

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    const-string/jumbo v2, "mPeriod"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    const-string/jumbo v2, "BootComplete"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    const-string/jumbo v2, ":"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    iget-wide v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodBootComplete:J

    .line 141
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    const-string/jumbo v2, ","

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    const-string/jumbo v2, "mDetail"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    const-string/jumbo v2, "SystemRun"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    const-string/jumbo v2, ":"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailSystemRun:Ljava/lang/String;

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    const-string/jumbo v2, ","

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    const-string/jumbo v2, "mDetail"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    const-string/jumbo v2, "PmsScan"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    const-string/jumbo v2, ":"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailPmsScan:Ljava/lang/String;

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    const-string/jumbo v2, ","

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    const-string/jumbo v2, "mDetail"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    const-string/jumbo v2, "Dexopt"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    const-string/jumbo v2, ":"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailDexopt:Ljava/lang/String;

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    const-string/jumbo v2, ","

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    const-string/jumbo v2, "mDetail"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    const-string/jumbo v2, "AmsReady"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    const-string/jumbo v2, ":"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailAmsReady:Ljava/lang/String;

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    const-string/jumbo v2, ","

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    const-string/jumbo v2, "mDetail"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    const-string/jumbo v2, "UIReady"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    const-string/jumbo v2, ":"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailUIReady:Ljava/lang/String;

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    const-string/jumbo v2, ","

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    const-string/jumbo v2, "mDetail"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    const-string/jumbo v2, "BootComplete"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    const-string/jumbo v2, ":"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    iget-object v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailBootComplete:Ljava/lang/String;

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    const-string/jumbo v2, ","

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    const-string/jumbo v2, "mMiuiVersion"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    const-string/jumbo v2, ":"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mMiuiVersion:Ljava/lang/String;

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    const-string/jumbo v2, "}"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 84
    iget v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mBootType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodSystemRun:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 88
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodPmsScan:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodDexopt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 90
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodAmsReady:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodUIReady:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodBootComplete:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailSystemRun:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailPmsScan:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailDexopt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailAmsReady:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailUIReady:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailBootComplete:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mMiuiVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return-void
.end method
