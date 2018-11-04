.class Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;
.super Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/securitycenter/net/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IcmpCheck"
.end annotation


# static fields
.field private static final ICMPV4_ECHO_REQUEST:I = 0x8

.field private static final ICMPV6_ECHO_REQUEST:I = 0x80

.field private static final PACKET_BUFSIZE:I = 0x200

.field private static final TIMEOUT_RECV:I = 0x12c

.field private static final TIMEOUT_SEND:I = 0x64


# instance fields
.field private final mIcmpType:I

.field private final mProtocol:I


# direct methods
.method public constructor <init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)V
    .locals 8
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "target"    # Ljava/net/InetAddress;
    .param p4, "timeoutMs"    # J

    .prologue
    .line 208
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;Ljava/net/InetAddress;J)V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;Ljava/net/InetAddress;J)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "source"    # Ljava/net/InetAddress;
    .param p4, "target"    # Ljava/net/InetAddress;
    .param p5, "timeoutMs"    # J

    .prologue
    .line 196
    invoke-direct/range {p0 .. p6}, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;Ljava/net/InetAddress;J)V

    .line 198
    iget v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    if-ne v0, v1, :cond_0

    .line 199
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    iput v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    .line 200
    const/16 v0, 0x80

    iput v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    .line 195
    :goto_0
    return-void

    .line 202
    :cond_0
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMP:I

    iput v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    .line 203
    const/16 v0, 0x8

    iput v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    goto :goto_0
.end method


# virtual methods
.method public call()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 212
    const/4 v12, 0x0

    .line 214
    .local v12, "ret":Z
    :try_start_0
    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    iget v3, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x12c

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->setupSocket(IIJJI)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    const/16 v1, 0x8

    new-array v10, v1, [B

    .line 222
    iget v1, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    int-to-byte v1, v1

    aput-byte v1, v10, v13

    const/4 v1, 0x1

    aput-byte v13, v10, v1

    const/4 v1, 0x2

    aput-byte v13, v10, v1

    const/4 v1, 0x3

    aput-byte v13, v10, v1

    const/4 v1, 0x4

    aput-byte v13, v10, v1

    const/4 v1, 0x5

    aput-byte v13, v10, v1

    const/4 v1, 0x6

    aput-byte v13, v10, v1

    const/4 v1, 0x7

    aput-byte v13, v10, v1

    .line 225
    .local v10, "icmpPacket":[B
    const/4 v0, 0x0

    .line 226
    .local v0, "count":I
    :goto_0
    invoke-static {}, Lmiui/securitycenter/net/NetworkDiagnostics;->-wrap1()J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mDeadlineTime:J

    const-wide/16 v6, 0x190

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 227
    add-int/lit8 v0, v0, 0x1

    .line 228
    array-length v1, v10

    add-int/lit8 v1, v1, -0x1

    int-to-byte v2, v0

    aput-byte v2, v10, v1

    .line 230
    :try_start_1
    iget-object v1, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    array-length v2, v10

    const/4 v3, 0x0

    invoke-static {v1, v10, v3, v2}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 237
    const/16 v1, 0x200

    :try_start_2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 238
    .local v11, "reply":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v1, v11}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 240
    const/4 v12, 0x1

    .line 247
    .end local v11    # "reply":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->close()V

    .line 248
    return v12

    .line 215
    .end local v0    # "count":I
    .end local v10    # "icmpPacket":[B
    :catch_0
    move-exception v9

    .line 216
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NetworkDiagnostics"

    const-string/jumbo v2, "IcmpCheck"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    return v12

    .line 231
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v0    # "count":I
    .restart local v10    # "icmpPacket":[B
    :catch_1
    move-exception v9

    .line 232
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NetworkDiagnostics"

    const-string/jumbo v2, "IcmpCheck"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 242
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method
