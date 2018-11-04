.class Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;
.super Ljava/lang/Object;
.source "NetworkDiagnostics.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/securitycenter/net/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleSocketCheck"
.end annotation


# instance fields
.field protected final mAddressFamily:I

.field protected final mDeadlineTime:J

.field protected mFileDescriptor:Ljava/io/FileDescriptor;

.field protected final mInterfaceIndex:Ljava/lang/Integer;

.field protected mNetwork:Landroid/net/Network;

.field protected mSocketAddress:Ljava/net/SocketAddress;

.field protected final mSource:Ljava/net/InetAddress;

.field protected final mTarget:Ljava/net/InetAddress;


# direct methods
.method protected constructor <init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)V
    .locals 8
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "target"    # Ljava/net/InetAddress;
    .param p4, "timeoutMs"    # J

    .prologue
    .line 149
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;Ljava/net/InetAddress;J)V

    .line 148
    return-void
.end method

.method protected constructor <init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;Ljava/net/InetAddress;J)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "source"    # Ljava/net/InetAddress;
    .param p4, "target"    # Ljava/net/InetAddress;
    .param p5, "timeoutMs"    # J

    .prologue
    const/4 v4, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mNetwork:Landroid/net/Network;

    .line 121
    invoke-static {}, Lmiui/securitycenter/net/NetworkDiagnostics;->-wrap1()J

    move-result-wide v2

    add-long/2addr v2, p5

    iput-wide v2, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mDeadlineTime:J

    .line 122
    if-eqz p2, :cond_1

    .line 123
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/securitycenter/net/NetworkDiagnostics;->-wrap0(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mInterfaceIndex:Ljava/lang/Integer;

    .line 127
    :goto_0
    instance-of v2, p4, Ljava/net/Inet6Address;

    if-eqz v2, :cond_3

    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "targetWithScopeId":Ljava/net/Inet6Address;
    invoke-virtual {p4}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mInterfaceIndex:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 132
    :try_start_0
    invoke-virtual {p4}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v2

    iget-object v3, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mInterfaceIndex:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    .line 131
    invoke-static {v4, v2, v3}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 137
    .end local v1    # "targetWithScopeId":Ljava/net/Inet6Address;
    :cond_0
    :goto_1
    if-eqz v1, :cond_2

    :goto_2
    iput-object v1, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    .line 138
    sget v2, Landroid/system/OsConstants;->AF_INET6:I

    iput v2, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    .line 145
    :goto_3
    iput-object p3, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mSource:Ljava/net/InetAddress;

    .line 118
    return-void

    .line 125
    :cond_1
    iput-object v4, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mInterfaceIndex:Ljava/lang/Integer;

    goto :goto_0

    .line 133
    .restart local v1    # "targetWithScopeId":Ljava/net/Inet6Address;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v2, "NetworkDiagnostics"

    const-string/jumbo v3, "SimpleSocketCheck"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Ljava/net/UnknownHostException;
    .end local v1    # "targetWithScopeId":Ljava/net/Inet6Address;
    :cond_2
    move-object v1, p4

    .line 137
    goto :goto_2

    .line 140
    :cond_3
    iput-object p4, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    .line 141
    sget v2, Landroid/system/OsConstants;->AF_INET:I

    iput v2, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    goto :goto_3
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 180
    return-void
.end method

.method protected getSocketAddressString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 172
    iget-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mSocketAddress:Ljava/net/SocketAddress;

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 173
    .local v0, "inetSockAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 175
    .local v1, "localAddr":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "[%s]:%d"

    .line 174
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 176
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 174
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 175
    :cond_0
    const-string/jumbo v2, "%s:%d"

    goto :goto_0
.end method

.method protected setupSocket(IIJJI)V
    .locals 5
    .param p1, "sockType"    # I
    .param p2, "protocol"    # I
    .param p3, "writeTimeout"    # J
    .param p5, "readTimeout"    # J
    .param p7, "dstPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    iget v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    invoke-static {v0, p1, p2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 157
    iget-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 158
    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p3, p4}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v3

    .line 157
    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 159
    iget-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 160
    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p5, p6}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v3

    .line 159
    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 162
    iget-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mNetwork:Landroid/net/Network;

    iget-object v1, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    .line 163
    iget-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mSource:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    iget-object v1, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mSource:Ljava/net/InetAddress;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 166
    :cond_0
    iget-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    iget-object v1, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    invoke-static {v0, v1, p7}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 167
    iget-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mSocketAddress:Ljava/net/SocketAddress;

    .line 154
    return-void
.end method
