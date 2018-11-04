.class public Landroid/security/keystore/SoterKeyStoreProvider;
.super Ljava/security/Provider;
.source "SoterKeyStoreProvider.java"


# static fields
.field private static final ANDROID_PACKAGE_NAME:Ljava/lang/String; = "android.security.keystore"

.field private static final DEVICE_TYPE_NEW:I = 0x2

.field private static final DEVICE_TYPE_SAME:I = 0x3

.field private static final DEVICE_TYPE_STOCK:I = 0x1

.field public static final PROVIDER_NAME:Ljava/lang/String; = "SoterKeyStore"

.field private static final SOTER_PACKAGE_NAME:Ljava/lang/String; = "android.security.keystore"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 51
    const-string/jumbo v0, "SoterKeyStore"

    const-string/jumbo v1, "provider for soter"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 52
    const-string/jumbo v0, "KeyPairGenerator.RSA"

    const-string/jumbo v1, "android.security.keystore.SoterKeyStoreKeyPairRSAGeneratorSpi"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v0, "KeyStore.SoterKeyStore"

    const-string/jumbo v1, "android.security.keystore.SoterKeyStoreSpi"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v0, "RSA"

    invoke-direct {p0, v0}, Landroid/security/keystore/SoterKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static getAndroidKeyStorePrivateKey(Landroid/security/keystore/AndroidKeyStorePublicKey;)Landroid/security/keystore/AndroidKeyStorePrivateKey;
    .locals 5
    .param p0, "publicKey"    # Landroid/security/keystore/AndroidKeyStorePublicKey;

    .prologue
    const/4 v4, -0x1

    .line 97
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "keyAlgorithm":Ljava/lang/String;
    const-string/jumbo v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    new-instance v1, Landroid/security/keystore/AndroidKeyStoreECPrivateKey;

    .line 100
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    check-cast p0, Ljava/security/interfaces/ECKey;

    .end local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    .line 99
    invoke-direct {v1, v2, v4, v3}, Landroid/security/keystore/AndroidKeyStoreECPrivateKey;-><init>(Ljava/lang/String;ILjava/security/spec/ECParameterSpec;)V

    return-object v1

    .line 101
    .restart local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    :cond_0
    const-string/jumbo v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    new-instance v1, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;

    .line 103
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    check-cast p0, Ljava/security/interfaces/RSAKey;

    .end local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    .line 102
    invoke-direct {v1, v2, v4, v3}, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;-><init>(Ljava/lang/String;ILjava/math/BigInteger;)V

    return-object v1

    .line 105
    .restart local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    :cond_1
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported Android Keystore public key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAndroidKeyStorePublicKey(Ljava/lang/String;Ljava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .locals 10
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "keyAlgorithm"    # Ljava/lang/String;
    .param p2, "x509EncodedForm"    # [B

    .prologue
    const/4 v9, -0x1

    .line 168
    :try_start_0
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 169
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    const-string/jumbo v7, "pub_key"

    invoke-static {p2, v7}, Landroid/security/keystore/SoterUtil;->getDataFromRaw([BLjava/lang/String;)[B

    move-result-object v5

    .line 170
    .local v5, "realPublicKey":[B
    if-eqz v5, :cond_0

    .line 171
    new-instance v7, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v7, v5}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v3, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 183
    .local v4, "publicKey":Ljava/security/PublicKey;
    const-string/jumbo v7, "EC"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 184
    const-string/jumbo v7, "Soter"

    const-string/jumbo v8, "AndroidKeyStoreECPublicKey"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v7, Landroid/security/keystore/AndroidKeyStoreECPublicKey;

    check-cast v4, Ljava/security/interfaces/ECPublicKey;

    .end local v4    # "publicKey":Ljava/security/PublicKey;
    invoke-direct {v7, p0, v9, v4}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;-><init>(Ljava/lang/String;ILjava/security/interfaces/ECPublicKey;)V

    return-object v7

    .line 173
    :cond_0
    :try_start_1
    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "invalid soter public key"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    .end local v5    # "realPublicKey":[B
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Ljava/security/ProviderException;

    .line 177
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to obtain "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " KeyFactory"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 176
    invoke-direct {v7, v8, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 180
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 181
    .local v2, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/security/ProviderException;

    const-string/jumbo v8, "Not in json format"

    invoke-direct {v7, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 178
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 179
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v7, Ljava/security/ProviderException;

    const-string/jumbo v8, "Invalid X.509 encoding of public key"

    invoke-direct {v7, v8, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 186
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    .restart local v3    # "keyFactory":Ljava/security/KeyFactory;
    .restart local v4    # "publicKey":Ljava/security/PublicKey;
    .restart local v5    # "realPublicKey":[B
    :cond_1
    const-string/jumbo v7, "RSA"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 187
    const-string/jumbo v7, "Soter"

    const-string/jumbo v8, "AndroidKeyStoreRSAPublicKey"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v4

    .line 188
    check-cast v6, Ljava/security/interfaces/RSAPublicKey;

    .line 195
    .local v6, "rsaPubKey":Ljava/security/interfaces/RSAPublicKey;
    new-instance v7, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;

    invoke-direct {v7, p0, v9, v6}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;-><init>(Ljava/lang/String;ILjava/security/interfaces/RSAPublicKey;)V

    return-object v7

    .line 197
    .end local v6    # "rsaPubKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_2
    new-instance v7, Ljava/security/ProviderException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unsupported Android Keystore public key algorithm: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static getJsonPublicKey(Ljava/lang/String;Ljava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .locals 13
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "keyAlgorithm"    # Ljava/lang/String;
    .param p2, "x509EncodedForm"    # [B

    .prologue
    const/4 v2, -0x1

    .line 258
    :try_start_0
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v9

    .line 259
    .local v9, "keyFactory":Ljava/security/KeyFactory;
    const-string/jumbo v0, "pub_key"

    invoke-static {p2, v0}, Landroid/security/keystore/SoterUtil;->getDataFromRaw([BLjava/lang/String;)[B

    move-result-object v11

    .line 260
    .local v11, "realPublicKey":[B
    if-eqz v11, :cond_0

    .line 261
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, v11}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v9, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 273
    .local v10, "publicKey":Ljava/security/PublicKey;
    const-string/jumbo v0, "EC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    const-string/jumbo v0, "Soter"

    const-string/jumbo v1, "AndroidKeyStoreECPublicKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v0, Landroid/security/keystore/AndroidKeyStoreECPublicKey;

    check-cast v10, Ljava/security/interfaces/ECPublicKey;

    .end local v10    # "publicKey":Ljava/security/PublicKey;
    invoke-direct {v0, p0, v2, v10}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;-><init>(Ljava/lang/String;ILjava/security/interfaces/ECPublicKey;)V

    return-object v0

    .line 263
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "invalid soter public key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 265
    .end local v9    # "keyFactory":Ljava/security/KeyFactory;
    .end local v11    # "realPublicKey":[B
    :catch_0
    move-exception v6

    .line 266
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v0, Ljava/security/ProviderException;

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to obtain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " KeyFactory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-direct {v0, v1, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 270
    .end local v6    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v8

    .line 271
    .local v8, "e":Lorg/json/JSONException;
    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "Not in json format"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    .end local v8    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v7

    .line 269
    .local v7, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "Invalid X.509 encoding of public key"

    invoke-direct {v0, v1, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 276
    .end local v7    # "e":Ljava/security/spec/InvalidKeySpecException;
    .restart local v9    # "keyFactory":Ljava/security/KeyFactory;
    .restart local v10    # "publicKey":Ljava/security/PublicKey;
    .restart local v11    # "realPublicKey":[B
    :cond_1
    const-string/jumbo v0, "RSA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    const-string/jumbo v0, "Soter"

    const-string/jumbo v1, "getJsonPublicKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v12, v10

    .line 278
    check-cast v12, Ljava/security/interfaces/RSAPublicKey;

    .line 285
    .local v12, "rsaPubKey":Ljava/security/interfaces/RSAPublicKey;
    new-instance v0, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;

    invoke-interface {v12}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v12}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v5

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;-><init>(Ljava/lang/String;I[BLjava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 287
    .end local v12    # "rsaPubKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_2
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported Android Keystore public key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static install()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 62
    const-string/jumbo v3, "type_soter_finger_pay"

    invoke-static {v3, v5}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v2

    .line 63
    .local v2, "type":I
    const/4 v1, 0x0

    .line 64
    .local v1, "soterKey":I
    const-string/jumbo v0, ""

    .line 65
    .local v0, "fpVendor":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_1

    .line 66
    const-string/jumbo v3, "persist.vendor.sys.pay.soter"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 67
    const-string/jumbo v3, "persist.vendor.sys.fp.vendor"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    const-string/jumbo v3, "Soter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SoterKeyStoreProvider install, type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 73
    const-string/jumbo v5, " key:"

    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 73
    const-string/jumbo v5, " fpVendor:"

    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    packed-switch v2, :pswitch_data_0

    .line 61
    :cond_0
    :goto_1
    return-void

    .line 69
    :cond_1
    const-string/jumbo v3, "persist.sys.pay.soter"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 70
    const-string/jumbo v3, "persist.sys.fp.vendor"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :pswitch_0
    const/4 v3, 0x1

    if-ne v3, v1, :cond_0

    .line 77
    new-instance v3, Landroid/security/keystore/SoterKeyStoreProvider;

    invoke-direct {v3}, Landroid/security/keystore/SoterKeyStoreProvider;-><init>()V

    invoke-static {v3}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    goto :goto_1

    .line 81
    :pswitch_1
    new-instance v3, Landroid/security/keystore/SoterKeyStoreProvider;

    invoke-direct {v3}, Landroid/security/keystore/SoterKeyStoreProvider;-><init>()V

    invoke-static {v3}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    goto :goto_1

    .line 84
    :pswitch_2
    const-string/jumbo v3, "none"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    new-instance v3, Landroid/security/keystore/SoterKeyStoreProvider;

    invoke-direct {v3}, Landroid/security/keystore/SoterKeyStoreProvider;-><init>()V

    invoke-static {v3}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    goto :goto_1

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 3
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {p0, p1}, Landroid/security/keystore/SoterKeyStoreProvider;->loadAndroidKeyStorePublicKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePublicKey;

    move-result-object v1

    .line 157
    .local v1, "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    invoke-static {v1}, Landroid/security/keystore/SoterKeyStoreProvider;->getAndroidKeyStorePrivateKey(Landroid/security/keystore/AndroidKeyStorePublicKey;)Landroid/security/keystore/AndroidKeyStorePrivateKey;

    move-result-object v0

    .line 158
    .local v0, "privateKey":Landroid/security/keystore/AndroidKeyStorePrivateKey;
    new-instance v2, Ljava/security/KeyPair;

    invoke-direct {v2, v1, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public static loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePrivateKey;
    .locals 2
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {p0, p1}, Landroid/security/keystore/SoterKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    .line 208
    .local v0, "keyPair":Ljava/security/KeyPair;
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    return-object v1
.end method

.method public static loadAndroidKeyStorePublicKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .locals 10
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 114
    new-instance v4, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v4}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 115
    .local v4, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual {p0, p1, v8, v8, v4}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    move-result v1

    .line 117
    .local v1, "errorCode":I
    if-eq v1, v9, :cond_0

    .line 119
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Failed to obtain information about private key"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    .line 119
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    .line 118
    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7

    .line 123
    :cond_0
    const/4 v7, 0x0

    .line 122
    invoke-virtual {p0, p1, v7, v8, v8}, Landroid/security/KeyStore;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;

    move-result-object v2

    .line 124
    .local v2, "exportResult":Landroid/security/keymaster/ExportResult;
    iget v7, v2, Landroid/security/keymaster/ExportResult;->resultCode:I

    if-eq v7, v9, :cond_1

    .line 126
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Failed to obtain X.509 form of public key"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    .line 126
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    .line 125
    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7

    .line 129
    :cond_1
    iget-object v6, v2, Landroid/security/keymaster/ExportResult;->exportData:[B

    .line 131
    .local v6, "x509EncodedPublicKey":[B
    const v7, 0x10000002

    invoke-virtual {v4, v7}, Landroid/security/keymaster/KeyCharacteristics;->getEnum(I)Ljava/lang/Integer;

    move-result-object v5

    .line 132
    .local v5, "keymasterAlgorithm":Ljava/lang/Integer;
    if-nez v5, :cond_2

    .line 133
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Key algorithm unknown"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 139
    :cond_2
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 138
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 146
    .local v3, "jcaKeyAlgorithm":Ljava/lang/String;
    invoke-static {p1, v3, v6}, Landroid/security/keystore/SoterKeyStoreProvider;->getAndroidKeyStorePublicKey(Ljava/lang/String;Ljava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;

    move-result-object v7

    return-object v7

    .line 140
    .end local v3    # "jcaKeyAlgorithm":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Failed to load private key"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    .line 141
    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7
.end method

.method public static loadJsonPublicKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .locals 10
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 215
    new-instance v4, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v4}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 216
    .local v4, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual {p0, p1, v8, v8, v4}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    move-result v1

    .line 218
    .local v1, "errorCode":I
    if-eq v1, v9, :cond_0

    .line 220
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Failed to obtain information about private key"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    .line 220
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    .line 219
    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7

    .line 224
    :cond_0
    const/4 v7, 0x0

    .line 223
    invoke-virtual {p0, p1, v7, v8, v8}, Landroid/security/KeyStore;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;

    move-result-object v2

    .line 225
    .local v2, "exportResult":Landroid/security/keymaster/ExportResult;
    iget v7, v2, Landroid/security/keymaster/ExportResult;->resultCode:I

    if-eq v7, v9, :cond_1

    .line 227
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Failed to obtain X.509 form of public key"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    .line 227
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    .line 226
    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7

    .line 230
    :cond_1
    iget-object v6, v2, Landroid/security/keymaster/ExportResult;->exportData:[B

    .line 232
    .local v6, "x509EncodedPublicKey":[B
    const v7, 0x10000002

    invoke-virtual {v4, v7}, Landroid/security/keymaster/KeyCharacteristics;->getEnum(I)Ljava/lang/Integer;

    move-result-object v5

    .line 233
    .local v5, "keymasterAlgorithm":Ljava/lang/Integer;
    if-nez v5, :cond_2

    .line 234
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Key algorithm unknown"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 240
    :cond_2
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 239
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 247
    .local v3, "jcaKeyAlgorithm":Ljava/lang/String;
    invoke-static {p1, v3, v6}, Landroid/security/keystore/SoterKeyStoreProvider;->getJsonPublicKey(Ljava/lang/String;Ljava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;

    move-result-object v7

    return-object v7

    .line 241
    .end local v3    # "jcaKeyAlgorithm":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Failed to load private key"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    .line 242
    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7
.end method

.method private putKeyFactoryImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreKeyFactorySpi"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method
