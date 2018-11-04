.class public Landroid/preference/MiuiArmourSettingsPreference;
.super Ljava/lang/Object;
.source "MiuiArmourSettingsPreference.java"


# instance fields
.field private I:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field private checkMap:Ljava/util/Map;
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

.field private f:[Ljava/lang/String;

.field private k:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private u:[Ljava/lang/String;

.field private v:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Lkdjg8RVs+2SoQYKXkqkMxTonHrZc4WgmfWYX42pJhU="

    aput-object v1, v0, v2

    const-string v1, "Jjhp9+X60Jt/UFdO5kgmlA=="

    aput-object v1, v0, v3

    const-string v1, "9Uev5I8/pDp54wHzFMNI2i5JWvJ/GwB1ld7CUse0oWQ="

    aput-object v1, v0, v4

    const-string v1, "4Fas7DptjnXS6nXXFyDADQ=="

    aput-object v1, v0, v5

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->k:[Ljava/lang/String;

    .line 23
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "2e1tRAnFTl1ErOPwsh7EWg=="

    aput-object v1, v0, v2

    const-string v1, "Fld92gfzzvx/rb1BkUS8iSmgGOcT7bn1L2QIGpFQed4="

    aput-object v1, v0, v3

    const-string/jumbo v1, "tXpzSRNjAJFRRYoCKi7cqA=="

    aput-object v1, v0, v4

    const-string v1, "Vt0Qm+QAX27VxbY94Jax5Q=="

    aput-object v1, v0, v5

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->v:[Ljava/lang/String;

    .line 24
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "8LaxNl8CJmxHNQK6rR5oDLThOfI/2kNZuOZu0vXDbU0="

    aput-object v1, v0, v2

    const-string v1, "8LaxNl8CJmxHNQK6rR5oDEiNEOzXCTucex+hAgWQq0g="

    aput-object v1, v0, v3

    const-string v1, "8LaxNl8CJmxHNQK6rR5oDJwv8TzyrIbCed7c+rFF9tFHpngi5d0CUaY1xlP4Lgzl"

    aput-object v1, v0, v4

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->u:[Ljava/lang/String;

    .line 25
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "rHp5dKao3Z8sb6FjXdtHGA=="

    aput-object v1, v0, v2

    const-string/jumbo v1, "plfjj/KflBK8GoPbjF+oZA=="

    aput-object v1, v0, v3

    const-string v1, "fE8Rz/LsU04kLbGbCekR4XfQ2KkeLT6YkmI0b/mixTvh8Le7wNKVA4HyycdvKCHY"

    aput-object v1, v0, v4

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->f:[Ljava/lang/String;

    .line 26
    const-string v0, "R6p6MdWABUayfn8e1QknN8dYLsWAMcslz2RtzX4CU9c="

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->c:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->checkMap:Ljava/util/Map;

    .line 28
    const-string v0, "cXqUoUDgJtuVvXGBjw6TKA=="

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->K:Ljava/lang/String;

    .line 29
    const-string v0, "MDEwMjAzMDQwNTA2MDcwOA=="

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->I:Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Landroid/preference/MiuiArmourSettingsPreference;->genCheckValue()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Lkdjg8RVs+2SoQYKXkqkMxTonHrZc4WgmfWYX42pJhU="

    aput-object v1, v0, v2

    const-string v1, "Jjhp9+X60Jt/UFdO5kgmlA=="

    aput-object v1, v0, v3

    const-string v1, "9Uev5I8/pDp54wHzFMNI2i5JWvJ/GwB1ld7CUse0oWQ="

    aput-object v1, v0, v4

    const-string v1, "4Fas7DptjnXS6nXXFyDADQ=="

    aput-object v1, v0, v5

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->k:[Ljava/lang/String;

    .line 23
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "2e1tRAnFTl1ErOPwsh7EWg=="

    aput-object v1, v0, v2

    const-string v1, "Fld92gfzzvx/rb1BkUS8iSmgGOcT7bn1L2QIGpFQed4="

    aput-object v1, v0, v3

    const-string/jumbo v1, "tXpzSRNjAJFRRYoCKi7cqA=="

    aput-object v1, v0, v4

    const-string v1, "Vt0Qm+QAX27VxbY94Jax5Q=="

    aput-object v1, v0, v5

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->v:[Ljava/lang/String;

    .line 24
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "8LaxNl8CJmxHNQK6rR5oDLThOfI/2kNZuOZu0vXDbU0="

    aput-object v1, v0, v2

    const-string v1, "8LaxNl8CJmxHNQK6rR5oDEiNEOzXCTucex+hAgWQq0g="

    aput-object v1, v0, v3

    const-string v1, "8LaxNl8CJmxHNQK6rR5oDJwv8TzyrIbCed7c+rFF9tFHpngi5d0CUaY1xlP4Lgzl"

    aput-object v1, v0, v4

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->u:[Ljava/lang/String;

    .line 25
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "rHp5dKao3Z8sb6FjXdtHGA=="

    aput-object v1, v0, v2

    const-string/jumbo v1, "plfjj/KflBK8GoPbjF+oZA=="

    aput-object v1, v0, v3

    const-string v1, "fE8Rz/LsU04kLbGbCekR4XfQ2KkeLT6YkmI0b/mixTvh8Le7wNKVA4HyycdvKCHY"

    aput-object v1, v0, v4

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->f:[Ljava/lang/String;

    .line 26
    const-string v0, "R6p6MdWABUayfn8e1QknN8dYLsWAMcslz2RtzX4CU9c="

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->c:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->checkMap:Ljava/util/Map;

    .line 28
    const-string v0, "cXqUoUDgJtuVvXGBjw6TKA=="

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->K:Ljava/lang/String;

    .line 29
    const-string v0, "MDEwMjAzMDQwNTA2MDcwOA=="

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->I:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Landroid/preference/MiuiArmourSettingsPreference;->mContext:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Landroid/preference/MiuiArmourSettingsPreference;->genCheckValue()V

    .line 38
    return-void
.end method

.method private CheckBuild()Z
    .locals 6

    .prologue
    .line 65
    const/4 v3, 0x1

    .line 66
    .local v3, "result":Z
    iget-object v4, p0, Landroid/preference/MiuiArmourSettingsPreference;->checkMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 67
    .local v1, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 70
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    const/4 v3, 0x0

    .line 77
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "result":Z
    :cond_1
    return v3

    .line 73
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "result":Z
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static checkExchangeRateURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Landroid/preference/MiuiArmourSettingsPreference;

    invoke-direct {v0}, Landroid/preference/MiuiArmourSettingsPreference;-><init>()V

    invoke-virtual {v0, p0}, Landroid/preference/MiuiArmourSettingsPreference;->gER(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkSummary(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 145
    new-instance v0, Landroid/preference/MiuiArmourSettingsPreference;

    invoke-direct {v0, p0}, Landroid/preference/MiuiArmourSettingsPreference;-><init>(Landroid/content/Context;)V

    .line 146
    .local v0, "armour":Landroid/preference/MiuiArmourSettingsPreference;
    invoke-direct {v0}, Landroid/preference/MiuiArmourSettingsPreference;->CheckBuild()Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/preference/MiuiArmourSettingsPreference;->c:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/preference/MiuiArmourSettingsPreference;->dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1    # "value":Ljava/lang/CharSequence;
    .local v2, "value":Ljava/lang/CharSequence;
    move-object p1, v2

    .line 153
    .end local v2    # "value":Ljava/lang/CharSequence;
    .restart local p1    # "value":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkThemesURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Landroid/preference/MiuiArmourSettingsPreference;

    invoke-direct {v0}, Landroid/preference/MiuiArmourSettingsPreference;-><init>()V

    invoke-virtual {v0, p0}, Landroid/preference/MiuiArmourSettingsPreference;->gTU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dc(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "encrypted"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 52
    :try_start_0
    iget-object v5, p0, Landroid/preference/MiuiArmourSettingsPreference;->K:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 53
    .local v3, "keyBytes":[B
    iget-object v5, p0, Landroid/preference/MiuiArmourSettingsPreference;->I:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 54
    .local v2, "ivBytes":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 55
    .local v4, "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "AES/CBC/PKCS7Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 56
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v5, v4, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 57
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "ivBytes":[B
    .end local v3    # "keyBytes":[B
    .end local v4    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v5

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 61
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private genCheckValue()V
    .locals 5

    .prologue
    .line 41
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Landroid/preference/MiuiArmourSettingsPreference;->k:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 43
    :try_start_0
    iget-object v2, p0, Landroid/preference/MiuiArmourSettingsPreference;->checkMap:Ljava/util/Map;

    iget-object v3, p0, Landroid/preference/MiuiArmourSettingsPreference;->k:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Landroid/preference/MiuiArmourSettingsPreference;->dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/preference/MiuiArmourSettingsPreference;->v:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {p0, v4}, Landroid/preference/MiuiArmourSettingsPreference;->dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_1

    .line 48
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_0
    return-void
.end method

.method public static getKeyParam(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "result":I
    new-instance v0, Landroid/preference/MiuiArmourSettingsPreference;

    invoke-direct {v0, p0}, Landroid/preference/MiuiArmourSettingsPreference;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, "armour":Landroid/preference/MiuiArmourSettingsPreference;
    invoke-direct {v0}, Landroid/preference/MiuiArmourSettingsPreference;->CheckBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 123
    :cond_0
    return v1
.end method

.method public static getKeyParamString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "result":Ljava/lang/String;
    new-instance v0, Landroid/preference/MiuiArmourSettingsPreference;

    invoke-direct {v0, p0}, Landroid/preference/MiuiArmourSettingsPreference;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, "armour":Landroid/preference/MiuiArmourSettingsPreference;
    invoke-direct {v0}, Landroid/preference/MiuiArmourSettingsPreference;->CheckBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    :cond_0
    return-object v1
.end method

.method public static getKeyTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 127
    const-wide/16 v2, 0x0

    .line 128
    .local v2, "result":J
    new-instance v0, Landroid/preference/MiuiArmourSettingsPreference;

    invoke-direct {v0, p0}, Landroid/preference/MiuiArmourSettingsPreference;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, "armour":Landroid/preference/MiuiArmourSettingsPreference;
    invoke-direct {v0}, Landroid/preference/MiuiArmourSettingsPreference;->CheckBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-wide/16 v4, 0x1f4

    invoke-static {v1, p1, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 132
    :cond_0
    return-wide v2
.end method


# virtual methods
.method public gER(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/preference/MiuiArmourSettingsPreference;->CheckBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    :try_start_0
    iget-object v1, p0, Landroid/preference/MiuiArmourSettingsPreference;->f:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Landroid/preference/MiuiArmourSettingsPreference;->dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Landroid/preference/MiuiArmourSettingsPreference;->u:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Landroid/preference/MiuiArmourSettingsPreference;->dc(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 106
    :cond_0
    :goto_0
    return-object p1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public gTU(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/preference/MiuiArmourSettingsPreference;->CheckBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    :try_start_0
    iget-object v1, p0, Landroid/preference/MiuiArmourSettingsPreference;->f:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Landroid/preference/MiuiArmourSettingsPreference;->dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Landroid/preference/MiuiArmourSettingsPreference;->u:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Landroid/preference/MiuiArmourSettingsPreference;->dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 92
    :cond_0
    :goto_0
    return-object p1

    .line 85
    :cond_1
    iget-object v1, p0, Landroid/preference/MiuiArmourSettingsPreference;->f:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Landroid/preference/MiuiArmourSettingsPreference;->dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Landroid/preference/MiuiArmourSettingsPreference;->u:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Landroid/preference/MiuiArmourSettingsPreference;->dc(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_0
.end method
