.class Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;
.super Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/securitycenter/net/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DnsUdpCheck"
.end annotation


# static fields
.field private static final DNS_SERVER_PORT:I = 0x35

.field private static final PACKET_BUFSIZE:I = 0x200

.field private static final RR_TYPE_A:I = 0x1

.field private static final RR_TYPE_AAAA:I = 0x1c

.field private static final TIMEOUT_RECV:I = 0x1f4

.field private static final TIMEOUT_SEND:I = 0x64


# instance fields
.field private final mQueryType:I

.field private final mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "target"    # Ljava/net/InetAddress;
    .param p4, "timeoutMs"    # J

    .prologue
    .line 266
    invoke-direct/range {p0 .. p5}, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)V

    .line 261
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    .line 269
    iget v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    if-ne v0, v1, :cond_0

    .line 270
    const/16 v0, 0x1c

    iput v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    .line 265
    :goto_0
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    goto :goto_0
.end method

.method private getDnsQueryPacket(Ljava/lang/String;)[B
    .locals 9
    .param p1, "sixRandomDigits"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x63

    const/16 v7, 0x2d

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 318
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 319
    .local v0, "rnd":[B
    const/16 v1, 0x36

    new-array v1, v1, [B

    .line 320
    iget-object v2, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    iget-object v2, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 321
    const/4 v2, 0x2

    aput-byte v5, v1, v2

    aput-byte v4, v1, v6

    .line 322
    const/4 v2, 0x4

    aput-byte v4, v1, v2

    const/4 v2, 0x5

    aput-byte v5, v1, v2

    .line 323
    const/4 v2, 0x6

    aput-byte v4, v1, v2

    const/4 v2, 0x7

    aput-byte v4, v1, v2

    .line 324
    const/16 v2, 0x8

    aput-byte v4, v1, v2

    const/16 v2, 0x9

    aput-byte v4, v1, v2

    .line 325
    const/16 v2, 0xa

    aput-byte v4, v1, v2

    const/16 v2, 0xb

    aput-byte v4, v1, v2

    .line 326
    const/16 v2, 0x11

    const/16 v3, 0xc

    aput-byte v2, v1, v3

    aget-byte v2, v0, v4

    const/16 v3, 0xd

    aput-byte v2, v1, v3

    aget-byte v2, v0, v5

    const/16 v3, 0xe

    aput-byte v2, v1, v3

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    const/16 v3, 0xf

    aput-byte v2, v1, v3

    aget-byte v2, v0, v6

    const/16 v3, 0x10

    aput-byte v2, v1, v3

    const/4 v2, 0x4

    aget-byte v2, v0, v2

    const/16 v3, 0x11

    aput-byte v2, v1, v3

    const/4 v2, 0x5

    aget-byte v2, v0, v2

    const/16 v3, 0x12

    aput-byte v2, v1, v3

    .line 327
    const/16 v2, 0x13

    aput-byte v7, v1, v2

    const/16 v2, 0x61

    const/16 v3, 0x14

    aput-byte v2, v1, v3

    const/16 v2, 0x6e

    const/16 v3, 0x15

    aput-byte v2, v1, v3

    const/16 v2, 0x64

    const/16 v3, 0x16

    aput-byte v2, v1, v3

    const/16 v2, 0x72

    const/16 v3, 0x17

    aput-byte v2, v1, v3

    const/16 v2, 0x6f

    const/16 v3, 0x18

    aput-byte v2, v1, v3

    const/16 v2, 0x69

    const/16 v3, 0x19

    aput-byte v2, v1, v3

    const/16 v2, 0x64

    const/16 v3, 0x1a

    aput-byte v2, v1, v3

    const/16 v2, 0x1b

    aput-byte v7, v1, v2

    const/16 v2, 0x64

    const/16 v3, 0x1c

    aput-byte v2, v1, v3

    const/16 v2, 0x73

    const/16 v3, 0x1d

    aput-byte v2, v1, v3

    .line 328
    const/4 v2, 0x6

    const/16 v3, 0x1e

    aput-byte v2, v1, v3

    const/16 v2, 0x6d

    const/16 v3, 0x1f

    aput-byte v2, v1, v3

    const/16 v2, 0x65

    const/16 v3, 0x20

    aput-byte v2, v1, v3

    const/16 v2, 0x74

    const/16 v3, 0x21

    aput-byte v2, v1, v3

    const/16 v2, 0x72

    const/16 v3, 0x22

    aput-byte v2, v1, v3

    const/16 v2, 0x69

    const/16 v3, 0x23

    aput-byte v2, v1, v3

    const/16 v2, 0x24

    aput-byte v8, v1, v2

    .line 329
    const/4 v2, 0x7

    const/16 v3, 0x25

    aput-byte v2, v1, v3

    const/16 v2, 0x67

    const/16 v3, 0x26

    aput-byte v2, v1, v3

    const/16 v2, 0x73

    const/16 v3, 0x27

    aput-byte v2, v1, v3

    const/16 v2, 0x74

    const/16 v3, 0x28

    aput-byte v2, v1, v3

    const/16 v2, 0x61

    const/16 v3, 0x29

    aput-byte v2, v1, v3

    const/16 v2, 0x74

    const/16 v3, 0x2a

    aput-byte v2, v1, v3

    const/16 v2, 0x69

    const/16 v3, 0x2b

    aput-byte v2, v1, v3

    const/16 v2, 0x2c

    aput-byte v8, v1, v2

    .line 330
    aput-byte v6, v1, v7

    const/16 v2, 0x2e

    aput-byte v8, v1, v2

    const/16 v2, 0x6f

    const/16 v3, 0x2f

    aput-byte v2, v1, v3

    const/16 v2, 0x6d

    const/16 v3, 0x30

    aput-byte v2, v1, v3

    .line 331
    const/16 v2, 0x31

    aput-byte v4, v1, v2

    .line 332
    const/16 v2, 0x32

    aput-byte v4, v1, v2

    iget v2, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    int-to-byte v2, v2

    const/16 v3, 0x33

    aput-byte v2, v1, v3

    .line 333
    const/16 v2, 0x34

    aput-byte v4, v1, v2

    const/16 v2, 0x35

    aput-byte v5, v1, v2

    .line 319
    return-object v1
.end method


# virtual methods
.method public call()Z
    .locals 14

    .prologue
    .line 277
    const/4 v12, 0x0

    .line 279
    .local v12, "ret":Z
    :try_start_0
    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v3, Landroid/system/OsConstants;->IPPROTO_UDP:I

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x1f4

    const/16 v8, 0x35

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->setupSocket(IIJJI)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    iget-object v1, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    const v2, 0xdbba0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const v2, 0x186a0

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 290
    .local v13, "sixRandomDigits":Ljava/lang/String;
    invoke-direct {p0, v13}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->getDnsQueryPacket(Ljava/lang/String;)[B

    move-result-object v9

    .line 292
    .local v9, "dnsPacket":[B
    const/4 v0, 0x0

    .line 293
    .local v0, "count":I
    :goto_0
    invoke-static {}, Lmiui/securitycenter/net/NetworkDiagnostics;->-wrap1()J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mDeadlineTime:J

    const-wide/16 v6, 0x3e8

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 294
    add-int/lit8 v0, v0, 0x1

    .line 296
    :try_start_1
    iget-object v1, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    array-length v2, v9

    const/4 v3, 0x0

    invoke-static {v1, v9, v3, v2}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 303
    const/16 v1, 0x200

    :try_start_2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 304
    .local v11, "reply":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v1, v11}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 306
    const/4 v12, 0x1

    .line 313
    .end local v11    # "reply":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->close()V

    .line 314
    return v12

    .line 280
    .end local v0    # "count":I
    .end local v9    # "dnsPacket":[B
    .end local v13    # "sixRandomDigits":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 281
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NetworkDiagnostics"

    const-string/jumbo v2, "DnsUdpCheck"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    return v12

    .line 297
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v0    # "count":I
    .restart local v9    # "dnsPacket":[B
    .restart local v13    # "sixRandomDigits":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 298
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NetworkDiagnostics"

    const-string/jumbo v2, "DnsUdpCheck"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 308
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method
