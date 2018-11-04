.class public abstract Lmiui/push/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


# static fields
.field protected static final DEFAULT_LANGUAGE:Ljava/lang/String;

.field private static DEFAULT_XML_NS:Ljava/lang/String; = null

.field public static final ID_NOT_AVAILABLE:Ljava/lang/String; = "ID_NOT_AVAILABLE"

.field public static final XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

.field private static id:J

.field private static prefix:Ljava/lang/String;


# instance fields
.field private chId:Ljava/lang/String;

.field private error:Lmiui/push/XMPPError;

.field private from:Ljava/lang/String;

.field private packetExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation
.end field

.field private packetID:Ljava/lang/String;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private to:Ljava/lang/String;

.field private xmlns:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/push/Packet;->DEFAULT_LANGUAGE:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lmiui/push/Packet;->DEFAULT_XML_NS:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 77
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    .line 76
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/Packet;->XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

    .line 79
    sget-object v0, Lmiui/push/Packet;->XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Lmiui/push/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/push/Packet;->prefix:Ljava/lang/String;

    .line 92
    const-wide/16 v0, 0x0

    sput-wide v0, Lmiui/push/Packet;->id:J

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-object v0, Lmiui/push/Packet;->DEFAULT_XML_NS:Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    .line 108
    iput-object v1, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-object v5, Lmiui/push/Packet;->DEFAULT_XML_NS:Ljava/lang/String;

    iput-object v5, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    .line 96
    iput-object v6, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    .line 98
    iput-object v6, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    .line 100
    iput-object v6, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    .line 102
    iput-object v6, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    .line 104
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v5, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    .line 106
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    .line 108
    iput-object v6, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    .line 128
    const-string/jumbo v5, "ext_to"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    .line 129
    const-string/jumbo v5, "ext_from"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    .line 130
    const-string/jumbo v5, "ext_chid"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    .line 131
    const-string/jumbo v5, "ext_pkt_id"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    .line 132
    const-string/jumbo v5, "ext_exts"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 133
    .local v3, "extBundles":[Landroid/os/Parcelable;
    if-eqz v3, :cond_1

    .line 134
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    .line 135
    const/4 v5, 0x0

    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v4, v3, v5

    .local v4, "p":Landroid/os/Parcelable;
    move-object v0, v4

    .line 136
    check-cast v0, Landroid/os/Bundle;

    .line 137
    .local v0, "bund":Landroid/os/Bundle;
    invoke-static {v0}, Lmiui/push/CommonPacketExtension;->parseFromBundle(Landroid/os/Bundle;)Lmiui/push/CommonPacketExtension;

    move-result-object v2

    .line 138
    .local v2, "ext":Lmiui/push/CommonPacketExtension;
    if-eqz v2, :cond_0

    .line 139
    iget-object v7, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "bund":Landroid/os/Bundle;
    .end local v2    # "ext":Lmiui/push/CommonPacketExtension;
    .end local v4    # "p":Landroid/os/Parcelable;
    :cond_1
    const-string/jumbo v5, "ext_ERROR"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 144
    .local v1, "errBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 145
    new-instance v5, Lmiui/push/XMPPError;

    invoke-direct {v5, v1}, Lmiui/push/XMPPError;-><init>(Landroid/os/Bundle;)V

    iput-object v5, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    .line 127
    :cond_2
    return-void
.end method

.method public static getDefaultLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    sget-object v0, Lmiui/push/Packet;->DEFAULT_LANGUAGE:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized nextID()Ljava/lang/String;
    .locals 6

    .prologue
    const-class v1, Lmiui/push/Packet;

    monitor-enter v1

    .line 117
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmiui/push/Packet;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lmiui/push/Packet;->id:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lmiui/push/Packet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setDefaultXmlns(Ljava/lang/String;)V
    .locals 0
    .param p0, "defaultXmlns"    # Ljava/lang/String;

    .prologue
    .line 121
    sput-object p0, Lmiui/push/Packet;->DEFAULT_XML_NS:Ljava/lang/String;

    .line 120
    return-void
.end method


# virtual methods
.method public addExtension(Lmiui/push/CommonPacketExtension;)V
    .locals 1
    .param p1, "extension"    # Lmiui/push/CommonPacketExtension;

    .prologue
    .line 318
    iget-object v0, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    return-void
.end method

.method public declared-synchronized deleteProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 366
    :try_start_0
    iget-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 367
    return-void

    .line 369
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 365
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 523
    if-ne p0, p1, :cond_0

    .line 524
    return v2

    .line 525
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 526
    :cond_1
    return v1

    :cond_2
    move-object v0, p1

    .line 528
    check-cast v0, Lmiui/push/Packet;

    .line 530
    .local v0, "packet":Lmiui/push/Packet;
    iget-object v3, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    iget-object v4, v0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 533
    :cond_3
    iget-object v3, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Packet;->from:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 536
    :cond_4
    iget-object v3, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    iget-object v4, v0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 537
    return v1

    .line 530
    :cond_5
    iget-object v3, v0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    if-eqz v3, :cond_3

    .line 531
    :cond_6
    return v1

    .line 533
    :cond_7
    iget-object v3, v0, Lmiui/push/Packet;->from:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 534
    :cond_8
    return v1

    .line 539
    :cond_9
    iget-object v3, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 542
    :cond_a
    iget-object v3, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 545
    :cond_b
    iget-object v3, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    iget-object v4, v0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 548
    :cond_c
    iget-object v3, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Packet;->to:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 551
    :cond_d
    iget-object v3, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    move v1, v2

    :cond_f
    :goto_0
    return v1

    .line 539
    :cond_10
    iget-object v3, v0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 540
    :cond_11
    return v1

    .line 542
    :cond_12
    iget-object v3, v0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 543
    :cond_13
    return v1

    .line 545
    :cond_14
    iget-object v3, v0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    if-eqz v3, :cond_c

    .line 546
    :cond_15
    return v1

    .line 548
    :cond_16
    iget-object v3, v0, Lmiui/push/Packet;->to:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 549
    :cond_17
    return v1

    .line 551
    :cond_18
    iget-object v3, v0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    if-eqz v3, :cond_e

    goto :goto_0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lmiui/push/XMPPError;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    return-object v0
.end method

.method public getExtension(Ljava/lang/String;)Lmiui/push/CommonPacketExtension;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/push/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lmiui/push/CommonPacketExtension;

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Ljava/lang/String;Ljava/lang/String;)Lmiui/push/CommonPacketExtension;
    .locals 4
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 303
    iget-object v2, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ext$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/push/CommonPacketExtension;

    .line 304
    .local v0, "ext":Lmiui/push/CommonPacketExtension;
    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lmiui/push/CommonPacketExtension;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    :cond_1
    invoke-virtual {v0}, Lmiui/push/CommonPacketExtension;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 304
    if-eqz v2, :cond_0

    .line 306
    return-object v0

    .line 309
    .end local v0    # "ext":Lmiui/push/CommonPacketExtension;
    :cond_2
    return-object v3
.end method

.method public declared-synchronized getExtensions()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 272
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getExtensionsXML()Ljava/lang/String;
    .locals 14

    .prologue
    monitor-enter p0

    .line 444
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lmiui/push/Packet;->getExtensions()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "extension$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/push/CommonPacketExtension;

    .line 447
    .local v5, "extension":Lmiui/push/PacketExtension;
    invoke-interface {v5}, Lmiui/push/PacketExtension;->toXML()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v5    # "extension":Lmiui/push/PacketExtension;
    .end local v6    # "extension$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 450
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local v6    # "extension$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v12, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 511
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    monitor-exit p0

    return-object v12

    .line 451
    :cond_2
    :try_start_2
    const-string/jumbo v12, "<properties xmlns=\"http://www.jivesoftware.com/xmlns/xmpp/properties\">"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {p0}, Lmiui/push/Packet;->getPropertyNames()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "name$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 454
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lmiui/push/Packet;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 455
    .local v11, "value":Ljava/lang/Object;
    const-string/jumbo v12, "<property>"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string/jumbo v12, "<name>"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v7}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "</name>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string/jumbo v12, "<value type=\""

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    instance-of v12, v11, Ljava/lang/Integer;

    if-eqz v12, :cond_4

    .line 459
    const-string/jumbo v12, "integer\">"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "</value>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .end local v11    # "value":Ljava/lang/Object;
    :cond_3
    :goto_3
    const-string/jumbo v12, "</property>"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 460
    .restart local v11    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v12, v11, Ljava/lang/Long;

    if-eqz v12, :cond_5

    .line 461
    const-string/jumbo v12, "long\">"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "</value>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 462
    :cond_5
    instance-of v12, v11, Ljava/lang/Float;

    if-eqz v12, :cond_6

    .line 463
    const-string/jumbo v12, "float\">"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "</value>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 464
    :cond_6
    instance-of v12, v11, Ljava/lang/Double;

    if-eqz v12, :cond_7

    .line 465
    const-string/jumbo v12, "double\">"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "</value>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 466
    :cond_7
    instance-of v12, v11, Ljava/lang/Boolean;

    if-eqz v12, :cond_8

    .line 467
    const-string/jumbo v12, "boolean\">"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "</value>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 468
    :cond_8
    instance-of v12, v11, Ljava/lang/String;

    if-eqz v12, :cond_9

    .line 469
    const-string/jumbo v12, "string\">"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    nop

    nop

    .end local v11    # "value":Ljava/lang/Object;
    invoke-static {v11}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const-string/jumbo v12, "</value>"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 479
    .restart local v11    # "value":Ljava/lang/Object;
    :cond_9
    const/4 v1, 0x0

    .line 480
    .local v1, "byteStream":Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x0

    .line 482
    .local v9, "out":Ljava/io/ObjectOutputStream;
    :try_start_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 483
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .local v2, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_4
    new-instance v10, Ljava/io/ObjectOutputStream;

    invoke-direct {v10, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 484
    .local v10, "out":Ljava/io/ObjectOutputStream;
    :try_start_5
    invoke-virtual {v10, v11}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 485
    .end local v9    # "out":Ljava/io/ObjectOutputStream;
    const-string/jumbo v12, "java-object\">"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-static {v12}, Lmiui/push/StringUtils;->encodeBase64([B)Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, "encodedVal":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "</value>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 491
    if-eqz v10, :cond_a

    .line 493
    :try_start_6
    invoke-virtual {v10}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 498
    :cond_a
    :goto_4
    if-eqz v2, :cond_3

    .line 500
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 501
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    goto/16 :goto_3

    .line 494
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 488
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "encodedVal":Ljava/lang/String;
    .end local v10    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "out":Ljava/io/ObjectOutputStream;
    :catch_2
    move-exception v3

    .line 489
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "out":Ljava/io/ObjectOutputStream;
    .restart local v3    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 491
    if-eqz v9, :cond_b

    .line 493
    :try_start_9
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 498
    :cond_b
    :goto_6
    if-eqz v1, :cond_3

    .line 500
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 501
    :catch_3
    move-exception v3

    goto/16 :goto_3

    .line 494
    :catch_4
    move-exception v3

    goto :goto_6

    .line 490
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v12

    .line 491
    :goto_7
    if-eqz v9, :cond_c

    .line 493
    :try_start_b
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 498
    :cond_c
    :goto_8
    if-eqz v1, :cond_d

    .line 500
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 490
    :cond_d
    :goto_9
    :try_start_d
    throw v12

    .line 494
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_8

    .line 501
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_9

    .line 509
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "name":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/Object;
    :cond_e
    const-string/jumbo v12, "</properties>"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 490
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "out":Ljava/io/ObjectOutputStream;
    .restart local v11    # "value":Ljava/lang/Object;
    :catchall_2
    move-exception v12

    move-object v1, v2

    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .local v1, "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "out":Ljava/io/ObjectOutputStream;
    :catchall_3
    move-exception v12

    move-object v9, v10

    .end local v10    # "out":Ljava/io/ObjectOutputStream;
    .local v9, "out":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 488
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .local v9, "out":Ljava/io/ObjectOutputStream;
    :catch_7
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v9    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "out":Ljava/io/ObjectOutputStream;
    :catch_8
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v9, v10

    .end local v10    # "out":Ljava/io/ObjectOutputStream;
    .local v9, "out":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_5
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getPacketID()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    const-string/jumbo v0, "ID_NOT_AVAILABLE"

    iget-object v1, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    return-object v2

    .line 161
    :cond_0
    iget-object v0, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 162
    invoke-static {}, Lmiui/push/Packet;->nextID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    .line 164
    :cond_1
    iget-object v0, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 341
    return-object v1

    .line 343
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPropertyNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 379
    :try_start_0
    iget-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 380
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 382
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlns()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 556
    iget-object v2, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 557
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 558
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 559
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 560
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 561
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 562
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 563
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 564
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 556
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 557
    goto :goto_1

    :cond_3
    move v2, v1

    .line 558
    goto :goto_2

    :cond_4
    move v2, v1

    .line 559
    goto :goto_3

    :cond_5
    move v2, v1

    .line 560
    goto :goto_4
.end method

.method public removeExtension(Lmiui/push/CommonPacketExtension;)V
    .locals 1
    .param p1, "extension"    # Lmiui/push/CommonPacketExtension;

    .prologue
    .line 327
    iget-object v0, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 326
    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setError(Lmiui/push/XMPPError;)V
    .locals 0
    .param p1, "error"    # Lmiui/push/XMPPError;

    .prologue
    .line 259
    iput-object p1, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    .line 258
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setPacketID(Ljava/lang/String;)V
    .locals 0
    .param p1, "packetID"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    .line 354
    :try_start_0
    instance-of v0, p2, Ljava/io/Serializable;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value must be serialiazble"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 357
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 353
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 9

    .prologue
    .line 403
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 404
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v7, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 405
    const-string/jumbo v7, "ext_ns"

    iget-object v8, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_0
    iget-object v7, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 408
    const-string/jumbo v7, "ext_from"

    iget-object v8, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_1
    iget-object v7, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 411
    const-string/jumbo v7, "ext_to"

    iget-object v8, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_2
    iget-object v7, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 414
    const-string/jumbo v7, "ext_pkt_id"

    iget-object v8, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_3
    iget-object v7, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 417
    const-string/jumbo v7, "ext_chid"

    iget-object v8, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_4
    iget-object v7, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    if-eqz v7, :cond_5

    .line 420
    const-string/jumbo v7, "ext_ERROR"

    iget-object v8, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    invoke-virtual {v8}, Lmiui/push/XMPPError;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 422
    :cond_5
    iget-object v7, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    if-eqz v7, :cond_8

    .line 423
    iget-object v7, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v3, v7, [Landroid/os/Bundle;

    .line 424
    .local v3, "extBundle":[Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 425
    .local v4, "i":I
    iget-object v7, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ext$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/push/CommonPacketExtension;

    .line 426
    .local v1, "ext":Lmiui/push/CommonPacketExtension;
    invoke-virtual {v1}, Lmiui/push/CommonPacketExtension;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 427
    .local v6, "subBundle":Landroid/os/Bundle;
    if-eqz v6, :cond_6

    .line 428
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aput-object v6, v3, v4

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 431
    .end local v1    # "ext":Lmiui/push/CommonPacketExtension;
    .end local v6    # "subBundle":Landroid/os/Bundle;
    :cond_7
    const-string/jumbo v7, "ext_exts"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 433
    .end local v2    # "ext$iterator":Ljava/util/Iterator;
    .end local v3    # "extBundle":[Landroid/os/Bundle;
    .end local v4    # "i":I
    :cond_8
    return-object v0
.end method

.method public abstract toXML()Ljava/lang/String;
.end method
