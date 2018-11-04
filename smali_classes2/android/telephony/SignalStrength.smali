.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SignalStrength$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x6

.field private static final RSRP_THRESH_LENIENT:[I

.field private static final RSRP_THRESH_STRICT:[I

.field private static final RSRP_THRESH_TYPE_STRICT:I = 0x0

.field public static final SIGNAL_STRENGTH_EXCELLENT:I = 0x5

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mTdScdmaRscp:I

.field private mThreshRsrp:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 57
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 60
    const-string/jumbo v1, "none"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "poor"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "moderate"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "good"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "great"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "excellent"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 57
    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 71
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    .line 72
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    .line 382
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    return-void

    .line 71
    :array_0
    .array-data 4
        -0x8c
        -0x78
        -0x73
        -0x6e
        -0x69
        -0x61
        -0x2c
    .end array-data

    .line 72
    :array_1
    .array-data 4
        -0x8c
        -0x8c
        -0x7d
        -0x73
        -0x6e
        -0x66
        -0x2c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 119
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 120
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 121
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 122
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 123
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 124
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 125
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 126
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 127
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 128
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 129
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 130
    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 117
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZ)V
    .locals 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "gsmFlag"    # Z

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p14

    .line 169
    invoke-virtual/range {v1 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 172
    move/from16 v0, p13

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 168
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 184
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsmFlag"    # Z

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/16 v8, 0x63

    const v9, 0x7fffffff

    .line 201
    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    .line 199
    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 304
    return-void
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 211
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "gsmFlag"    # Z

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 144
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 145
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 146
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 147
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 148
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 149
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 150
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 151
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 152
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 153
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 154
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 155
    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 156
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 142
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1193
    const-string/jumbo v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 333
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 334
    .local v0, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 335
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 336
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 337
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 338
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 339
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 340
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 341
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 342
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 343
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 344
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 345
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 346
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 347
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 107
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 108
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 109
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1150
    const-string/jumbo v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1151
    const-string/jumbo v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1152
    const-string/jumbo v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1153
    const-string/jumbo v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1154
    const-string/jumbo v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1155
    const-string/jumbo v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1156
    const-string/jumbo v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1157
    const-string/jumbo v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1158
    const-string/jumbo v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1159
    const-string/jumbo v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1160
    const-string/jumbo v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1161
    const-string/jumbo v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1162
    const-string/jumbo v0, "TdScdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 1163
    const-string/jumbo v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1149
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 283
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 284
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 285
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 286
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 287
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 288
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 289
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 290
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 291
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 292
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 293
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 294
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 295
    iget v0, p1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 296
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 282
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1096
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    .local v2, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_0

    .line 1102
    return v3

    .line 1097
    .end local v2    # "s":Landroid/telephony/SignalStrength;
    :catch_0
    move-exception v1

    .line 1098
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    .line 1105
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_0
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_1

    .line 1106
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_1

    .line 1107
    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_1

    .line 1108
    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_1

    .line 1109
    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_1

    .line 1110
    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_1

    .line 1111
    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_1

    .line 1112
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_1

    .line 1113
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_1

    .line 1114
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_1

    .line 1115
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_1

    .line 1116
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_1

    .line 1117
    iget v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ne v4, v5, :cond_1

    .line 1118
    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    .line 1105
    :cond_1
    return v3
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1173
    const-string/jumbo v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1174
    const-string/jumbo v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1175
    const-string/jumbo v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1176
    const-string/jumbo v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1177
    const-string/jumbo v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1178
    const-string/jumbo v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1179
    const-string/jumbo v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1180
    const-string/jumbo v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1181
    const-string/jumbo v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1182
    const-string/jumbo v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1183
    const-string/jumbo v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1184
    const-string/jumbo v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1185
    const-string/jumbo v0, "TdScdma"

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1186
    const-string/jumbo v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1172
    return-void
.end method

.method public getAsuLevel()I
    .locals 5

    .prologue
    const/16 v4, 0xff

    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "asuLevel":I
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_2

    .line 572
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 573
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 575
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 597
    :goto_0
    return v0

    .line 577
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v0

    goto :goto_0

    .line 580
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    goto :goto_0

    .line 583
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 584
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 585
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_3

    .line 587
    move v0, v1

    goto :goto_0

    .line 588
    :cond_3
    if-nez v1, :cond_4

    .line 590
    move v0, v2

    goto :goto_0

    .line 593
    :cond_4
    if-ge v1, v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 763
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 764
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 768
    .local v2, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .line 776
    .local v0, "cdmaAsuLevel":I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .line 783
    .local v3, "ecioAsuLevel":I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .line 788
    .local v4, "level":I
    :goto_2
    return v0

    .line 769
    .end local v0    # "cdmaAsuLevel":I
    .end local v3    # "ecioAsuLevel":I
    .end local v4    # "level":I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 770
    .end local v0    # "cdmaAsuLevel":I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 771
    .end local v0    # "cdmaAsuLevel":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 772
    .end local v0    # "cdmaAsuLevel":I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 773
    .end local v0    # "cdmaAsuLevel":I
    :cond_4
    const/16 v0, 0x63

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 777
    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 778
    .end local v3    # "ecioAsuLevel":I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 779
    .end local v3    # "ecioAsuLevel":I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 780
    .end local v3    # "ecioAsuLevel":I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 781
    .end local v3    # "ecioAsuLevel":I
    :cond_9
    const/16 v3, 0x63

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 783
    :cond_a
    move v4, v3

    .restart local v4    # "level":I
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 4

    .prologue
    .line 722
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 723
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 745
    .local v1, "cdmaEcio":I
    const/16 v3, -0x5a

    if-lt v0, v3, :cond_0

    const/4 v2, 0x5

    .line 753
    .local v2, "levelDbm":I
    :goto_0
    return v2

    .line 746
    .end local v2    # "levelDbm":I
    :cond_0
    const/16 v3, -0x5d

    if-lt v0, v3, :cond_1

    const/4 v2, 0x4

    .restart local v2    # "levelDbm":I
    goto :goto_0

    .line 747
    .end local v2    # "levelDbm":I
    :cond_1
    const/16 v3, -0x61

    if-lt v0, v3, :cond_2

    const/4 v2, 0x3

    .restart local v2    # "levelDbm":I
    goto :goto_0

    .line 748
    .end local v2    # "levelDbm":I
    :cond_2
    const/16 v3, -0x65

    if-lt v0, v3, :cond_3

    const/4 v2, 0x2

    .restart local v2    # "levelDbm":I
    goto :goto_0

    .line 749
    .end local v2    # "levelDbm":I
    :cond_3
    const/16 v3, -0x6d

    if-lt v0, v3, :cond_4

    const/4 v2, 0x1

    .restart local v2    # "levelDbm":I
    goto :goto_0

    .line 750
    .end local v2    # "levelDbm":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "levelDbm":I
    goto :goto_0
.end method

.method public getDbm()I
    .locals 5

    .prologue
    const/16 v4, -0x78

    .line 606
    const v1, 0x7fffffff

    .line 608
    .local v1, "dBm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 609
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 610
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_1

    .line 613
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_0

    .line 615
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 632
    :goto_0
    return v1

    .line 617
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    goto :goto_0

    .line 621
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    goto :goto_0

    .line 625
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 626
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 628
    .local v2, "evdoDbm":I
    if-ne v2, v4, :cond_4

    .end local v0    # "cdmaDbm":I
    :cond_3
    :goto_1
    return v0

    .restart local v0    # "cdmaDbm":I
    :cond_4
    if-ne v0, v4, :cond_5

    move v0, v2

    goto :goto_1

    .line 629
    :cond_5
    if-lt v0, v2, :cond_3

    move v0, v2

    goto :goto_1
.end method

.method public getEvdoAsuLevel()I
    .locals 6

    .prologue
    .line 837
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 838
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 842
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .line 849
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .line 856
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 861
    .local v2, "level":I
    :goto_2
    return v3

    .line 843
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 844
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 845
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 846
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 847
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/16 v3, 0x63

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 850
    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 851
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 852
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 853
    .end local v4    # "levelEvdoSnr":I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 854
    .end local v4    # "levelEvdoSnr":I
    :cond_9
    const/16 v4, 0x63

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 856
    :cond_a
    move v2, v4

    .restart local v2    # "level":I
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 4

    .prologue
    .line 798
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 799
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 820
    .local v1, "evdoSnr":I
    const/16 v3, -0x5a

    if-lt v0, v3, :cond_0

    const/4 v2, 0x5

    .line 827
    .local v2, "levelEvdoDbm":I
    :goto_0
    return v2

    .line 821
    .end local v2    # "levelEvdoDbm":I
    :cond_0
    const/16 v3, -0x5d

    if-lt v0, v3, :cond_1

    const/4 v2, 0x4

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_0

    .line 822
    .end local v2    # "levelEvdoDbm":I
    :cond_1
    const/16 v3, -0x61

    if-lt v0, v3, :cond_2

    const/4 v2, 0x3

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_0

    .line 823
    .end local v2    # "levelEvdoDbm":I
    :cond_2
    const/16 v3, -0x65

    if-lt v0, v3, :cond_3

    const/4 v2, 0x2

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_0

    .line 824
    .end local v2    # "levelEvdoDbm":I
    :cond_3
    const/16 v3, -0x6d

    if-lt v0, v3, :cond_4

    const/4 v2, 0x1

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_0

    .line 825
    .end local v2    # "levelEvdoDbm":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_0
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    .prologue
    .line 711
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 713
    .local v0, "level":I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 643
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 644
    .local v2, "gsmSignalStrength":I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_0

    move v0, v3

    .line 645
    .local v0, "asu":I
    :goto_0
    if-eq v0, v3, :cond_1

    .line 646
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 651
    .local v1, "dBm":I
    :goto_1
    return v1

    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    :cond_0
    move v0, v2

    .line 644
    goto :goto_0

    .line 648
    .restart local v0    # "asu":I
    :cond_1
    const/4 v1, -0x1

    .restart local v1    # "dBm":I
    goto :goto_1
.end method

.method public getGsmLevel()I
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 660
    const/4 v2, 0x0

    .line 661
    .local v2, "level":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 662
    const v5, 0x11200cc

    .line 661
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 663
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 665
    .local v1, "dbm":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 666
    const v5, 0x1070061

    .line 665
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 667
    .local v3, "threshGsm":[I
    array-length v4, v3

    if-ge v4, v8, :cond_0

    .line 668
    return v2

    .line 669
    :cond_0
    const/4 v4, 0x5

    aget v4, v3, v4

    if-le v1, v4, :cond_2

    const/4 v2, 0x0

    .line 698
    .end local v1    # "dbm":I
    .end local v3    # "threshGsm":[I
    :cond_1
    :goto_0
    return v2

    .line 670
    .restart local v1    # "dbm":I
    .restart local v3    # "threshGsm":[I
    :cond_2
    const/4 v4, 0x4

    aget v4, v3, v4

    if-lt v1, v4, :cond_3

    const/4 v2, 0x4

    goto :goto_0

    .line 671
    :cond_3
    aget v4, v3, v7

    if-lt v1, v4, :cond_4

    const/4 v2, 0x3

    goto :goto_0

    .line 672
    :cond_4
    const/4 v4, 0x2

    aget v4, v3, v4

    if-lt v1, v4, :cond_5

    const/4 v2, 0x2

    goto :goto_0

    .line 673
    :cond_5
    const/4 v4, 0x1

    aget v4, v3, v4

    if-lt v1, v4, :cond_6

    const/4 v2, 0x1

    goto :goto_0

    .line 674
    :cond_6
    aget v4, v3, v6

    if-lt v1, v4, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 682
    .end local v1    # "dbm":I
    .end local v3    # "threshGsm":[I
    :cond_7
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 688
    .local v0, "asu":I
    if-lez v0, :cond_8

    const/16 v4, 0x63

    if-ne v0, v4, :cond_9

    :cond_8
    const/4 v2, 0x0

    goto :goto_0

    .line 689
    :cond_9
    const/16 v4, 0xc

    if-lt v0, v4, :cond_a

    const/4 v2, 0x5

    goto :goto_0

    .line 690
    :cond_a
    const/16 v4, 0x9

    if-lt v0, v4, :cond_b

    const/4 v2, 0x4

    goto :goto_0

    .line 691
    :cond_b
    if-lt v0, v8, :cond_c

    const/4 v2, 0x3

    goto :goto_0

    .line 692
    :cond_c
    if-lt v0, v7, :cond_d

    const/4 v2, 0x2

    goto :goto_0

    .line 694
    :cond_d
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .locals 4

    .prologue
    .line 533
    const/4 v2, 0x0

    .line 535
    .local v2, "level":I
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 536
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 537
    if-nez v2, :cond_0

    .line 538
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v2

    .line 539
    if-nez v2, :cond_0

    .line 540
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 558
    :cond_0
    :goto_0
    return v2

    .line 544
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 545
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 546
    .local v1, "evdoLevel":I
    if-nez v1, :cond_2

    .line 548
    move v2, v0

    goto :goto_0

    .line 549
    :cond_2
    if-nez v0, :cond_3

    .line 551
    move v2, v1

    goto :goto_0

    .line 554
    :cond_3
    if-ge v0, v1, :cond_4

    move v2, v0

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_0
.end method

.method public getLteAsuLevel()I
    .locals 3

    .prologue
    .line 990
    const/16 v0, 0x63

    .line 991
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1005
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1008
    :goto_0
    return v0

    .line 1006
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 870
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 12

    .prologue
    const v11, 0x11200cb

    const/4 v10, 0x6

    const/4 v9, 0x3

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 885
    const/4 v2, 0x0

    .local v2, "rssiIconLevel":I
    const/4 v0, -0x1

    .local v0, "rsrpIconLevel":I
    const/4 v3, -0x1

    .line 887
    .local v3, "snrIconLevel":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00a0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 890
    .local v1, "rsrpThreshType":I
    iget-object v4, p0, Landroid/telephony/SignalStrength;->mThreshRsrp:[I

    if-nez v4, :cond_0

    .line 891
    if-nez v1, :cond_4

    .line 892
    sget-object v4, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    iput-object v4, p0, Landroid/telephony/SignalStrength;->mThreshRsrp:[I

    .line 897
    :cond_0
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 899
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 900
    const v5, 0x1070062

    .line 899
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    iput-object v4, p0, Landroid/telephony/SignalStrength;->mThreshRsrp:[I

    .line 904
    :cond_1
    if-eqz v1, :cond_2

    sget-boolean v4, Lmiui/os/Build;->IS_CU_CUSTOMIZATION:Z

    if-nez v4, :cond_2

    .line 905
    sget-boolean v4, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    .line 904
    if-nez v4, :cond_2

    .line 905
    sget-boolean v4, Lmiui/os/Build;->IS_CT_CUSTOMIZATION:Z

    .line 904
    if-nez v4, :cond_2

    .line 905
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 904
    if-nez v4, :cond_2

    .line 906
    const-string/jumbo v4, "persist.radio.signal_enhance"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 904
    if-eqz v4, :cond_5

    .line 907
    :cond_2
    sget-object v4, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    iput-object v4, p0, Landroid/telephony/SignalStrength;->mThreshRsrp:[I

    .line 915
    :goto_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget-object v5, p0, Landroid/telephony/SignalStrength;->mThreshRsrp:[I

    aget v5, v5, v10

    if-le v4, v5, :cond_6

    const/4 v0, -0x1

    .line 924
    :cond_3
    :goto_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 926
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLTELevel - rsrp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 927
    if-eq v0, v8, :cond_c

    return v0

    .line 894
    :cond_4
    sget-object v4, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    iput-object v4, p0, Landroid/telephony/SignalStrength;->mThreshRsrp:[I

    goto :goto_0

    .line 909
    :cond_5
    sget-object v4, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    iput-object v4, p0, Landroid/telephony/SignalStrength;->mThreshRsrp:[I

    goto :goto_1

    .line 916
    :cond_6
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget-object v5, p0, Landroid/telephony/SignalStrength;->mThreshRsrp:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    if-lt v4, v5, :cond_7

    const/4 v0, 0x5

    goto :goto_2

    .line 918
    :cond_7
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget-object v5, p0, Landroid/telephony/SignalStrength;->mThreshRsrp:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    if-lt v4, v5, :cond_8

    const/4 v0, 0x4

    goto :goto_2

    .line 919
    :cond_8
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget-object v5, p0, Landroid/telephony/SignalStrength;->mThreshRsrp:[I

    aget v5, v5, v9

    if-lt v4, v5, :cond_9

    const/4 v0, 0x3

    goto :goto_2

    .line 920
    :cond_9
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget-object v5, p0, Landroid/telephony/SignalStrength;->mThreshRsrp:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    if-lt v4, v5, :cond_a

    const/4 v0, 0x2

    goto :goto_2

    .line 921
    :cond_a
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget-object v5, p0, Landroid/telephony/SignalStrength;->mThreshRsrp:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    if-lt v4, v5, :cond_b

    const/4 v0, 0x1

    goto :goto_2

    .line 922
    :cond_b
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget-object v5, p0, Landroid/telephony/SignalStrength;->mThreshRsrp:[I

    aget v5, v5, v7

    if-lt v4, v5, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    .line 963
    :cond_c
    if-eq v0, v8, :cond_d

    return v0

    .line 966
    :cond_d
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v5, 0x3f

    if-le v4, v5, :cond_f

    const/4 v2, 0x0

    .line 980
    :cond_e
    :goto_3
    return v2

    .line 971
    :cond_f
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_10

    const/4 v2, 0x5

    goto :goto_3

    .line 972
    :cond_10
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_11

    const/4 v2, 0x4

    goto :goto_3

    .line 973
    :cond_11
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-lt v4, v10, :cond_12

    const/4 v2, 0x3

    goto :goto_3

    .line 974
    :cond_12
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-lt v4, v9, :cond_13

    const/4 v2, 0x2

    goto :goto_3

    .line 976
    :cond_13
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v4, :cond_e

    const/4 v2, 0x1

    goto :goto_3
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getTdScdmaAsuLevel()I
    .locals 3

    .prologue
    .line 1064
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1067
    .local v1, "tdScdmaDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1070
    .local v0, "tdScdmaAsuLevel":I
    :goto_0
    return v0

    .line 1068
    .end local v0    # "tdScdmaAsuLevel":I
    :cond_0
    add-int/lit8 v0, v1, 0x78

    .restart local v0    # "tdScdmaAsuLevel":I
    goto :goto_0
.end method

.method public getTdScdmaDbm()I
    .locals 1

    .prologue
    .line 1024
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return v0
.end method

.method public getTdScdmaLevel()I
    .locals 3

    .prologue
    .line 1036
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1039
    .local v1, "tdScdmaDbm":I
    const/16 v2, -0x19

    if-gt v1, v2, :cond_0

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    .line 1040
    :cond_0
    const/4 v0, 0x0

    .line 1055
    .local v0, "level":I
    :goto_0
    return v0

    .line 1046
    .end local v0    # "level":I
    :cond_1
    const/16 v2, -0x58

    if-lt v1, v2, :cond_2

    const/4 v0, 0x5

    .restart local v0    # "level":I
    goto :goto_0

    .line 1047
    .end local v0    # "level":I
    :cond_2
    const/16 v2, -0x5f

    if-lt v1, v2, :cond_3

    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_0

    .line 1048
    .end local v0    # "level":I
    :cond_3
    const/16 v2, -0x66

    if-lt v1, v2, :cond_4

    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_0

    .line 1049
    .end local v0    # "level":I
    :cond_4
    const/16 v2, -0x6d

    if-lt v1, v2, :cond_5

    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_0

    .line 1050
    .end local v0    # "level":I
    :cond_5
    const/16 v2, -0x78

    if-lt v1, v2, :cond_6

    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_0

    .line 1052
    .end local v0    # "level":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "level":I
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1079
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/lit8 v0, v0, 0x1f

    .line 1080
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1079
    add-int/2addr v0, v1

    .line 1081
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1079
    add-int/2addr v0, v1

    .line 1081
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1079
    add-int/2addr v0, v1

    .line 1082
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1079
    add-int/2addr v0, v1

    .line 1082
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1079
    add-int/2addr v0, v1

    .line 1082
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1079
    add-int/2addr v0, v1

    .line 1083
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1079
    add-int/2addr v0, v1

    .line 1083
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1079
    add-int/2addr v0, v1

    .line 1084
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1079
    add-int/2addr v0, v1

    .line 1084
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1079
    add-int/2addr v0, v1

    .line 1084
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1079
    add-int/2addr v0, v1

    .line 1085
    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1079
    add-int/2addr v1, v0

    .line 1085
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1079
    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 1085
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .locals 1
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsm"    # Z

    .prologue
    .line 262
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 263
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 264
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 265
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 266
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 267
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 268
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 269
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 270
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 271
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 272
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 273
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 274
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 275
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 261
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsm"    # Z

    .prologue
    .line 234
    const/16 v8, 0x63

    const v9, 0x7fffffff

    .line 235
    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    .line 233
    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 232
    return-void
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 1015
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .locals 0
    .param p1, "gsmFlag"    # Z

    .prologue
    .line 438
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 437
    return-void
.end method

.method public setThreshRsrp([I)V
    .locals 0
    .param p1, "threshRsrp"    # [I

    .prologue
    .line 446
    iput-object p1, p0, Landroid/telephony/SignalStrength;->mThreshRsrp:[I

    .line 445
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1127
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1128
    const-string/jumbo v1, " "

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1128
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1129
    const-string/jumbo v1, " "

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1129
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1130
    const-string/jumbo v1, " "

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1130
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1131
    const-string/jumbo v1, " "

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1131
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1132
    const-string/jumbo v1, " "

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1132
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1133
    const-string/jumbo v1, " "

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1133
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1134
    const-string/jumbo v1, " "

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1134
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1135
    const-string/jumbo v1, " "

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1135
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1136
    const-string/jumbo v1, " "

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1136
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1137
    const-string/jumbo v1, " "

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1137
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1138
    const-string/jumbo v1, " "

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1138
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1139
    const-string/jumbo v1, " "

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1139
    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1140
    const-string/jumbo v1, " "

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1140
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "gsm|lte"

    .line 1126
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1140
    :cond_0
    const-string/jumbo v0, "cdma"

    goto :goto_0
.end method

.method public validateInput()V
    .locals 5

    .prologue
    const/16 v1, 0x63

    const/4 v3, -0x1

    const/16 v2, -0x78

    const v4, 0x7fffffff

    .line 406
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 409
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 410
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 412
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_0
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 413
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 414
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_1
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 417
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_2

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 418
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 419
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 420
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 423
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_3

    .line 424
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    neg-int v4, v0

    .line 423
    :cond_3
    iput v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 403
    return-void

    :cond_4
    move v0, v1

    .line 406
    goto :goto_0

    :cond_5
    move v0, v2

    .line 409
    goto :goto_1

    .line 410
    :cond_6
    const/16 v0, -0xa0

    goto :goto_2

    :cond_7
    move v0, v3

    .line 413
    goto :goto_3

    :cond_8
    move v0, v4

    .line 418
    goto :goto_4

    :cond_9
    move v0, v4

    .line 419
    goto :goto_5

    :cond_a
    move v0, v4

    .line 421
    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 354
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    return-void

    .line 367
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
