.class public final Landroid/net/LinkProperties;
.super Ljava/lang/Object;
.source "LinkProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LinkProperties$1;,
        Landroid/net/LinkProperties$CompareResult;,
        Landroid/net/LinkProperties$ProvisioningChange;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_MTU:I = 0x2710

.field private static final MIN_MTU:I = 0x44

.field private static final MIN_MTU_V6:I = 0x500


# instance fields
.field private mDnses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mDomains:Ljava/lang/String;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mIfaceName:Ljava/lang/String;

.field private mLinkAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mMtu:I

.field private mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStackedLinks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation
.end field

.field private mTcpBufferSizes:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1149
    new-instance v0, Landroid/net/LinkProperties$1;

    invoke-direct {v0}, Landroid/net/LinkProperties$1;-><init>()V

    .line 1148
    sput-object v0, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 67
    iput-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/net/LinkProperties;)V
    .locals 9
    .param p1, "source"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v7, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    .line 53
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    .line 55
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    .line 68
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 67
    iput-object v8, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    .line 150
    if-eqz p1, :cond_5

    .line 151
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .local v2, "l":Landroid/net/LinkAddress;
    iget-object v8, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    .end local v2    # "l":Landroid/net/LinkAddress;
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .local v0, "i":Ljava/net/InetAddress;
    iget-object v8, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 154
    .end local v0    # "i":Ljava/net/InetAddress;
    :cond_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "r$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/RouteInfo;

    .local v5, "r":Landroid/net/RouteInfo;
    iget-object v8, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 156
    .end local v5    # "r":Landroid/net/RouteInfo;
    :cond_2
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v8

    if-nez v8, :cond_3

    :goto_3
    iput-object v7, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 158
    iget-object v7, p1, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkProperties;

    .line 159
    .local v3, "l":Landroid/net/LinkProperties;
    invoke-virtual {p0, v3}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    goto :goto_4

    .line 157
    .end local v3    # "l":Landroid/net/LinkProperties;
    :cond_3
    new-instance v7, Landroid/net/ProxyInfo;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    goto :goto_3

    .line 161
    :cond_4
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 162
    iget-object v7, p1, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    iput-object v7, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    .line 149
    .end local v1    # "i$iterator":Ljava/util/Iterator;
    .end local v4    # "l$iterator":Ljava/util/Iterator;
    .end local v6    # "r$iterator":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method public static compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    .locals 1
    .param p0, "before"    # Landroid/net/LinkProperties;
    .param p1, "after"    # Landroid/net/LinkProperties;

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isIPv4Provisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->isIPv4Provisioned()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isIPv6Provisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->isIPv6Provisioned()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    :cond_1
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    return-object v0

    .line 128
    :cond_2
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    return-object v0

    .line 131
    :cond_3
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 133
    :cond_4
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    return-object v0

    .line 132
    :cond_5
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    return-object v0

    .line 136
    :cond_6
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    return-object v0
.end method

.method private findLinkAddressIndex(Landroid/net/LinkAddress;)I
    .locals 2
    .param p1, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 238
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    invoke-virtual {v1, p1}, Landroid/net/LinkAddress;->isSameAddressAs(Landroid/net/LinkAddress;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    return v0

    .line 237
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private hasIPv4AddressOnInterface(Ljava/lang/String;)Z
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 675
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    if-nez v0, :cond_1

    .line 676
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 677
    iget-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    .line 675
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 676
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidMtu(IZ)Z
    .locals 3
    .param p0, "mtu"    # I
    .param p1, "ipv6"    # Z

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x1

    .line 1195
    if-eqz p1, :cond_0

    .line 1196
    const/16 v0, 0x500

    if-lt p0, v0, :cond_1

    if-gt p0, v2, :cond_1

    return v1

    .line 1198
    :cond_0
    const/16 v0, 0x44

    if-lt p0, v0, :cond_1

    if-gt p0, v2, :cond_1

    return v1

    .line 1200
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private routeWithInterface(Landroid/net/RouteInfo;)Landroid/net/RouteInfo;
    .locals 5
    .param p1, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 447
    new-instance v0, Landroid/net/RouteInfo;

    .line 448
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v1

    .line 449
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    .line 450
    iget-object v3, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 451
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getType()I

    move-result v4

    .line 447
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public addDnsServer(Ljava/net/InetAddress;)Z
    .locals 1
    .param p1, "dnsServer"    # Ljava/net/InetAddress;

    .prologue
    .line 334
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 335
    :cond_1
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method public addLinkAddress(Landroid/net/LinkAddress;)Z
    .locals 4
    .param p1, "address"    # Landroid/net/LinkAddress;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 253
    if-nez p1, :cond_0

    .line 254
    return v2

    .line 256
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/LinkProperties;->findLinkAddressIndex(Landroid/net/LinkAddress;)I

    move-result v0

    .line 257
    .local v0, "i":I
    if-gez v0, :cond_1

    .line 259
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    return v3

    .line 261
    :cond_1
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    invoke-virtual {v1, p1}, Landroid/net/LinkAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    return v2

    .line 266
    :cond_2
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 267
    return v3
.end method

.method public addRoute(Landroid/net/RouteInfo;)Z
    .locals 4
    .param p1, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 466
    if-eqz p1, :cond_2

    .line 467
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "routeIface":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/LinkProperties;->routeWithInterface(Landroid/net/RouteInfo;)Landroid/net/RouteInfo;

    move-result-object p1

    .line 474
    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 475
    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    const/4 v1, 0x1

    return v1

    .line 469
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Route added with non-matching interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 471
    const-string/jumbo v3, " vs. "

    .line 470
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 471
    iget-object v3, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 470
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 469
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 479
    .end local v0    # "routeIface":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public addStackedLink(Landroid/net/LinkProperties;)Z
    .locals 2
    .param p1, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 552
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const/4 v0, 0x1

    return v0

    .line 556
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 597
    iput-object v1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 598
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 599
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 600
    iput-object v1, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    .line 601
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 602
    iput-object v1, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 603
    iget-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 604
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/LinkProperties;->mMtu:I

    .line 605
    iput-object v1, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    .line 596
    return-void
.end method

.method public compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;
    .locals 5
    .param p1, "target"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/net/LinkProperties$CompareResult",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 993
    new-instance v2, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v2}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 994
    .local v2, "result":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    .line 995
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 996
    if-eqz p1, :cond_1

    .line 997
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "newAddress$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 998
    .local v0, "newAddress":Landroid/net/LinkAddress;
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 999
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1003
    .end local v0    # "newAddress":Landroid/net/LinkAddress;
    .end local v1    # "newAddress$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public compareAllInterfaceNames(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;
    .locals 4
    .param p1, "target"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/net/LinkProperties$CompareResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1080
    new-instance v2, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v2}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 1082
    .local v2, "result":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    .line 1083
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1084
    if-eqz p1, :cond_1

    .line 1085
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1086
    .local v0, "r":Ljava/lang/String;
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1087
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1091
    .end local v0    # "r":Ljava/lang/String;
    .end local v1    # "r$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public compareAllRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;
    .locals 4
    .param p1, "target"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/net/LinkProperties$CompareResult",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1051
    new-instance v2, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v2}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 1053
    .local v2, "result":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    .line 1054
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1055
    if-eqz p1, :cond_1

    .line 1056
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 1057
    .local v0, "r":Landroid/net/RouteInfo;
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1058
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1062
    .end local v0    # "r":Landroid/net/RouteInfo;
    .end local v1    # "r$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public compareDnses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;
    .locals 5
    .param p1, "target"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/net/LinkProperties$CompareResult",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1022
    new-instance v2, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v2}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 1024
    .local v2, "result":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Ljava/net/InetAddress;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    .line 1025
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1026
    if-eqz p1, :cond_1

    .line 1027
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "newAddress$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1028
    .local v0, "newAddress":Ljava/net/InetAddress;
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1029
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1033
    .end local v0    # "newAddress":Ljava/net/InetAddress;
    .end local v1    # "newAddress$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 957
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 959
    :cond_0
    instance-of v2, p1, Landroid/net/LinkProperties;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    .line 961
    check-cast v0, Landroid/net/LinkProperties;

    .line 967
    .local v0, "target":Landroid/net/LinkProperties;
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 968
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalAddresses(Landroid/net/LinkProperties;)Z

    move-result v2

    .line 967
    if-eqz v2, :cond_2

    .line 969
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result v2

    .line 967
    if-eqz v2, :cond_2

    .line 970
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalRoutes(Landroid/net/LinkProperties;)Z

    move-result v2

    .line 967
    if-eqz v2, :cond_2

    .line 971
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z

    move-result v2

    .line 967
    if-eqz v2, :cond_2

    .line 972
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalStackedLinks(Landroid/net/LinkProperties;)Z

    move-result v2

    .line 967
    if-eqz v2, :cond_2

    .line 973
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalMtu(Landroid/net/LinkProperties;)Z

    move-result v2

    .line 967
    if-eqz v2, :cond_2

    .line 974
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalTcpBufferSizes(Landroid/net/LinkProperties;)Z

    move-result v1

    .line 967
    :cond_2
    return v1
.end method

.method public getAddresses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v3, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "linkAddress$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 216
    .local v1, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    .end local v1    # "linkAddress":Landroid/net/LinkAddress;
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public getAllAddresses()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v5, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "linkAddress$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 228
    .local v1, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    .end local v1    # "linkAddress":Landroid/net/LinkAddress;
    :cond_0
    iget-object v5, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "stacked$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkProperties;

    .line 231
    .local v3, "stacked":Landroid/net/LinkProperties;
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getAllAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 233
    .end local v3    # "stacked":Landroid/net/LinkProperties;
    :cond_1
    return-object v0
.end method

.method public getAllInterfaceNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    .local v0, "interfaceNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_0
    iget-object v3, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "stacked$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 198
    .local v1, "stacked":Landroid/net/LinkProperties;
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 200
    .end local v1    # "stacked":Landroid/net/LinkProperties;
    :cond_1
    return-object v0
.end method

.method public getAllLinkAddresses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    iget-object v3, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 305
    iget-object v3, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "stacked$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 306
    .local v1, "stacked":Landroid/net/LinkProperties;
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 308
    .end local v1    # "stacked":Landroid/net/LinkProperties;
    :cond_0
    return-object v0
.end method

.method public getAllRoutes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    iget-object v3, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 513
    iget-object v3, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "stacked$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 514
    .local v1, "stacked":Landroid/net/LinkProperties;
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 516
    .end local v1    # "stacked":Landroid/net/LinkProperties;
    :cond_0
    return-object v0
.end method

.method public getDnsServers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDomains()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpProxy()Landroid/net/ProxyInfo;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMtu()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Landroid/net/LinkProperties;->mMtu:I

    return v0
.end method

.method public getRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStackedLinks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation

    .prologue
    .line 582
    iget-object v3, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 583
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v3

    .line 585
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v2, "stacked":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    iget-object v3, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "link$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    .line 587
    .local v0, "link":Landroid/net/LinkProperties;
    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3, v0}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 589
    .end local v0    # "link":Landroid/net/LinkProperties;
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public getTcpBufferSizes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    return-object v0
.end method

.method public hasGlobalIPv6Address()Z
    .locals 3

    .prologue
    .line 687
    iget-object v2, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "address$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 688
    .local v0, "address":Landroid/net/LinkAddress;
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 689
    const/4 v2, 0x1

    return v2

    .line 692
    .end local v0    # "address":Landroid/net/LinkAddress;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public hasIPv4Address()Z
    .locals 3

    .prologue
    .line 660
    iget-object v2, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "address$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 661
    .local v0, "address":Landroid/net/LinkAddress;
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    .line 662
    const/4 v2, 0x1

    return v2

    .line 665
    .end local v0    # "address":Landroid/net/LinkAddress;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public hasIPv4DefaultRoute()Z
    .locals 3

    .prologue
    .line 702
    iget-object v2, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 703
    .local v0, "r":Landroid/net/RouteInfo;
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 704
    const/4 v2, 0x1

    return v2

    .line 707
    .end local v0    # "r":Landroid/net/RouteInfo;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public hasIPv4DnsServer()Z
    .locals 3

    .prologue
    .line 732
    iget-object v2, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ia$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 733
    .local v0, "ia":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    .line 734
    const/4 v2, 0x1

    return v2

    .line 737
    .end local v0    # "ia":Ljava/net/InetAddress;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public hasIPv6DefaultRoute()Z
    .locals 3

    .prologue
    .line 717
    iget-object v2, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 718
    .local v0, "r":Landroid/net/RouteInfo;
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isIPv6Default()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    const/4 v2, 0x1

    return v2

    .line 722
    .end local v0    # "r":Landroid/net/RouteInfo;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public hasIPv6DnsServer()Z
    .locals 3

    .prologue
    .line 747
    iget-object v2, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ia$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 748
    .local v0, "ia":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    .line 749
    const/4 v2, 0x1

    return v2

    .line 752
    .end local v0    # "ia":Ljava/net/InetAddress;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1102
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    .line 1109
    :goto_0
    iget v2, p0, Landroid/net/LinkProperties;->mMtu:I

    mul-int/lit8 v2, v2, 0x33

    .line 1102
    add-int/2addr v0, v2

    .line 1110
    iget-object v2, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1102
    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1103
    iget-object v2, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    .line 1102
    add-int/2addr v0, v2

    .line 1104
    iget-object v2, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x25

    .line 1102
    add-int/2addr v2, v0

    .line 1105
    iget-object v0, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    .line 1102
    :goto_2
    add-int/2addr v0, v2

    .line 1106
    iget-object v2, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x29

    .line 1102
    add-int/2addr v2, v0

    .line 1107
    iget-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    if-nez v0, :cond_2

    move v0, v1

    .line 1102
    :goto_3
    add-int/2addr v0, v2

    .line 1108
    iget-object v2, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2f

    .line 1102
    add-int/2addr v0, v2

    goto :goto_0

    .line 1105
    :cond_1
    iget-object v0, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 1107
    :cond_2
    iget-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->hashCode()I

    move-result v0

    goto :goto_3

    .line 1110
    :cond_3
    iget-object v1, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public isIPv4Provisioned()Z
    .locals 1

    .prologue
    .line 763
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v0

    .line 763
    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4DnsServer()Z

    move-result v0

    .line 763
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIPv6Provisioned()Z
    .locals 1

    .prologue
    .line 776
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v0

    .line 776
    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv6DnsServer()Z

    move-result v0

    .line 776
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdenticalAddresses(Landroid/net/LinkProperties;)Z
    .locals 4
    .param p1, "target"    # Landroid/net/LinkProperties;

    .prologue
    .line 848
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v1

    .line 849
    .local v1, "targetAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v0

    .line 850
    .local v0, "sourceAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 851
    invoke-interface {v0, v1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    .line 850
    :goto_0
    return v2

    .line 851
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isIdenticalDnses(Landroid/net/LinkProperties;)Z
    .locals 5
    .param p1, "target"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v2, 0x0

    .line 862
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v0

    .line 863
    .local v0, "targetDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v1

    .line 864
    .local v1, "targetDomains":Ljava/lang/String;
    iget-object v3, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 865
    if-eqz v1, :cond_1

    return v2

    .line 867
    :cond_0
    iget-object v3, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 869
    :cond_1
    iget-object v3, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 870
    iget-object v2, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    .line 869
    :cond_2
    return v2
.end method

.method public isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z
    .locals 2
    .param p1, "target"    # Landroid/net/LinkProperties;

    .prologue
    .line 894
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 895
    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z
    .locals 2
    .param p1, "target"    # Landroid/net/LinkProperties;

    .prologue
    .line 837
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isIdenticalMtu(Landroid/net/LinkProperties;)Z
    .locals 2
    .param p1, "target"    # Landroid/net/LinkProperties;

    .prologue
    .line 927
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getMtu()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdenticalRoutes(Landroid/net/LinkProperties;)Z
    .locals 3
    .param p1, "target"    # Landroid/net/LinkProperties;

    .prologue
    .line 881
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v0

    .line 882
    .local v0, "targetRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 883
    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    .line 882
    :goto_0
    return v1

    .line 883
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIdenticalStackedLinks(Landroid/net/LinkProperties;)Z
    .locals 6
    .param p1, "target"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v5, 0x0

    .line 906
    iget-object v3, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v4, p1, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 907
    return v5

    .line 909
    :cond_0
    iget-object v3, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "stacked$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 911
    .local v1, "stacked":Landroid/net/LinkProperties;
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 912
    .local v0, "iface":Ljava/lang/String;
    iget-object v3, p1, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 913
    return v5

    .line 916
    .end local v0    # "iface":Ljava/lang/String;
    .end local v1    # "stacked":Landroid/net/LinkProperties;
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method public isIdenticalTcpBufferSizes(Landroid/net/LinkProperties;)Z
    .locals 2
    .param p1, "target"    # Landroid/net/LinkProperties;

    .prologue
    .line 938
    iget-object v0, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isProvisioned()Z
    .locals 1

    .prologue
    .line 789
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isIPv4Provisioned()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/LinkProperties;->isIPv6Provisioned()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isReachable(Ljava/net/InetAddress;)Z
    .locals 5
    .param p1, "ip"    # Ljava/net/InetAddress;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 800
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    .line 802
    .local v0, "allRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-static {v0, p1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v1

    .line 803
    .local v1, "bestRoute":Landroid/net/RouteInfo;
    if-nez v1, :cond_0

    .line 804
    return v3

    .line 809
    :cond_0
    instance-of v4, p1, Ljava/net/Inet4Address;

    if-eqz v4, :cond_1

    .line 811
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/LinkProperties;->hasIPv4AddressOnInterface(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 812
    :cond_1
    instance-of v4, p1, Ljava/net/Inet6Address;

    if-eqz v4, :cond_5

    .line 813
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 817
    check-cast p1, Ljava/net/Inet6Address;

    .end local p1    # "ip":Ljava/net/InetAddress;
    invoke-virtual {p1}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0

    .line 822
    .restart local p1    # "ip":Ljava/net/InetAddress;
    :cond_3
    invoke-virtual {v1}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v2

    :cond_4
    return v2

    .line 826
    :cond_5
    return v3
.end method

.method public removeDnsServer(Ljava/net/InetAddress;)Z
    .locals 1
    .param p1, "dnsServer"    # Ljava/net/InetAddress;

    .prologue
    .line 349
    if-eqz p1, :cond_0

    .line 350
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 352
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeLinkAddress(Landroid/net/LinkAddress;)Z
    .locals 2
    .param p1, "toRemove"    # Landroid/net/LinkAddress;

    .prologue
    const/4 v1, 0x0

    .line 280
    invoke-direct {p0, p1}, Landroid/net/LinkProperties;->findLinkAddressIndex(Landroid/net/LinkAddress;)I

    move-result v0

    .line 281
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 282
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 283
    const/4 v1, 0x1

    return v1

    .line 285
    :cond_0
    return v1
.end method

.method public removeRoute(Landroid/net/RouteInfo;)Z
    .locals 2
    .param p1, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 492
    if-eqz p1, :cond_0

    .line 493
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 492
    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 492
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeStackedLink(Ljava/lang/String;)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 570
    if-eqz p1, :cond_1

    .line 571
    iget-object v2, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    .line 572
    .local v0, "removed":Landroid/net/LinkProperties;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 574
    .end local v0    # "removed":Landroid/net/LinkProperties;
    :cond_1
    return v1
.end method

.method public setDnsServers(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, "dnsServers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v2, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 364
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dnsServer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 365
    .local v0, "dnsServer":Ljava/net/InetAddress;
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_0

    .line 362
    .end local v0    # "dnsServer":Ljava/net/InetAddress;
    :cond_0
    return-void
.end method

.method public setDomains(Ljava/lang/String;)V
    .locals 0
    .param p1, "domains"    # Ljava/lang/String;

    .prologue
    .line 387
    iput-object p1, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 0
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .prologue
    .line 528
    iput-object p1, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 527
    return-void
.end method

.method public setInterfaceName(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .local v0, "newRoutes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    iget-object v3, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "route$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 177
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-direct {p0, v1}, Landroid/net/LinkProperties;->routeWithInterface(Landroid/net/RouteInfo;)Landroid/net/RouteInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_0
    iput-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    .line 173
    return-void
.end method

.method public setLinkAddresses(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/LinkAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    iget-object v2, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 321
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "address$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 322
    .local v0, "address":Landroid/net/LinkAddress;
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_0

    .line 319
    .end local v0    # "address":Landroid/net/LinkAddress;
    :cond_0
    return-void
.end method

.method public setMtu(I)V
    .locals 0
    .param p1, "mtu"    # I

    .prologue
    .line 409
    iput p1, p0, Landroid/net/LinkProperties;->mMtu:I

    .line 408
    return-void
.end method

.method public setTcpBufferSizes(Ljava/lang/String;)V
    .locals 0
    .param p1, "tcpBufferSizes"    # Ljava/lang/String;

    .prologue
    .line 432
    iput-object p1, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    .line 431
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 20

    .prologue
    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    const-string/jumbo v7, ""

    .line 619
    .local v7, "ifaceName":Ljava/lang/String;
    :goto_0
    const-string/jumbo v10, "LinkAddresses: ["

    .line 620
    .local v10, "linkAddresses":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "addr$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .local v2, "addr":Landroid/net/LinkAddress;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v2}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 617
    .end local v2    # "addr":Landroid/net/LinkAddress;
    .end local v4    # "addr$iterator":Ljava/util/Iterator;
    .end local v7    # "ifaceName":Ljava/lang/String;
    .end local v10    # "linkAddresses":Ljava/lang/String;
    :cond_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "InterfaceName: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "ifaceName":Ljava/lang/String;
    goto :goto_0

    .line 621
    .restart local v4    # "addr$iterator":Ljava/util/Iterator;
    .restart local v10    # "linkAddresses":Ljava/lang/String;
    :cond_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 623
    const-string/jumbo v5, "DnsAddresses: ["

    .line 624
    .local v5, "dns":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .local v3, "addr":Ljava/net/InetAddress;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 625
    .end local v3    # "addr":Ljava/net/InetAddress;
    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 627
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Domains: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 629
    .local v6, "domainName":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " MTU: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/LinkProperties;->mMtu:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 631
    .local v11, "mtu":Ljava/lang/String;
    const-string/jumbo v17, ""

    .line 632
    .local v17, "tcpBuffSizes":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 633
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " TcpBufferSizes: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 636
    :cond_3
    const-string/jumbo v15, " Routes: ["

    .line 637
    .local v15, "routes":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "route$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/RouteInfo;

    .local v13, "route":Landroid/net/RouteInfo;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Landroid/net/RouteInfo;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    .line 638
    .end local v13    # "route":Landroid/net/RouteInfo;
    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    move-object/from16 v18, v0

    if-nez v18, :cond_5

    const-string/jumbo v12, ""

    .line 641
    .local v12, "proxy":Ljava/lang/String;
    :goto_4
    const-string/jumbo v16, ""

    .line 642
    .local v16, "stacked":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v18

    if-lez v18, :cond_7

    .line 643
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " Stacked: ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "link$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkProperties;

    .line 645
    .local v8, "link":Landroid/net/LinkProperties;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " ],"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_5

    .line 639
    .end local v8    # "link":Landroid/net/LinkProperties;
    .end local v9    # "link$iterator":Ljava/util/Iterator;
    .end local v12    # "proxy":Ljava/lang/String;
    .end local v16    # "stacked":Ljava/lang/String;
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " HttpProxy: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "proxy":Ljava/lang/String;
    goto/16 :goto_4

    .line 647
    .restart local v9    # "link$iterator":Ljava/util/Iterator;
    .restart local v16    # "stacked":Ljava/lang/String;
    :cond_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 649
    .end local v9    # "link$iterator":Ljava/util/Iterator;
    :cond_7
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "{"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 650
    const-string/jumbo v19, "}"

    .line 649
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1117
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1118
    iget-object v7, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1119
    iget-object v7, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "linkAddress$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 1120
    .local v2, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 1123
    .end local v2    # "linkAddress":Landroid/net/LinkAddress;
    :cond_0
    iget-object v7, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1124
    iget-object v7, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "d$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1125
    .local v0, "d":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    .line 1127
    .end local v0    # "d":Ljava/net/InetAddress;
    :cond_1
    iget-object v7, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1128
    iget v7, p0, Landroid/net/LinkProperties;->mMtu:I

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1129
    iget-object v7, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1130
    iget-object v7, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1131
    iget-object v7, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "route$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 1132
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_2

    .line 1135
    .end local v4    # "route":Landroid/net/RouteInfo;
    :cond_2
    iget-object v7, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    if-eqz v7, :cond_3

    .line 1136
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeByte(B)V

    .line 1137
    iget-object v7, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {p1, v7, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1141
    :goto_3
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1142
    .local v6, "stackedLinks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/LinkProperties;>;"
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1116
    return-void

    .line 1139
    .end local v6    # "stackedLinks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/LinkProperties;>;"
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_3
.end method
