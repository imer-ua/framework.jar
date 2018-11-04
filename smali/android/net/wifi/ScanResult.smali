.class public Landroid/net/wifi/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ScanResult$1;,
        Landroid/net/wifi/ScanResult$InformationElement;
    }
.end annotation


# static fields
.field public static final CHANNEL_WIDTH_160MHZ:I = 0x3

.field public static final CHANNEL_WIDTH_20MHZ:I = 0x0

.field public static final CHANNEL_WIDTH_40MHZ:I = 0x1

.field public static final CHANNEL_WIDTH_80MHZ:I = 0x2

.field public static final CHANNEL_WIDTH_80MHZ_PLUS_MHZ:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_80211mc_RESPONDER:J = 0x2L

.field public static final FLAG_PASSPOINT_NETWORK:J = 0x1L

.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public anqpDomainId:I

.field public anqpElements:[Landroid/net/wifi/AnqpInformationElement;

.field public anqpLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blackListTimestamp:J

.field public bytes:[B

.field public capabilities:Ljava/lang/String;

.field public centerFreq0:I

.field public centerFreq1:I

.field public channelWidth:I

.field public distanceCm:I

.field public distanceSdCm:I

.field public flags:J

.field public frequency:I

.field public hessid:J

.field public informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

.field public is80211McRTTResponder:Z

.field public isAutoJoinCandidate:I

.field public level:I

.field public numConnection:I

.field public numIpConfigFailures:I

.field public numUsage:I

.field public operatorFriendlyName:Ljava/lang/CharSequence;

.field public seen:J

.field public timestamp:J

.field public untrusted:Z

.field public venueName:Ljava/lang/CharSequence;

.field public wifiSsid:Landroid/net/wifi/WifiSsid;

.field public wpsDeviceName:Ljava/lang/String;

.field public wpsState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 653
    new-instance v0, Landroid/net/wifi/ScanResult$1;

    invoke-direct {v0}, Landroid/net/wifi/ScanResult$1;-><init>()V

    .line 652
    sput-object v0, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    if-eqz p1, :cond_0

    .line 500
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 501
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 502
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 503
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->hessid:J

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->hessid:J

    .line 504
    iget v0, p1, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    .line 505
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 506
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    .line 507
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 508
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 509
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 510
    iget v0, p1, Landroid/net/wifi/ScanResult;->channelWidth:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 511
    iget v0, p1, Landroid/net/wifi/ScanResult;->centerFreq0:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 512
    iget v0, p1, Landroid/net/wifi/ScanResult;->centerFreq1:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 513
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 514
    iget v0, p1, Landroid/net/wifi/ScanResult;->distanceCm:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 515
    iget v0, p1, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 516
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->seen:J

    .line 517
    iget-boolean v0, p1, Landroid/net/wifi/ScanResult;->untrusted:Z

    iput-boolean v0, p0, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 518
    iget v0, p1, Landroid/net/wifi/ScanResult;->numConnection:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->numConnection:I

    .line 519
    iget v0, p1, Landroid/net/wifi/ScanResult;->numUsage:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->numUsage:I

    .line 520
    iget v0, p1, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 521
    iget v0, p1, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    .line 522
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    .line 523
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    .line 524
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->flags:J

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 526
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->wpsState:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->wpsState:Ljava/lang/String;

    .line 527
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->wpsDeviceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->wpsDeviceName:Ljava/lang/String;

    .line 498
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;JI[BLjava/lang/String;IIJ)V
    .locals 14
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "hessid"    # J
    .param p5, "anqpDomainId"    # I
    .param p6, "osuProviders"    # [B
    .param p7, "caps"    # Ljava/lang/String;
    .param p8, "level"    # I
    .param p9, "frequency"    # I
    .param p10, "tsf"    # J

    .prologue
    .line 369
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    .line 368
    invoke-direct/range {v0 .. v13}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;JI[BLjava/lang/String;IIJLjava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;JI[BLjava/lang/String;IIJLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "hessid"    # J
    .param p5, "anqpDomainId"    # I
    .param p6, "osuProviders"    # [B
    .param p7, "caps"    # Ljava/lang/String;
    .param p8, "level"    # I
    .param p9, "frequency"    # I
    .param p10, "tsf"    # J
    .param p12, "wpsState"    # Ljava/lang/String;
    .param p13, "wpsDeviceName"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 378
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 379
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 380
    iput-wide p3, p0, Landroid/net/wifi/ScanResult;->hessid:J

    .line 381
    iput p5, p0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    .line 382
    if-eqz p6, :cond_0

    .line 383
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/wifi/AnqpInformationElement;

    iput-object v2, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    .line 384
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    .line 385
    new-instance v3, Landroid/net/wifi/AnqpInformationElement;

    const v4, 0x506f9a

    .line 386
    const/16 v5, 0x8

    .line 385
    invoke-direct {v3, v4, v5, p6}, Landroid/net/wifi/AnqpInformationElement;-><init>(II[B)V

    .line 384
    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 388
    :cond_0
    iput-object p7, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 389
    iput p8, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 390
    iput p9, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 391
    move-wide/from16 v0, p10

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 392
    const/4 v2, -0x1

    iput v2, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 393
    const/4 v2, -0x1

    iput v2, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 394
    const/4 v2, -0x1

    iput v2, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 395
    const/4 v2, -0x1

    iput v2, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 396
    const/4 v2, -0x1

    iput v2, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 397
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 399
    move-object/from16 v0, p12

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->wpsState:Ljava/lang/String;

    .line 400
    move-object/from16 v0, p13

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->wpsDeviceName:Ljava/lang/String;

    .line 375
    return-void

    .line 378
    :cond_1
    const-string/jumbo v2, "<unknown ssid>"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJII)V
    .locals 12
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "distCm"    # I
    .param p9, "distSdCm"    # I

    .prologue
    .line 408
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJIILjava/lang/String;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJIILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "distCm"    # I
    .param p9, "distSdCm"    # I
    .param p10, "wpsState"    # Ljava/lang/String;
    .param p11, "wpsDeviceName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 416
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 417
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 418
    iput-object p3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 419
    iput p4, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 420
    iput p5, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 421
    iput-wide p6, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 422
    iput p8, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 423
    iput p9, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 424
    iput v1, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 425
    iput v1, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 426
    iput v1, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 427
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 429
    iput-object p10, p0, Landroid/net/wifi/ScanResult;->wpsState:Ljava/lang/String;

    .line 430
    iput-object p11, p0, Landroid/net/wifi/ScanResult;->wpsDeviceName:Ljava/lang/String;

    .line 413
    return-void

    .line 416
    :cond_0
    const-string/jumbo v0, "<unknown ssid>"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V
    .locals 20
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "Ssid"    # Ljava/lang/String;
    .param p3, "BSSID"    # Ljava/lang/String;
    .param p4, "hessid"    # J
    .param p6, "anqpDomainId"    # I
    .param p7, "caps"    # Ljava/lang/String;
    .param p8, "level"    # I
    .param p9, "frequency"    # I
    .param p10, "tsf"    # J
    .param p12, "distCm"    # I
    .param p13, "distSdCm"    # I
    .param p14, "channelWidth"    # I
    .param p15, "centerFreq0"    # I
    .param p16, "centerFreq1"    # I
    .param p17, "is80211McRTTResponder"    # Z

    .prologue
    .line 482
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    .line 480
    invoke-direct/range {v0 .. v19}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZLjava/lang/String;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZLjava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "Ssid"    # Ljava/lang/String;
    .param p3, "BSSID"    # Ljava/lang/String;
    .param p4, "hessid"    # J
    .param p6, "anqpDomainId"    # I
    .param p7, "caps"    # Ljava/lang/String;
    .param p8, "level"    # I
    .param p9, "frequency"    # I
    .param p10, "tsf"    # J
    .param p12, "distCm"    # I
    .param p13, "distSdCm"    # I
    .param p14, "channelWidth"    # I
    .param p15, "centerFreq0"    # I
    .param p16, "centerFreq1"    # I
    .param p17, "is80211McRTTResponder"    # Z
    .param p18, "wpsState"    # Ljava/lang/String;
    .param p19, "wpsDeviceName"    # Ljava/lang/String;

    .prologue
    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    .line 491
    invoke-direct/range {v3 .. v21}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZLjava/lang/String;Ljava/lang/String;)V

    .line 494
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 488
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V
    .locals 21
    .param p1, "Ssid"    # Ljava/lang/String;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "hessid"    # J
    .param p5, "anqpDomainId"    # I
    .param p6, "caps"    # Ljava/lang/String;
    .param p7, "level"    # I
    .param p8, "frequency"    # I
    .param p9, "tsf"    # J
    .param p11, "distCm"    # I
    .param p12, "distSdCm"    # I
    .param p13, "channelWidth"    # I
    .param p14, "centerFreq0"    # I
    .param p15, "centerFreq1"    # I
    .param p16, "is80211McRTTResponder"    # Z

    .prologue
    .line 441
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    .line 440
    invoke-direct/range {v1 .. v19}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZLjava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "Ssid"    # Ljava/lang/String;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "hessid"    # J
    .param p5, "anqpDomainId"    # I
    .param p6, "caps"    # Ljava/lang/String;
    .param p7, "level"    # I
    .param p8, "frequency"    # I
    .param p9, "tsf"    # J
    .param p11, "distCm"    # I
    .param p12, "distSdCm"    # I
    .param p13, "channelWidth"    # I
    .param p14, "centerFreq0"    # I
    .param p15, "centerFreq1"    # I
    .param p16, "is80211McRTTResponder"    # Z
    .param p17, "wpsState"    # Ljava/lang/String;
    .param p18, "wpsDeviceName"    # Ljava/lang/String;

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 451
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 452
    iput-wide p3, p0, Landroid/net/wifi/ScanResult;->hessid:J

    .line 453
    iput p5, p0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    .line 454
    iput-object p6, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 455
    iput p7, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 456
    iput p8, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 457
    iput-wide p9, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 458
    move/from16 v0, p11

    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 459
    move/from16 v0, p12

    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 460
    move/from16 v0, p13

    iput v0, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 461
    move/from16 v0, p14

    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 462
    move/from16 v0, p15

    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 463
    if-eqz p16, :cond_0

    .line 464
    const-wide/16 v2, 0x2

    iput-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 469
    :goto_0
    move-object/from16 v0, p17

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->wpsState:Ljava/lang/String;

    .line 470
    move-object/from16 v0, p18

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->wpsDeviceName:Ljava/lang/String;

    .line 448
    return-void

    .line 466
    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    goto :goto_0
.end method

.method public static is24GHz(I)Z
    .locals 2
    .param p0, "freq"    # I

    .prologue
    const/4 v0, 0x0

    .line 282
    const/16 v1, 0x960

    if-le p0, v1, :cond_0

    const/16 v1, 0x9c4

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static is5GHz(I)Z
    .locals 2
    .param p0, "freq"    # I

    .prologue
    const/4 v0, 0x0

    .line 297
    const/16 v1, 0x1324

    if-le p0, v1, :cond_0

    const/16 v1, 0x170c

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public averageRssi(IJI)V
    .locals 8
    .param p1, "previousRssi"    # I
    .param p2, "previousSeen"    # J
    .param p4, "maxAge"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 156
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->seen:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/wifi/ScanResult;->seen:J

    .line 159
    :cond_0
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v0, v4, p2

    .line 161
    .local v0, "age":J
    cmp-long v4, p2, v6

    if-lez v4, :cond_1

    cmp-long v4, v0, v6

    if-lez v4, :cond_1

    div-int/lit8 v4, p4, 0x2

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 163
    long-to-double v4, v0

    int-to-double v6, p4

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double v2, v6, v4

    .line 164
    .local v2, "alpha":D
    iget v4, p0, Landroid/net/wifi/ScanResult;->level:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v2

    mul-double/2addr v4, v6

    int-to-double v6, p1

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 154
    .end local v2    # "alpha":D
    :cond_1
    return-void
.end method

.method public clearFlag(J)V
    .locals 5
    .param p1, "flag"    # J

    .prologue
    .line 244
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    not-long v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 243
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 580
    const/4 v0, 0x0

    return v0
.end method

.method public is24GHz()Z
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v0

    return v0
.end method

.method public is5GHz()Z
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v0

    return v0
.end method

.method public is80211mcResponder()Z
    .locals 4

    .prologue
    .line 248
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPasspointNetwork()Z
    .locals 4

    .prologue
    .line 252
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFlag(J)V
    .locals 3
    .param p1, "flag"    # J

    .prologue
    .line 235
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 234
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, -0x1

    .line 541
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 542
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v0, "<none>"

    .line 544
    .local v0, "none":Ljava/lang/String;
    const-string/jumbo v2, "SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 545
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez v2, :cond_0

    const-string/jumbo v2, "<unknown ssid>"

    .line 544
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 546
    const-string/jumbo v3, ", BSSID: "

    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 547
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v0

    .line 544
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 548
    const-string/jumbo v3, ", capabilities: "

    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 549
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 544
    .end local v0    # "none":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 550
    const-string/jumbo v3, ", level: "

    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 551
    iget v3, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 552
    const-string/jumbo v3, ", frequency: "

    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 553
    iget v3, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 554
    const-string/jumbo v3, ", timestamp: "

    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 555
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 544
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 557
    const-string/jumbo v2, ", distance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    if-eq v2, v6, :cond_3

    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 558
    const-string/jumbo v3, "(cm)"

    .line 557
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 559
    const-string/jumbo v2, ", distanceSd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    if-eq v2, v6, :cond_4

    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 560
    const-string/jumbo v3, "(cm)"

    .line 559
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 562
    const-string/jumbo v2, ", passpoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-eqz v2, :cond_5

    const-string/jumbo v2, "yes"

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 564
    const-string/jumbo v2, ", ChannelBandwidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 565
    const-string/jumbo v2, ", centerFreq0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 566
    const-string/jumbo v2, ", centerFreq1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 567
    const-string/jumbo v2, ", 80211mcResponder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 568
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v4, 0x2

    and-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-eqz v2, :cond_6

    const-string/jumbo v2, "is supported"

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 570
    const-string/jumbo v2, ", wpsState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 571
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->wpsState:Ljava/lang/String;

    .line 570
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 572
    const-string/jumbo v3, ", wpsDeviceName :"

    .line 570
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 573
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->wpsDeviceName:Ljava/lang/String;

    .line 570
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 545
    .restart local v0    # "none":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    goto/16 :goto_0

    .line 547
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    goto/16 :goto_1

    .line 549
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    goto/16 :goto_2

    .line 557
    .end local v0    # "none":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "?"

    goto/16 :goto_3

    .line 559
    :cond_4
    const-string/jumbo v2, "?"

    goto/16 :goto_4

    .line 563
    :cond_5
    const-string/jumbo v2, "no"

    goto :goto_5

    .line 568
    :cond_6
    const-string/jumbo v2, "is not supported"

    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 585
    iget-object v4, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v4, :cond_0

    .line 586
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    iget-object v4, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v4, p1, p2}, Landroid/net/wifi/WifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 591
    :goto_0
    iget-object v4, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 592
    iget-object v4, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 593
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->hessid:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 594
    iget v4, p0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 596
    iget v4, p0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    iget v4, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 599
    iget v4, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    iget v4, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    iget v4, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    iget v4, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    iget v4, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    iget-object v4, p0, Landroid/net/wifi/ScanResult;->wpsState:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 606
    iget-object v4, p0, Landroid/net/wifi/ScanResult;->wpsDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 608
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->seen:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 609
    iget-boolean v4, p0, Landroid/net/wifi/ScanResult;->untrusted:Z

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    iget v2, p0, Landroid/net/wifi/ScanResult;->numConnection:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    iget v2, p0, Landroid/net/wifi/ScanResult;->numUsage:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    iget v2, p0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    iget v2, p0, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 615
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 616
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->flags:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 618
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    if-eqz v2, :cond_4

    .line 619
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 621
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 620
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 589
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_1
    move v2, v3

    .line 609
    goto :goto_1

    .line 614
    :cond_2
    const-string/jumbo v2, ""

    goto :goto_2

    .line 615
    :cond_3
    const-string/jumbo v2, ""

    goto :goto_3

    .line 626
    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    if-eqz v2, :cond_6

    .line 630
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 632
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 631
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 636
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    :cond_7
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    if-eqz v2, :cond_8

    .line 639
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    array-length v4, v2

    :goto_6
    if-ge v3, v4, :cond_9

    aget-object v0, v2, v3

    .line 641
    .local v0, "element":Landroid/net/wifi/AnqpInformationElement;
    invoke-virtual {v0}, Landroid/net/wifi/AnqpInformationElement;->getVendorId()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    invoke-virtual {v0}, Landroid/net/wifi/AnqpInformationElement;->getElementId()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    invoke-virtual {v0}, Landroid/net/wifi/AnqpInformationElement;->getPayload()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    invoke-virtual {v0}, Landroid/net/wifi/AnqpInformationElement;->getPayload()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 640
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 647
    .end local v0    # "element":Landroid/net/wifi/AnqpInformationElement;
    :cond_8
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    :cond_9
    return-void
.end method
