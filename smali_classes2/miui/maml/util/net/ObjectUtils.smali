.class public Lmiui/maml/util/net/ObjectUtils;
.super Ljava/lang/Object;
.source "ObjectUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertObj(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 146
    instance-of v4, p0, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 147
    nop

    nop

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lmiui/maml/util/net/ObjectUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    return-object v4

    .line 148
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v4, p0, Lorg/json/JSONArray;

    if-eqz v4, :cond_2

    move-object v0, p0

    .line 149
    nop

    nop

    .line 150
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 151
    .local v3, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 153
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lmiui/maml/util/net/ObjectUtils;->convertObj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_1
    return-object v2

    .line 156
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "size":I
    :cond_2
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v4, :cond_3

    .line 157
    const/4 v4, 0x0

    return-object v4

    .line 159
    :cond_3
    return-object p0
.end method

.method public static convertObjectToJson(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 75
    instance-of v11, p0, Ljava/util/List;

    if-eqz v11, :cond_1

    move-object v9, p0

    .line 76
    check-cast v9, Ljava/util/List;

    .line 77
    .local v9, "objList":Ljava/util/List;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 78
    .local v1, "array":Lorg/json/JSONArray;
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "o$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 79
    .local v7, "o":Ljava/lang/Object;
    invoke-static {v7}, Lmiui/maml/util/net/ObjectUtils;->convertObjectToJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 81
    .end local v7    # "o":Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 82
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v8    # "o$iterator":Ljava/util/Iterator;
    .end local v9    # "objList":Ljava/util/List;
    :cond_1
    instance-of v11, p0, Ljava/util/Map;

    if-eqz v11, :cond_3

    .line 83
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .local v3, "jobj":Lorg/json/JSONObject;
    move-object v10, p0

    .line 84
    check-cast v10, Ljava/util/Map;

    .line 85
    .local v10, "objMap":Ljava/util/Map;
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 86
    .local v6, "keys":Ljava/util/Set;
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "key$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 88
    .local v4, "key":Ljava/lang/Object;
    :try_start_0
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    .line 89
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lmiui/maml/util/net/ObjectUtils;->convertObjectToJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 88
    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 94
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v4    # "key":Ljava/lang/Object;
    :cond_2
    return-object v3

    .line 96
    .end local v3    # "jobj":Lorg/json/JSONObject;
    .end local v5    # "key$iterator":Ljava/util/Iterator;
    .end local v6    # "keys":Ljava/util/Set;
    .end local v10    # "objMap":Ljava/util/Map;
    :cond_3
    return-object p0
.end method

.method public static flattenMap(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-nez p0, :cond_0

    .line 126
    const-string/jumbo v6, "null"

    return-object v6

    .line 128
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 129
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<+Ljava/util/Map$Entry<**>;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "{"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 132
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 133
    .local v3, "key":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 134
    .local v5, "value":Ljava/lang/Object;
    const-string/jumbo v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    const-string/jumbo v6, "),"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 141
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v6, "}"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .param p0, "jsonObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 61
    if-nez p0, :cond_0

    .line 62
    return-object v4

    .line 64
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 65
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 66
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 69
    .local v3, "value":Ljava/lang/Object;
    invoke-static {v3}, Lmiui/maml/util/net/ObjectUtils;->convertObj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    return-object v2
.end method

.method public static listToMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "listMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v7, 0x0

    .line 102
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 104
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 105
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 106
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 107
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 108
    .local v5, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 109
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 113
    .end local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-object v4
.end method

.method public static mapToPairs(Ljava/util/Map;)Landroid/content/ContentValues;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 31
    return-object v6

    .line 33
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 34
    .local v5, "values":Landroid/content/ContentValues;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 35
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 36
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 37
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 38
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_1

    .end local v4    # "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .restart local v4    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, ""

    goto :goto_1

    .line 40
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    return-object v5
.end method
