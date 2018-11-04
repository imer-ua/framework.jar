.class public Landroid/security/FingerprintIdUtilsCompat;
.super Ljava/lang/Object;
.source "FingerprintIdUtilsCompat.java"


# static fields
.field private static mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Landroid/security/FingerprintIdUtilsCompat;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAllFingerprintIds(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {p0}, Landroid/security/FingerprintIdUtilsCompat;->getService(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v3

    .line 39
    .local v3, "mFingerprintMgr":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v3, :cond_1

    .line 40
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v2

    .line 41
    .local v2, "fingers":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 43
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "finger$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 44
    .local v0, "finger":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    .end local v0    # "finger":Landroid/hardware/fingerprint/Fingerprint;
    .end local v1    # "finger$iterator":Ljava/util/Iterator;
    :cond_0
    return-object v4

    .line 49
    .end local v2    # "fingers":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public static getSecondSpaceId(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 33
    const-string/jumbo v1, "second_user_id"

    const/16 v2, -0x2710

    const/4 v3, 0x0

    .line 32
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getService(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-object v0, Landroid/security/FingerprintIdUtilsCompat;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    .line 26
    const-string/jumbo v0, "fingerprint"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    sput-object v0, Landroid/security/FingerprintIdUtilsCompat;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    .line 28
    :cond_0
    sget-object v0, Landroid/security/FingerprintIdUtilsCompat;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method public static getValidFingerPrintIds(Ljava/util/HashMap;Landroid/content/Context;)Ljava/util/HashMap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "fingerPrintsId":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 55
    :cond_0
    return-object v4

    .line 57
    :cond_1
    invoke-static {p1}, Landroid/security/FingerprintIdUtilsCompat;->getAllFingerprintIds(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 58
    .local v0, "allFingerprintIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 59
    :cond_2
    return-object v4

    .line 61
    :cond_3
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 63
    .local v2, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 64
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 68
    invoke-static {p1}, Landroid/security/FingerprintIdUtilsCompat;->getSecondSpaceId(Landroid/content/Context;)I

    move-result v5

    invoke-static {p1, v5, p0}, Landroid/security/FingerprintIdUtils;->writeFingerprintIdsToXml(Landroid/content/Context;ILjava/util/HashMap;)V

    goto :goto_0

    .line 71
    .end local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_5
    move-object v4, p0

    .line 72
    return-object p0
.end method
