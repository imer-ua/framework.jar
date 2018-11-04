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

.field public mST:I

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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v2, p0, Landroid/preference/MiuiArmourSettingsPreference;->mST:I

    .line 23
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

    .line 24
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

    .line 25
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "8LaxNl8CJmxHNQK6rR5oDLThOfI/2kNZuOZu0vXDbU0="

    aput-object v1, v0, v2

    const-string v1, "8LaxNl8CJmxHNQK6rR5oDEiNEOzXCTucex+hAgWQq0g="

    aput-object v1, v0, v3

    const-string v1, "8LaxNl8CJmxHNQK6rR5oDJwv8TzyrIbCed7c+rFF9tFHpngi5d0CUaY1xlP4Lgzl"

    aput-object v1, v0, v4

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->u:[Ljava/lang/String;

    .line 26
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "rHp5dKao3Z8sb6FjXdtHGA=="

    aput-object v1, v0, v2

    const-string/jumbo v1, "plfjj/KflBK8GoPbjF+oZA=="

    aput-object v1, v0, v3

    const-string v1, "fE8Rz/LsU04kLbGbCekR4XfQ2KkeLT6YkmI0b/mixTvh8Le7wNKVA4HyycdvKCHY"

    aput-object v1, v0, v4

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->f:[Ljava/lang/String;

    .line 27
    const-string v0, "R6p6MdWABUayfn8e1QknN8dYLsWAMcslz2RtzX4CU9c="

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->c:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->checkMap:Ljava/util/Map;

    .line 29
    const-string v0, "cXqUoUDgJtuVvXGBjw6TKA=="

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->K:Ljava/lang/String;

    .line 30
    const-string v0, "MDEwMjAzMDQwNTA2MDcwOA=="

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->I:Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Landroid/preference/MiuiArmourSettingsPreference;->gCV()V

    .line 35
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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v2, p0, Landroid/preference/MiuiArmourSettingsPreference;->mST:I

    .line 23
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

    .line 24
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

    .line 25
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "8LaxNl8CJmxHNQK6rR5oDLThOfI/2kNZuOZu0vXDbU0="

    aput-object v1, v0, v2

    const-string v1, "8LaxNl8CJmxHNQK6rR5oDEiNEOzXCTucex+hAgWQq0g="

    aput-object v1, v0, v3

    const-string v1, "8LaxNl8CJmxHNQK6rR5oDJwv8TzyrIbCed7c+rFF9tFHpngi5d0CUaY1xlP4Lgzl"

    aput-object v1, v0, v4

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->u:[Ljava/lang/String;

    .line 26
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "rHp5dKao3Z8sb6FjXdtHGA=="

    aput-object v1, v0, v2

    const-string/jumbo v1, "plfjj/KflBK8GoPbjF+oZA=="

    aput-object v1, v0, v3

    const-string v1, "fE8Rz/LsU04kLbGbCekR4XfQ2KkeLT6YkmI0b/mixTvh8Le7wNKVA4HyycdvKCHY"

    aput-object v1, v0, v4

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->f:[Ljava/lang/String;

    .line 27
    const-string v0, "R6p6MdWABUayfn8e1QknN8dYLsWAMcslz2RtzX4CU9c="

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->c:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->checkMap:Ljava/util/Map;

    .line 29
    const-string v0, "cXqUoUDgJtuVvXGBjw6TKA=="

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->K:Ljava/lang/String;

    .line 30
    const-string v0, "MDEwMjAzMDQwNTA2MDcwOA=="

    iput-object v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->I:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Landroid/preference/MiuiArmourSettingsPreference;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Landroid/preference/MiuiArmourSettingsPreference;->gCV()V

    .line 40
    return-void
.end method

.method private cB()Z
    .locals 6

    .prologue
    .line 97
    const/4 v3, 0x1

    .line 98
    .local v3, "result":Z
    iget-object v4, p0, Landroid/preference/MiuiArmourSettingsPreference;->checkMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 99
    .local v1, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 102
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    const/4 v3, 0x0

    .line 109
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "result":Z
    :cond_1
    return v3

    .line 105
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "result":Z
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method private cUA()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 142
    const/4 v2, 0x0

    .line 144
    .local v2, "result":Z
    :try_start_0
    const-string v5, "dNeyNkM9vUlwrgwF046Zd6D1rt6bjZCvcelIvhJPywk="

    invoke-direct {p0, v5}, Landroid/preference/MiuiArmourSettingsPreference;->dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "cK":Ljava/lang/String;
    iget-object v5, p0, Landroid/preference/MiuiArmourSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v3, :cond_0

    move v2, v3

    .line 149
    .end local v0    # "cK":Ljava/lang/String;
    :goto_0
    return v2

    .restart local v0    # "cK":Ljava/lang/String;
    :cond_0
    move v2, v4

    .line 145
    goto :goto_0

    .line 146
    .end local v0    # "cK":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkExchangeRateURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 206
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
    .line 237
    new-instance v0, Landroid/preference/MiuiArmourSettingsPreference;

    invoke-direct {v0, p0}, Landroid/preference/MiuiArmourSettingsPreference;-><init>(Landroid/content/Context;)V

    .line 238
    .local v0, "am":Landroid/preference/MiuiArmourSettingsPreference;
    invoke-virtual {v0}, Landroid/preference/MiuiArmourSettingsPreference;->cBB()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/preference/MiuiArmourSettingsPreference;->cuA()Z

    move-result v3

    if-nez v3, :cond_1

    .line 240
    :cond_0
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

    .line 245
    .end local v2    # "value":Ljava/lang/CharSequence;
    .restart local p1    # "value":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-object p1

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkThemesURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 202
    new-instance v0, Landroid/preference/MiuiArmourSettingsPreference;

    invoke-direct {v0}, Landroid/preference/MiuiArmourSettingsPreference;-><init>()V

    invoke-virtual {v0, p0}, Landroid/preference/MiuiArmourSettingsPreference;->gTU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cr(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "pt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 45
    :try_start_0
    iget-object v5, p0, Landroid/preference/MiuiArmourSettingsPreference;->K:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 46
    .local v3, "kB":[B
    iget-object v5, p0, Landroid/preference/MiuiArmourSettingsPreference;->I:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 47
    .local v2, "iB":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 48
    .local v4, "sKS":Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "AES/CBC/PKCS7Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 49
    .local v0, "cp":Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v5, v4, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 50
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "cp":Ljavax/crypto/Cipher;
    .end local v2    # "iB":[B
    .end local v3    # "kB":[B
    .end local v4    # "sKS":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v5

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 54
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private dc(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "acp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    iget-object v5, p0, Landroid/preference/MiuiArmourSettingsPreference;->K:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 61
    .local v3, "kB":[B
    iget-object v5, p0, Landroid/preference/MiuiArmourSettingsPreference;->I:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 62
    .local v2, "iB":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 63
    .local v4, "sKS":Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "AES/CBC/PKCS7Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 64
    .local v0, "cp":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v5, v4, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 65
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

    .line 69
    .end local v0    # "cp":Ljavax/crypto/Cipher;
    .end local v2    # "iB":[B
    .end local v3    # "kB":[B
    .end local v4    # "sKS":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v5

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 69
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private gCV()V
    .locals 5

    .prologue
    .line 87
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Landroid/preference/MiuiArmourSettingsPreference;->k:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 89
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

    .line 87
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_1

    .line 94
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_0
    return-void
.end method

.method private gP(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-direct {p0}, Landroid/preference/MiuiArmourSettingsPreference;->cUA()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    iget v1, p0, Landroid/preference/MiuiArmourSettingsPreference;->mST:I

    packed-switch v1, :pswitch_data_0

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 184
    :pswitch_0
    iget-object v1, p0, Landroid/preference/MiuiArmourSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 185
    :pswitch_1
    iget-object v1, p0, Landroid/preference/MiuiArmourSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 186
    :pswitch_2
    iget-object v1, p0, Landroid/preference/MiuiArmourSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private gPS(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Landroid/preference/MiuiArmourSettingsPreference;->cUA()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget v1, p0, Landroid/preference/MiuiArmourSettingsPreference;->mST:I

    packed-switch v1, :pswitch_data_0

    .line 163
    const/4 v0, 0x0

    .line 167
    :cond_0
    :goto_0
    return-object v0

    .line 156
    :pswitch_0
    iget-object v1, p0, Landroid/preference/MiuiArmourSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v1, p0, Landroid/preference/MiuiArmourSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    goto :goto_0

    .line 160
    :pswitch_2
    iget-object v1, p0, Landroid/preference/MiuiArmourSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private gT(Ljava/lang/String;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x1f4

    .line 171
    invoke-direct {p0}, Landroid/preference/MiuiArmourSettingsPreference;->cUA()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    iget v2, p0, Landroid/preference/MiuiArmourSettingsPreference;->mST:I

    packed-switch v2, :pswitch_data_0

    .line 178
    :cond_0
    :goto_0
    return-wide v0

    .line 173
    :pswitch_0
    iget-object v2, p0, Landroid/preference/MiuiArmourSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 174
    :pswitch_1
    iget-object v2, p0, Landroid/preference/MiuiArmourSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v0, v1}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 175
    :pswitch_2
    iget-object v2, p0, Landroid/preference/MiuiArmourSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getKeyParam(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 210
    new-instance v0, Landroid/preference/MiuiArmourSettingsPreference;

    invoke-direct {v0, p0}, Landroid/preference/MiuiArmourSettingsPreference;-><init>(Landroid/content/Context;)V

    .line 211
    .local v0, "am":Landroid/preference/MiuiArmourSettingsPreference;
    const-string v1, "V/uk3NqE1Ro/1zcN0OnPOg=="

    invoke-virtual {v0, v1}, Landroid/preference/MiuiArmourSettingsPreference;->iST(Ljava/lang/String;)V

    .line 212
    invoke-direct {v0}, Landroid/preference/MiuiArmourSettingsPreference;->cB()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-direct {v0, p1}, Landroid/preference/MiuiArmourSettingsPreference;->gP(Ljava/lang/String;)I

    move-result v1

    .line 215
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getKeyParamString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 228
    new-instance v0, Landroid/preference/MiuiArmourSettingsPreference;

    invoke-direct {v0, p0}, Landroid/preference/MiuiArmourSettingsPreference;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, "am":Landroid/preference/MiuiArmourSettingsPreference;
    const-string v1, "V/uk3NqE1Ro/1zcN0OnPOg=="

    invoke-virtual {v0, v1}, Landroid/preference/MiuiArmourSettingsPreference;->iST(Ljava/lang/String;)V

    .line 230
    invoke-direct {v0}, Landroid/preference/MiuiArmourSettingsPreference;->cB()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-direct {v0, p1}, Landroid/preference/MiuiArmourSettingsPreference;->gPS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getKeyTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 219
    new-instance v0, Landroid/preference/MiuiArmourSettingsPreference;

    invoke-direct {v0, p0}, Landroid/preference/MiuiArmourSettingsPreference;-><init>(Landroid/content/Context;)V

    .line 220
    .local v0, "am":Landroid/preference/MiuiArmourSettingsPreference;
    const-string v1, "V/uk3NqE1Ro/1zcN0OnPOg=="

    invoke-virtual {v0, v1}, Landroid/preference/MiuiArmourSettingsPreference;->iST(Ljava/lang/String;)V

    .line 221
    invoke-direct {v0}, Landroid/preference/MiuiArmourSettingsPreference;->cB()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-direct {v0, p1}, Landroid/preference/MiuiArmourSettingsPreference;->gT(Ljava/lang/String;)J

    move-result-wide v2

    .line 224
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x1f4

    goto :goto_0
.end method


# virtual methods
.method public cBB()Z
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Landroid/preference/MiuiArmourSettingsPreference;->cB()Z

    move-result v0

    return v0
.end method

.method public crC(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pt"    # Ljava/lang/String;

    .prologue
    .line 203
    :try_start_0
    invoke-direct {p0, p1}, Landroid/preference/MiuiArmourSettingsPreference;->cr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 207
    .end local p1    # "pt":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 204
    .restart local p1    # "pt":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public cuA()Z
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Landroid/preference/MiuiArmourSettingsPreference;->cUA()Z

    move-result v0

    return v0
.end method

.method public dcC(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "acp"    # Ljava/lang/String;

    .prologue
    .line 212
    :try_start_0
    invoke-direct {p0, p1}, Landroid/preference/MiuiArmourSettingsPreference;->dc(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 216
    :goto_0
    return-object v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 216
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public gER(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0}, Landroid/preference/MiuiArmourSettingsPreference;->cB()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    :try_start_0
    iget-object v1, p0, Landroid/preference/MiuiArmourSettingsPreference;->f:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Landroid/preference/MiuiArmourSettingsPreference;->dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Landroid/preference/MiuiArmourSettingsPreference;->u:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Landroid/preference/MiuiArmourSettingsPreference;->dc(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 138
    :cond_0
    :goto_0
    return-object p1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public gTU(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/preference/MiuiArmourSettingsPreference;->cB()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    :try_start_0
    iget-object v1, p0, Landroid/preference/MiuiArmourSettingsPreference;->f:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Landroid/preference/MiuiArmourSettingsPreference;->dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Landroid/preference/MiuiArmourSettingsPreference;->u:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Landroid/preference/MiuiArmourSettingsPreference;->dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    :cond_0
    :goto_0
    return-object p1

    .line 117
    :cond_1
    iget-object v1, p0, Landroid/preference/MiuiArmourSettingsPreference;->f:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Landroid/preference/MiuiArmourSettingsPreference;->dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Landroid/preference/MiuiArmourSettingsPreference;->u:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Landroid/preference/MiuiArmourSettingsPreference;->dc(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public iST(Ljava/lang/String;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 81
    iput v1, p0, Landroid/preference/MiuiArmourSettingsPreference;->mST:I

    .line 84
    :goto_1
    return-void

    .line 73
    :sswitch_0
    const-string v3, "j8k4g2vhS7fRYXFyr9QjIA=="

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "juISHzqk5lJrqlMwKN9WLQ=="

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    .line 75
    :pswitch_0
    iput v2, p0, Landroid/preference/MiuiArmourSettingsPreference;->mST:I

    goto :goto_1

    .line 78
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Landroid/preference/MiuiArmourSettingsPreference;->mST:I

    goto :goto_1

    .line 73
    nop

    :sswitch_data_0
    .sparse-switch
        0x27aa56b -> :sswitch_1
        0x4466714e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
