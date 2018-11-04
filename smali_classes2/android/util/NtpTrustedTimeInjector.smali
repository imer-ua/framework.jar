.class Landroid/util/NtpTrustedTimeInjector;
.super Ljava/lang/Object;
.source "NtpTrustedTimeInjector.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTimeInjector"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static requestTime(Landroid/net/SntpClient;Ljava/lang/String;I)Z
    .locals 10
    .param p0, "client"    # Landroid/net/SntpClient;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    const/4 v5, 0x0

    .line 12
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 13
    .local v1, "allByName":[Ljava/net/InetAddress;
    array-length v6, v1

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v1, v4

    .line 14
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 15
    .local v3, "hostIpAddr":Ljava/lang/String;
    const-string/jumbo v7, "NtpTrustedTimeInjector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "host "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", which address "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p0, v3, p2}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 17
    const/4 v4, 0x1

    return v4

    .line 13
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 20
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "allByName":[Ljava/net/InetAddress;
    .end local v3    # "hostIpAddr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 21
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "NtpTrustedTimeInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return v5
.end method
