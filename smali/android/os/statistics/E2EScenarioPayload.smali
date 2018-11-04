.class public final Landroid/os/statistics/E2EScenarioPayload;
.super Ljava/lang/Object;
.source "E2EScenarioPayload.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/E2EScenarioPayload$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/E2EScenarioPayload;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final values:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Landroid/os/statistics/E2EScenarioPayload$1;

    invoke-direct {v0}, Landroid/os/statistics/E2EScenarioPayload$1;-><init>()V

    .line 150
    sput-object v0, Landroid/os/statistics/E2EScenarioPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/statistics/E2EScenarioPayload;->values:Ljava/util/HashMap;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/os/statistics/E2EScenarioPayload;->values:Ljava/util/HashMap;

    .line 47
    if-eqz p1, :cond_2

    .line 48
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Landroid/os/statistics/E2EScenarioPayload;->values:Ljava/util/HashMap;

    if-nez v2, :cond_1

    const-string/jumbo v2, ""

    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 45
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/os/statistics/E2EScenarioPayload;->values:Ljava/util/HashMap;

    .line 30
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4

    .line 31
    .local v4, "valuesFromParcel":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    .line 32
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 33
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 34
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 35
    .local v3, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 36
    iget-object v5, p0, Landroid/os/statistics/E2EScenarioPayload;->values:Ljava/util/HashMap;

    if-nez v3, :cond_1

    const-string/jumbo v3, ""

    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 28
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Landroid/os/statistics/E2EScenarioPayload;

    invoke-direct {v0}, Landroid/os/statistics/E2EScenarioPayload;-><init>()V

    .line 68
    .local v0, "result":Landroid/os/statistics/E2EScenarioPayload;
    iget-object v1, v0, Landroid/os/statistics/E2EScenarioPayload;->values:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/os/statistics/E2EScenarioPayload;->values:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 69
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/os/statistics/E2EScenarioPayload;->values:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Landroid/os/statistics/E2EScenarioPayload;)V
    .locals 2
    .param p1, "source"    # Landroid/os/statistics/E2EScenarioPayload;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/os/statistics/E2EScenarioPayload;->values:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/os/statistics/E2EScenarioPayload;->values:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 61
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 109
    if-nez p1, :cond_2

    const/4 v0, 0x0

    .line 110
    :goto_0
    if-nez p2, :cond_3

    const/4 v1, 0x0

    .line 111
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    iget-object v2, p0, Landroid/os/statistics/E2EScenarioPayload;->values:Ljava/util/HashMap;

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    :cond_0
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_1
    return-void

    .line 109
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "keyStr":Ljava/lang/String;
    goto :goto_0

    .line 110
    .end local v0    # "keyStr":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "valueStr":Ljava/lang/String;
    goto :goto_1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    return-void

    .line 100
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "entry":Ljava/lang/Object;
    move-object v4, v0

    .line 101
    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 102
    .local v2, "key":Ljava/lang/Object;
    check-cast v0, Ljava/util/Map$Entry;

    .end local v0    # "entry":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 103
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Landroid/os/statistics/E2EScenarioPayload;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public varargs putValues([Ljava/lang/Object;)V
    .locals 5
    .param p1, "keyandvalues"    # [Ljava/lang/Object;

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    return-void

    .line 84
    :cond_0
    array-length v3, p1

    rem-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 85
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "length of keyandvalues should be even"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 87
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    div-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_2

    .line 88
    mul-int/lit8 v3, v0, 0x2

    aget-object v1, p1, v3

    .line 89
    .local v1, "key":Ljava/lang/Object;
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v2, p1, v3

    .line 90
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p0, v1, v2}, Landroid/os/statistics/E2EScenarioPayload;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 130
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 132
    .local v3, "json":Lorg/json/JSONObject;
    :try_start_0
    iget-object v4, p0, Landroid/os/statistics/E2EScenarioPayload;->values:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 133
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v3
.end method

.method public writeToBundle(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 145
    iget-object v2, p0, Landroid/os/statistics/E2EScenarioPayload;->values:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 123
    iget-object v0, p0, Landroid/os/statistics/E2EScenarioPayload;->values:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 122
    return-void
.end method
