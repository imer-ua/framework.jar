.class public Lmiui/push/PushAttributes;
.super Ljava/lang/Object;
.source "PushAttributes.java"


# instance fields
.field private final mAttrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/PushAttributes;->mAttrs:Ljava/util/Map;

    .line 22
    iget-object v0, p0, Lmiui/push/PushAttributes;->mAttrs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 21
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lmiui/push/PushAttributes;
    .locals 9
    .param p0, "plain"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 51
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 52
    .local v1, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 53
    const-string/jumbo v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "parts":[Ljava/lang/String;
    array-length v6, v3

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v3, v4

    .line 55
    .local v0, "attr":Ljava/lang/String;
    const-string/jumbo v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "pair":[Ljava/lang/String;
    array-length v7, v2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 57
    aget-object v7, v2, v5

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "attr":Ljava/lang/String;
    .end local v2    # "pair":[Ljava/lang/String;
    .end local v3    # "parts":[Ljava/lang/String;
    :cond_1
    new-instance v4, Lmiui/push/PushAttributes;

    invoke-direct {v4, v1}, Lmiui/push/PushAttributes;-><init>(Ljava/util/Map;)V

    return-object v4
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Lmiui/push/PushAttributes;->mAttrs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toPlain()Ljava/lang/String;
    .locals 5

    .prologue
    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lmiui/push/PushAttributes;->mAttrs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 32
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 33
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 34
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 40
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lmiui/push/PushAttributes;->toPlain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
