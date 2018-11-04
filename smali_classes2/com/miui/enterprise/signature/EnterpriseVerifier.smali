.class public Lcom/miui/enterprise/signature/EnterpriseVerifier;
.super Ljava/lang/Object;
.source "EnterpriseVerifier.java"


# static fields
.field private static final CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final ENTERPRISE_CER_ENTRY:Ljava/lang/String; = "entcert"

.field private static final ENTERPRISE_CER_FILE:Ljava/lang/String; = "META-INF/ENTERPRISE.CER"

.field private static final ENT_PUBLIC_KEY:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIDXzCCAkegAwIBAgIEMgLUEDANBgkqhkiG9w0BAQsFADBgMQswCQYDVQQGEwI4\nNjEPMA0GA1UECBMGQmVpSmluMQ8wDQYDVQQHEwZCZWlKaW4xDzANBgNVBAoTBlhp\nYW9NaTENMAsGA1UECxMETUlVSTEPMA0GA1UEAxMGWGlhb01pMB4XDTE4MDIwNTEw\nNTUwM1oXDTQ4MDEyOTEwNTUwM1owYDELMAkGA1UEBhMCODYxDzANBgNVBAgTBkJl\naUppbjEPMA0GA1UEBxMGQmVpSmluMQ8wDQYDVQQKEwZYaWFvTWkxDTALBgNVBAsT\nBE1JVUkxDzANBgNVBAMTBlhpYW9NaTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCC\nAQoCggEBALE5VJgm5U7lzuEdK69+PXmjw43IwkOPKcZH5ygySuf1X9NJq1YteOoo\nSAYP1sOIr3gg/FauQSlFxmM1VPCXE3uLvDC9ko/vJtpzgfqD/tM/mZQmlFVlWFNW\n9+64Ri/15tO5La1oXW2ccsp0thYmVNDEQtJw/HK5G26l2PSMdGxcgZUAv61dFhbq\n9aAm9ZtvVxUJdlw9xOBE+N+fTxnteM60cY9lPsOXdloHuSo93FF/WlS+7NfyO0h1\n3zWD54OkYsLNBnefynuay33fxFqEK/OqpAHkolIRhxhy256RzoS5tC8aWBdvqZTQ\n6GEmxg3/tkK6dM40L5pFsPV6eJeEnj8CAwEAAaMhMB8wHQYDVR0OBBYEFNNMGSE0\nbeZUEt2r7beFWvvvfBoSMA0GCSqGSIb3DQEBCwUAA4IBAQBfRf59v1HFwPtjzRGA\nYjoR4Z8QdQ8Gu7fJMlm3MOaBPiVh/rTp5/PtDAAUyDjUZFUOTngmAIDk768FDNkY\nfBTn0RCZVI96FsdcA9dhCeCadnr7I6kpHX1LeqXkkVsrviV8vnqXcBIk29qu/M0s\ncBZy1SBP3YlN5ZOQXipWCdU7hNt4QdAYfeOZ8/A/DHZUmZsbPP+gq3I1u8rV1e5q\nPmF46bmuOXe4eXmqBiWNmJyGDOpP0YiT4N57kJOM2aiNWNGXMod4/896rDXUoCuM\n5xIsDV64/DorjbF4dZta94Q6KnE6JRWFl/i4ol7218EVA3ScHLRISDruJanMpU5V\nF3nx\n-----END CERTIFICATE-----"

.field private static final HEX_DIGITS:[C

.field private static final MIUI_SIGNATURE:Ljava/lang/String; = "3082046c30820354a0030201020209008d64f55b5ca4ef25300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323733305a170d3339303432333033323733305a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100cfb201f02792657970678db7ae5476d6050534be0c0f308370f0b0f8f08ed8f62a39f804ac4e9dd6262759f2545abcc7aa04fa0226d0029bacab42a970806023bd740c73fad30c56b286037eb1663e79f6c4196ed04d41c92c125d130c29d801a1db681af2d89de2d46e7af218385580186eaf7b68d789574e826cc1762190d70aac565b94cf7812d7a90b7d045f3da952a9c585cf437ced4857675c859d3808a882fec9401dc6ce05140e94c918e381223aa69f7df2ded90767505cbfb1c0a8371e9886b56e85925fafccf312aeea6a892e55fda66957f0dd245e6541e188bd0388d880478557591f16a2e2fdf01b83c6d75298f2e27bf3eb0c12ab7ccac68b020103a381e83081e5301d0603551d0e041604142438de5c93ae19065adbdcb82033744bd89d25663081b50603551d230481ad3081aa80142438de5c93ae19065adbdcb82033744bd89d2566a18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d8209008d64f55b5ca4ef25300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100ccdf3afa17e8aa4abbf30cd193853ed324ba06a18af56b6aee1b2f96f16bf426406b851d76dc4b1d2f150590e6013fc64d7440f400b59af6b225ae6bd3409b0dec19331365077612e6298dd2323ae0bdb14c774df3e9cc3502841204f248d32971fc4d4b9fb98e830f95f71f5f4b31f94f33a4ac2b1ef5eeb1ecb78a71f5333a7f003c454f4bf4e633626ce330f48df62a9396324da15e676a29d8f563408b7822abf25d2d372f91e43f4dccb17ba8a248b475b71c936755efe1387e2d0511c13f85eed4d12bae3d004ae631c963f9fbf4fc1319f0ffa7de2af9f02f00dec902eb88be20e7ce3d9d3392f338adb8d79392318e057f3110c173af20d5ed1094d6"

.field private static final TAG:Ljava/lang/String; = "EnterpriseVerifier"

.field private static final TEMP_FILE:Ljava/lang/String; = "/data/system/ent_temp"

.field private static sBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/enterprise/signature/EnterpriseVerifier;->HEX_DIGITS:[C

    .line 257
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/miui/enterprise/signature/EnterpriseVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 40
    return-void

    .line 44
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static collectSignature(Ljava/util/jar/JarFile;)Ljava/lang/String;
    .locals 11
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 276
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 277
    .local v3, "i":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v5, "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 279
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    .line 280
    .local v1, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_0

    .line 281
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "entryName":Ljava/lang/String;
    const-string/jumbo v9, "META-INF/"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 283
    invoke-virtual {p0, v2}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    .end local v1    # "entry":Ljava/util/jar/JarEntry;
    .end local v2    # "entryName":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 286
    .local v0, "certificates":[Ljava/security/cert/Certificate;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v0    # "certificates":[Ljava/security/cert/Certificate;
    .local v7, "zipEntry$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 287
    .local v6, "zipEntry":Ljava/util/zip/ZipEntry;
    const/4 v4, 0x0

    .line 289
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, v6}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 290
    .local v4, "is":Ljava/io/InputStream;
    invoke-static {v4}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->readFullyIgnoringContents(Ljava/io/InputStream;)J

    .line 291
    if-nez v0, :cond_3

    .line 292
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 295
    :cond_3
    if-eqz v4, :cond_2

    .line 296
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 294
    .end local v4    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v8

    .line 295
    if-eqz v4, :cond_4

    .line 296
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 294
    :cond_4
    throw v8

    .line 300
    .end local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_5
    if-eqz v0, :cond_6

    array-length v9, v0

    if-nez v9, :cond_7

    :cond_6
    :goto_2
    return-object v8

    :cond_7
    aget-object v8, v0, v10

    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v8

    invoke-static {v8}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->toHexReadable([B)Ljava/lang/String;

    move-result-object v8

    goto :goto_2
.end method

.method private static deleteTempFileIfExist()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/data/system/ent_temp"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "certFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 251
    .local v1, "success":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 254
    .end local v1    # "success":Z
    :cond_0
    const-string/jumbo v2, "EnterpriseVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Delete temp file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method

.method private static getSignatureAlgorithm(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 223
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "keyType":Ljava/lang/String;
    const-string/jumbo v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const-string/jumbo v1, "SHA256withRSA"

    return-object v1

    .line 226
    :cond_0
    const-string/jumbo v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    const-string/jumbo v1, "SHA256withECDSA"

    return-object v1

    .line 229
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readFullyIgnoringContents(Ljava/io/InputStream;)J
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 260
    sget-object v3, Lcom/miui/enterprise/signature/EnterpriseVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 261
    .local v0, "buffer":[B
    if-nez v0, :cond_0

    .line 262
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 265
    :cond_0
    const/4 v2, 0x0

    .line 266
    .local v2, "n":I
    const/4 v1, 0x0

    .line 267
    .local v1, "count":I
    :goto_0
    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 268
    add-int/2addr v1, v2

    goto :goto_0

    .line 271
    :cond_1
    sget-object v3, Lcom/miui/enterprise/signature/EnterpriseVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 272
    int-to-long v4, v1

    return-wide v4
.end method

.method private static readPublicKey()Ljava/security/cert/X509Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 213
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v2, "-----BEGIN CERTIFICATE-----\nMIIDXzCCAkegAwIBAgIEMgLUEDANBgkqhkiG9w0BAQsFADBgMQswCQYDVQQGEwI4\nNjEPMA0GA1UECBMGQmVpSmluMQ8wDQYDVQQHEwZCZWlKaW4xDzANBgNVBAoTBlhp\nYW9NaTENMAsGA1UECxMETUlVSTEPMA0GA1UEAxMGWGlhb01pMB4XDTE4MDIwNTEw\nNTUwM1oXDTQ4MDEyOTEwNTUwM1owYDELMAkGA1UEBhMCODYxDzANBgNVBAgTBkJl\naUppbjEPMA0GA1UEBxMGQmVpSmluMQ8wDQYDVQQKEwZYaWFvTWkxDTALBgNVBAsT\nBE1JVUkxDzANBgNVBAMTBlhpYW9NaTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCC\nAQoCggEBALE5VJgm5U7lzuEdK69+PXmjw43IwkOPKcZH5ygySuf1X9NJq1YteOoo\nSAYP1sOIr3gg/FauQSlFxmM1VPCXE3uLvDC9ko/vJtpzgfqD/tM/mZQmlFVlWFNW\n9+64Ri/15tO5La1oXW2ccsp0thYmVNDEQtJw/HK5G26l2PSMdGxcgZUAv61dFhbq\n9aAm9ZtvVxUJdlw9xOBE+N+fTxnteM60cY9lPsOXdloHuSo93FF/WlS+7NfyO0h1\n3zWD54OkYsLNBnefynuay33fxFqEK/OqpAHkolIRhxhy256RzoS5tC8aWBdvqZTQ\n6GEmxg3/tkK6dM40L5pFsPV6eJeEnj8CAwEAAaMhMB8wHQYDVR0OBBYEFNNMGSE0\nbeZUEt2r7beFWvvvfBoSMA0GCSqGSIb3DQEBCwUAA4IBAQBfRf59v1HFwPtjzRGA\nYjoR4Z8QdQ8Gu7fJMlm3MOaBPiVh/rTp5/PtDAAUyDjUZFUOTngmAIDk768FDNkY\nfBTn0RCZVI96FsdcA9dhCeCadnr7I6kpHX1LeqXkkVsrviV8vnqXcBIk29qu/M0s\ncBZy1SBP3YlN5ZOQXipWCdU7hNt4QdAYfeOZ8/A/DHZUmZsbPP+gq3I1u8rV1e5q\nPmF46bmuOXe4eXmqBiWNmJyGDOpP0YiT4N57kJOM2aiNWNGXMod4/896rDXUoCuM\n5xIsDV64/DorjbF4dZta94Q6KnE6JRWFl/i4ol7218EVA3ScHLRISDruJanMpU5V\nF3nx\n-----END CERTIFICATE-----"

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 215
    .local v1, "input":Ljava/io/ByteArrayInputStream;
    :try_start_0
    const-string/jumbo v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 216
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 216
    return-object v2

    .line 217
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    :catchall_0
    move-exception v2

    .line 218
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 217
    throw v2
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 304
    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 305
    .local v0, "mDigest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 306
    .local v1, "result":[B
    invoke-static {v1}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->toHexReadable([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static toHexReadable([B)Ljava/lang/String;
    .locals 9
    .param p0, "bytes"    # [B

    .prologue
    const/4 v5, 0x0

    .line 316
    if-nez p0, :cond_0

    .line 317
    const-string/jumbo v5, ""

    return-object v5

    .line 319
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v4, "sb":Ljava/lang/StringBuilder;
    array-length v6, p0

    :goto_0
    if-ge v5, v6, :cond_2

    aget-byte v0, p0, v5

    .line 322
    .local v0, "b":B
    move v3, v0

    .line 323
    .local v3, "n":I
    if-gez v3, :cond_1

    .line 324
    add-int/lit16 v3, v3, 0x100

    .line 327
    :cond_1
    shr-int/lit8 v1, v3, 0x4

    .line 328
    .local v1, "index1":I
    and-int/lit8 v2, v3, 0xf

    .line 329
    .local v2, "index2":I
    sget-object v7, Lcom/miui/enterprise/signature/EnterpriseVerifier;->HEX_DIGITS:[C

    aget-char v7, v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/miui/enterprise/signature/EnterpriseVerifier;->HEX_DIGITS:[C

    aget-char v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 331
    .end local v0    # "b":B
    .end local v1    # "index1":I
    .end local v2    # "index2":I
    .end local v3    # "n":I
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static verify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v9, 0x0

    .line 78
    .local v9, "inputJar":Ljava/util/jar/JarFile;
    const/4 v3, 0x0

    .line 80
    .local v3, "certJar":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v10, Ljava/util/jar/JarFile;

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v9    # "inputJar":Ljava/util/jar/JarFile;
    .local v10, "inputJar":Ljava/util/jar/JarFile;
    :try_start_1
    const-string/jumbo v17, "META-INF/ENTERPRISE.CER"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v17

    if-nez v17, :cond_1

    .line 83
    const-string/jumbo v17, "EnterpriseVerifier"

    const-string/jumbo v18, "Verify failed, no enterprise cert found"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    const/16 v17, 0x0

    .line 145
    if-eqz v10, :cond_0

    .line 146
    :try_start_2
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V

    .line 151
    :cond_0
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 84
    :goto_0
    return v17

    .line 152
    :catch_0
    move-exception v6

    .line 153
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_3
    const-string/jumbo v17, "META-INF/ENTERPRISE.CER"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v17

    const-string/jumbo v18, "/data/system/ent_temp"

    invoke-static/range {v17 .. v18}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->writeFile(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 87
    new-instance v4, Ljava/util/jar/JarFile;

    const-string/jumbo v17, "/data/system/ent_temp"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    .end local v3    # "certJar":Ljava/util/jar/JarFile;
    .local v4, "certJar":Ljava/util/jar/JarFile;
    :try_start_4
    invoke-static {v4}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->collectSignature(Ljava/util/jar/JarFile;)Ljava/lang/String;

    move-result-object v13

    .line 89
    .local v13, "sign":Ljava/lang/String;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_5

    .line 90
    :cond_2
    const-string/jumbo v17, "EnterpriseVerifier"

    const-string/jumbo v18, "Verify failed, failed to load enterprise cert signature"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 91
    const/16 v17, 0x0

    .line 145
    if-eqz v10, :cond_3

    .line 146
    :try_start_5
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V

    .line 148
    :cond_3
    if-eqz v4, :cond_4

    .line 149
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    .line 151
    :cond_4
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 91
    :goto_1
    return v17

    .line 152
    :catch_1
    move-exception v6

    .line 153
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 93
    .end local v6    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_6
    const-string/jumbo v17, "3082046c30820354a0030201020209008d64f55b5ca4ef25300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323733305a170d3339303432333033323733305a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100cfb201f02792657970678db7ae5476d6050534be0c0f308370f0b0f8f08ed8f62a39f804ac4e9dd6262759f2545abcc7aa04fa0226d0029bacab42a970806023bd740c73fad30c56b286037eb1663e79f6c4196ed04d41c92c125d130c29d801a1db681af2d89de2d46e7af218385580186eaf7b68d789574e826cc1762190d70aac565b94cf7812d7a90b7d045f3da952a9c585cf437ced4857675c859d3808a882fec9401dc6ce05140e94c918e381223aa69f7df2ded90767505cbfb1c0a8371e9886b56e85925fafccf312aeea6a892e55fda66957f0dd245e6541e188bd0388d880478557591f16a2e2fdf01b83c6d75298f2e27bf3eb0c12ab7ccac68b020103a381e83081e5301d0603551d0e041604142438de5c93ae19065adbdcb82033744bd89d25663081b50603551d230481ad3081aa80142438de5c93ae19065adbdcb82033744bd89d2566a18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d8209008d64f55b5ca4ef25300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100ccdf3afa17e8aa4abbf30cd193853ed324ba06a18af56b6aee1b2f96f16bf426406b851d76dc4b1d2f150590e6013fc64d7440f400b59af6b225ae6bd3409b0dec19331365077612e6298dd2323ae0bdb14c774df3e9cc3502841204f248d32971fc4d4b9fb98e830f95f71f5f4b31f94f33a4ac2b1ef5eeb1ecb78a71f5333a7f003c454f4bf4e633626ce330f48df62a9396324da15e676a29d8f563408b7822abf25d2d372f91e43f4dccb17ba8a248b475b71c936755efe1387e2d0511c13f85eed4d12bae3d004ae631c963f9fbf4fc1319f0ffa7de2af9f02f00dec902eb88be20e7ce3d9d3392f338adb8d79392318e057f3110c173af20d5ed1094d6"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 94
    const-string/jumbo v17, "EnterpriseVerifier"

    const-string/jumbo v18, "Verify failed, miss match signature"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 95
    const/16 v17, 0x0

    .line 145
    if-eqz v10, :cond_6

    .line 146
    :try_start_7
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V

    .line 148
    :cond_6
    if-eqz v4, :cond_7

    .line 149
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    .line 151
    :cond_7
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 95
    :goto_2
    return v17

    .line 152
    :catch_2
    move-exception v6

    .line 153
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 98
    .end local v6    # "e":Ljava/io/IOException;
    :cond_8
    :try_start_8
    new-instance v8, Lcom/miui/enterprise/signature/EnterpriseCer;

    const-string/jumbo v17, "entcert"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lcom/miui/enterprise/signature/EnterpriseCer;-><init>(Ljava/io/InputStream;)V

    .line 99
    .local v8, "enterpriseCer":Lcom/miui/enterprise/signature/EnterpriseCer;
    iget-object v0, v8, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v15

    .line 100
    .local v15, "signedBytes":[B
    invoke-virtual {v8}, Lcom/miui/enterprise/signature/EnterpriseCer;->getUnSignedRaw()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "UTF-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    .line 101
    .local v16, "unSignedRaw":[B
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->readPublicKey()Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 102
    .local v5, "certificate":Ljava/security/cert/X509Certificate;
    invoke-static {v5}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->getSignatureAlgorithm(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v14

    .line 103
    .local v14, "signature":Ljava/security/Signature;
    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 104
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/security/Signature;->update([B)V

    .line 105
    invoke-virtual {v14, v15}, Ljava/security/Signature;->verify([B)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 106
    const-string/jumbo v17, "EnterpriseVerifier"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Verify signature success for package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {v8}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->verifyDate(Lcom/miui/enterprise/signature/EnterpriseCer;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 108
    const-string/jumbo v17, "EnterpriseVerifier"

    const-string/jumbo v18, "Verify failed,  cert out of date"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 109
    const/16 v17, 0x0

    .line 145
    if-eqz v10, :cond_9

    .line 146
    :try_start_9
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V

    .line 148
    :cond_9
    if-eqz v4, :cond_a

    .line 149
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    .line 151
    :cond_a
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 109
    :goto_3
    return v17

    .line 152
    :catch_3
    move-exception v6

    .line 153
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 111
    .end local v6    # "e":Ljava/io/IOException;
    :cond_b
    :try_start_a
    invoke-static {v10, v8}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->verifyApk(Ljava/util/jar/JarFile;Lcom/miui/enterprise/signature/EnterpriseCer;)Z

    move-result v17

    if-nez v17, :cond_e

    .line 112
    const-string/jumbo v17, "EnterpriseVerifier"

    const-string/jumbo v18, "Verify failed, miss match apk/device"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/security/GeneralSecurityException; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 113
    const/16 v17, 0x0

    .line 145
    if-eqz v10, :cond_c

    .line 146
    :try_start_b
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V

    .line 148
    :cond_c
    if-eqz v4, :cond_d

    .line 149
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    .line 151
    :cond_d
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 113
    :goto_4
    return v17

    .line 152
    :catch_4
    move-exception v6

    .line 153
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 115
    .end local v6    # "e":Ljava/io/IOException;
    :cond_e
    :try_start_c
    const-string/jumbo v17, "enterprise_licence"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 116
    .local v12, "oldLicence":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 117
    const-string/jumbo v17, "enterprise_agency"

    iget-object v0, v8, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v17, "enterprise_licence"

    iget-object v0, v8, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string/jumbo v17, "enterprise_package"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_f
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v17, "com.miui.enterprise.ACTION_CERT_UPDATE"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v11, "intent":Landroid/content/Intent;
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x1a

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_10

    .line 126
    const/high16 v17, 0x1000000

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 128
    :cond_10
    const-string/jumbo v17, "extra_ent_cert"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    sget-object v17, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string/jumbo v18, "com.miui.enterprise.permission.ACTIVE_ENTERPRISE_MODE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 130
    new-instance v17, Ljava/io/BufferedInputStream;

    new-instance v18, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v8}, Lcom/miui/enterprise/signature/EnterpriseCer;->toString()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "UTF-8"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct/range {v17 .. v18}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 131
    const-string/jumbo v18, "/data/system/entcert"

    .line 130
    invoke-static/range {v17 .. v18}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->writeFile(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v17, "EnterpriseVerifier"

    const-string/jumbo v18, "persist cert file"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catch Ljava/security/GeneralSecurityException; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 133
    const/16 v17, 0x1

    .line 145
    if-eqz v10, :cond_11

    .line 146
    :try_start_d
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V

    .line 148
    :cond_11
    if-eqz v4, :cond_12

    .line 149
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    .line 151
    :cond_12
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 133
    :goto_5
    return v17

    .line 120
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_13
    :try_start_e
    iget-object v0, v8, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_f

    .line 121
    const-string/jumbo v17, "EnterpriseVerifier"

    const-string/jumbo v18, "Verify failed, miss match licence code"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c
    .catch Ljava/security/GeneralSecurityException; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 122
    const/16 v17, 0x0

    .line 145
    if-eqz v10, :cond_14

    .line 146
    :try_start_f
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V

    .line 148
    :cond_14
    if-eqz v4, :cond_15

    .line 149
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    .line 151
    :cond_15
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 122
    :goto_6
    return v17

    .line 152
    :catch_5
    move-exception v6

    .line 153
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 152
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v11    # "intent":Landroid/content/Intent;
    :catch_6
    move-exception v6

    .line 153
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 135
    .end local v6    # "e":Ljava/io/IOException;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "oldLicence":Ljava/lang/String;
    :cond_16
    :try_start_10
    const-string/jumbo v17, "EnterpriseVerifier"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Verify signature failed for package: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string/jumbo v17, "EnterpriseVerifier"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Cert: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Lcom/miui/enterprise/signature/EnterpriseCer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/security/GeneralSecurityException; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 137
    const/16 v17, 0x0

    .line 145
    if-eqz v10, :cond_17

    .line 146
    :try_start_11
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V

    .line 148
    :cond_17
    if-eqz v4, :cond_18

    .line 149
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    .line 151
    :cond_18
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    .line 137
    :goto_7
    return v17

    .line 152
    :catch_7
    move-exception v6

    .line 153
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 140
    .end local v4    # "certJar":Ljava/util/jar/JarFile;
    .end local v5    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "enterpriseCer":Lcom/miui/enterprise/signature/EnterpriseCer;
    .end local v10    # "inputJar":Ljava/util/jar/JarFile;
    .end local v13    # "sign":Ljava/lang/String;
    .end local v14    # "signature":Ljava/security/Signature;
    .end local v15    # "signedBytes":[B
    .end local v16    # "unSignedRaw":[B
    .restart local v3    # "certJar":Ljava/util/jar/JarFile;
    .restart local v9    # "inputJar":Ljava/util/jar/JarFile;
    :catch_8
    move-exception v7

    .line 141
    .end local v3    # "certJar":Ljava/util/jar/JarFile;
    .end local v9    # "inputJar":Ljava/util/jar/JarFile;
    .local v7, "e":Ljava/lang/Exception;
    :goto_8
    :try_start_12
    const-string/jumbo v17, "EnterpriseVerifier"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Verify failed"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 142
    const/16 v17, 0x0

    .line 145
    if-eqz v9, :cond_19

    .line 146
    :try_start_13
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    .line 148
    :cond_19
    if-eqz v3, :cond_1a

    .line 149
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 151
    :cond_1a
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    .line 142
    :goto_9
    return v17

    .line 152
    :catch_9
    move-exception v6

    .line 153
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 143
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    .line 145
    :goto_a
    if-eqz v9, :cond_1b

    .line 146
    :try_start_14
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    .line 148
    :cond_1b
    if-eqz v3, :cond_1c

    .line 149
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 151
    :cond_1c
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    .line 143
    :goto_b
    throw v17

    .line 152
    :catch_a
    move-exception v6

    .line 153
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    .line 143
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "certJar":Ljava/util/jar/JarFile;
    .restart local v10    # "inputJar":Ljava/util/jar/JarFile;
    :catchall_1
    move-exception v17

    move-object v9, v10

    .end local v10    # "inputJar":Ljava/util/jar/JarFile;
    .local v9, "inputJar":Ljava/util/jar/JarFile;
    goto :goto_a

    .end local v3    # "certJar":Ljava/util/jar/JarFile;
    .end local v9    # "inputJar":Ljava/util/jar/JarFile;
    .restart local v4    # "certJar":Ljava/util/jar/JarFile;
    .restart local v10    # "inputJar":Ljava/util/jar/JarFile;
    :catchall_2
    move-exception v17

    move-object v3, v4

    .end local v4    # "certJar":Ljava/util/jar/JarFile;
    .local v3, "certJar":Ljava/util/jar/JarFile;
    move-object v9, v10

    .end local v10    # "inputJar":Ljava/util/jar/JarFile;
    .restart local v9    # "inputJar":Ljava/util/jar/JarFile;
    goto :goto_a

    .line 140
    .end local v9    # "inputJar":Ljava/util/jar/JarFile;
    .local v3, "certJar":Ljava/util/jar/JarFile;
    .restart local v10    # "inputJar":Ljava/util/jar/JarFile;
    :catch_b
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    move-object v9, v10

    .end local v10    # "inputJar":Ljava/util/jar/JarFile;
    .restart local v9    # "inputJar":Ljava/util/jar/JarFile;
    goto :goto_8

    .end local v3    # "certJar":Ljava/util/jar/JarFile;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "inputJar":Ljava/util/jar/JarFile;
    .restart local v4    # "certJar":Ljava/util/jar/JarFile;
    .restart local v10    # "inputJar":Ljava/util/jar/JarFile;
    :catch_c
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "certJar":Ljava/util/jar/JarFile;
    .local v3, "certJar":Ljava/util/jar/JarFile;
    move-object v9, v10

    .end local v10    # "inputJar":Ljava/util/jar/JarFile;
    .restart local v9    # "inputJar":Ljava/util/jar/JarFile;
    goto :goto_8
.end method

.method private static verifyApk(Ljava/util/jar/JarFile;Lcom/miui/enterprise/signature/EnterpriseCer;)Z
    .locals 9
    .param p0, "jar"    # Ljava/util/jar/JarFile;
    .param p1, "cert"    # Lcom/miui/enterprise/signature/EnterpriseCer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 188
    iget-object v6, p1, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    array-length v6, v6

    if-eqz v6, :cond_3

    .line 189
    invoke-static {}, Lmiui/telephony/TelephonyManagerUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "myDeviceId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 191
    .local v1, "match":Z
    iget-object v6, p1, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v0, v6, v5

    .line 192
    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 193
    const/4 v1, 0x1

    .line 197
    .end local v0    # "deviceId":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 198
    const-string/jumbo v5, "EnterpriseVerifier"

    const-string/jumbo v6, "Verify failed, device not authorized"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    return v1

    .line 191
    .restart local v0    # "deviceId":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v1    # "match":Z
    .end local v4    # "myDeviceId":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "META-INF/MANIFEST.MF"

    invoke-virtual {p0, v5}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 203
    .local v3, "mfInput":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v2, v5, [B

    .line 204
    .local v2, "mfBytes":[B
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 205
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Failed to read META-INF/MANIFEST.MF"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 207
    :cond_4
    iget-object v5, p1, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->sha256([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    return v5
.end method

.method private static verifyDate(Lcom/miui/enterprise/signature/EnterpriseCer;)Z
    .locals 2
    .param p0, "cert"    # Lcom/miui/enterprise/signature/EnterpriseCer;

    .prologue
    .line 183
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 184
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/miui/enterprise/signature/EnterpriseCer;->getValidFrom()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/enterprise/signature/EnterpriseCer;->getValidTo()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static verifyPlatformSign(Ljava/lang/String;)Z
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, "certJar":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    const/4 v5, 0x1

    invoke-direct {v1, p0, v5}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .end local v0    # "certJar":Ljava/util/jar/JarFile;
    .local v1, "certJar":Ljava/util/jar/JarFile;
    :try_start_1
    invoke-static {v1}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->collectSignature(Ljava/util/jar/JarFile;)Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "sign":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 164
    :cond_0
    const-string/jumbo v5, "EnterpriseVerifier"

    const-string/jumbo v6, "Verify failed, failed to load enterprise cert signature"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    if-eqz v1, :cond_1

    .line 174
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 165
    :cond_1
    :goto_0
    return v7

    .line 176
    :catch_0
    move-exception v2

    .line 177
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v5, "EnterpriseVerifier"

    const-string/jumbo v6, "Failed to close jar"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_3
    const-string/jumbo v5, "3082046c30820354a0030201020209008d64f55b5ca4ef25300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323733305a170d3339303432333033323733305a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100cfb201f02792657970678db7ae5476d6050534be0c0f308370f0b0f8f08ed8f62a39f804ac4e9dd6262759f2545abcc7aa04fa0226d0029bacab42a970806023bd740c73fad30c56b286037eb1663e79f6c4196ed04d41c92c125d130c29d801a1db681af2d89de2d46e7af218385580186eaf7b68d789574e826cc1762190d70aac565b94cf7812d7a90b7d045f3da952a9c585cf437ced4857675c859d3808a882fec9401dc6ce05140e94c918e381223aa69f7df2ded90767505cbfb1c0a8371e9886b56e85925fafccf312aeea6a892e55fda66957f0dd245e6541e188bd0388d880478557591f16a2e2fdf01b83c6d75298f2e27bf3eb0c12ab7ccac68b020103a381e83081e5301d0603551d0e041604142438de5c93ae19065adbdcb82033744bd89d25663081b50603551d230481ad3081aa80142438de5c93ae19065adbdcb82033744bd89d2566a18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d8209008d64f55b5ca4ef25300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100ccdf3afa17e8aa4abbf30cd193853ed324ba06a18af56b6aee1b2f96f16bf426406b851d76dc4b1d2f150590e6013fc64d7440f400b59af6b225ae6bd3409b0dec19331365077612e6298dd2323ae0bdb14c774df3e9cc3502841204f248d32971fc4d4b9fb98e830f95f71f5f4b31f94f33a4ac2b1ef5eeb1ecb78a71f5333a7f003c454f4bf4e633626ce330f48df62a9396324da15e676a29d8f563408b7822abf25d2d372f91e43f4dccb17ba8a248b475b71c936755efe1387e2d0511c13f85eed4d12bae3d004ae631c963f9fbf4fc1319f0ffa7de2af9f02f00dec902eb88be20e7ce3d9d3392f338adb8d79392318e057f3110c173af20d5ed1094d6"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    .line 173
    if-eqz v1, :cond_3

    .line 174
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 167
    :cond_3
    :goto_1
    return v5

    .line 176
    :catch_1
    move-exception v2

    .line 177
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "EnterpriseVerifier"

    const-string/jumbo v7, "Failed to close jar"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 168
    .end local v1    # "certJar":Ljava/util/jar/JarFile;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "sign":Ljava/lang/String;
    .restart local v0    # "certJar":Ljava/util/jar/JarFile;
    :catch_2
    move-exception v3

    .line 169
    .end local v0    # "certJar":Ljava/util/jar/JarFile;
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string/jumbo v5, "EnterpriseVerifier"

    const-string/jumbo v6, "Verify failed"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 173
    if-eqz v0, :cond_4

    .line 174
    :try_start_6
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 170
    :cond_4
    :goto_3
    return v7

    .line 176
    :catch_3
    move-exception v2

    .line 177
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "EnterpriseVerifier"

    const-string/jumbo v6, "Failed to close jar"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 171
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 173
    :goto_4
    if-eqz v0, :cond_5

    .line 174
    :try_start_7
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 171
    :cond_5
    :goto_5
    throw v5

    .line 176
    :catch_4
    move-exception v2

    .line 177
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "EnterpriseVerifier"

    const-string/jumbo v7, "Failed to close jar"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 171
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "certJar":Ljava/util/jar/JarFile;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "certJar":Ljava/util/jar/JarFile;
    .local v0, "certJar":Ljava/util/jar/JarFile;
    goto :goto_4

    .line 168
    .end local v0    # "certJar":Ljava/util/jar/JarFile;
    .restart local v1    # "certJar":Ljava/util/jar/JarFile;
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "certJar":Ljava/util/jar/JarFile;
    .restart local v0    # "certJar":Ljava/util/jar/JarFile;
    goto :goto_2
.end method

.method private static writeFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 238
    :cond_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 239
    .local v3, "os":Ljava/io/OutputStream;
    const/16 v4, 0x2000

    new-array v0, v4, [B

    .line 241
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 242
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 236
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    .end local v3    # "os":Ljava/io/OutputStream;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Filed to create temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 244
    .restart local v0    # "buffer":[B
    .restart local v2    # "len":I
    .restart local v3    # "os":Ljava/io/OutputStream;
    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 245
    invoke-virtual {v3}, Ljava/io/FilterOutputStream;->close()V

    .line 233
    return-void
.end method
