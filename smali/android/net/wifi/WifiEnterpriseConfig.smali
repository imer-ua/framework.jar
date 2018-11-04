.class public Landroid/net/wifi/WifiEnterpriseConfig;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiEnterpriseConfig$1;,
        Landroid/net/wifi/WifiEnterpriseConfig$Eap;,
        Landroid/net/wifi/WifiEnterpriseConfig$Phase2;,
        Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;,
        Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;
    }
.end annotation


# static fields
.field public static final ALTSUBJECT_MATCH_KEY:Ljava/lang/String; = "altsubject_match"

.field public static final ANON_IDENTITY_KEY:Ljava/lang/String; = "anonymous_identity"

.field public static final CA_CERT_ALIAS_DELIMITER:Ljava/lang/String; = " "

.field public static final CA_CERT_KEY:Ljava/lang/String; = "ca_cert"

.field public static final CA_CERT_PREFIX:Ljava/lang/String; = "keystore://CACERT_"

.field public static final CA_PATH_KEY:Ljava/lang/String; = "ca_path"

.field public static final CLIENT_CERT_KEY:Ljava/lang/String; = "client_cert"

.field public static final CLIENT_CERT_PREFIX:Ljava/lang/String; = "keystore://USRCERT_"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiEnterpriseConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOM_SUFFIX_MATCH_KEY:Ljava/lang/String; = "domain_suffix_match"

.field public static final EAP_KEY:Ljava/lang/String; = "eap"

.field public static final EMPTY_VALUE:Ljava/lang/String; = "NULL"

.field public static final ENGINE_DISABLE:Ljava/lang/String; = "0"

.field public static final ENGINE_ENABLE:Ljava/lang/String; = "1"

.field public static final ENGINE_ID_KEY:Ljava/lang/String; = "engine_id"

.field public static final ENGINE_ID_KEYSTORE:Ljava/lang/String; = "keystore"

.field public static final ENGINE_KEY:Ljava/lang/String; = "engine"

.field public static final IDENTITY_KEY:Ljava/lang/String; = "identity"

.field public static final KEYSTORES_URI:Ljava/lang/String; = "keystores://"

.field public static final KEYSTORE_URI:Ljava/lang/String; = "keystore://"

.field public static final OPP_KEY_CACHING:Ljava/lang/String; = "proactive_key_caching"

.field public static final PASSWORD_KEY:Ljava/lang/String; = "password"

.field public static final PHASE2_KEY:Ljava/lang/String; = "phase2"

.field public static final PLMN_KEY:Ljava/lang/String; = "plmn"

.field public static final PRIVATE_KEY_ID_KEY:Ljava/lang/String; = "key_id"

.field public static final REALM_KEY:Ljava/lang/String; = "realm"

.field public static final SUBJECT_MATCH_KEY:Ljava/lang/String; = "subject_match"

.field private static final SUPPLICANT_CONFIG_KEYS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WifiEnterpriseConfig"


# instance fields
.field private mCaCerts:[Ljava/security/cert/X509Certificate;

.field private mClientCertificate:Ljava/security/cert/X509Certificate;

.field private mClientPrivateKey:Ljava/security/PrivateKey;

.field private mEapMethod:I

.field private mFields:Ljava/util/HashMap;
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

.field private mPhase2Method:I


# direct methods
.method static synthetic -get0(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/wifi/WifiEnterpriseConfig;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method static synthetic -set1(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method static synthetic -set2(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/PrivateKey;)Ljava/security/PrivateKey;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    return-object p1
.end method

.method static synthetic -set3(Landroid/net/wifi/WifiEnterpriseConfig;I)I
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    return p1
.end method

.method static synthetic -set4(Landroid/net/wifi/WifiEnterpriseConfig;I)I
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 121
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 122
    const-string/jumbo v1, "identity"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 123
    const-string/jumbo v1, "anonymous_identity"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 124
    const-string/jumbo v1, "password"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 125
    const-string/jumbo v1, "client_cert"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 126
    const-string/jumbo v1, "ca_cert"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 127
    const-string/jumbo v1, "subject_match"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 128
    const-string/jumbo v1, "engine"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 129
    const-string/jumbo v1, "engine_id"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 130
    const-string/jumbo v1, "key_id"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 131
    const-string/jumbo v1, "altsubject_match"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 132
    const-string/jumbo v1, "domain_suffix_match"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 133
    const-string/jumbo v1, "ca_path"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 121
    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->SUPPLICANT_CONFIG_KEYS:[Ljava/lang/String;

    .line 218
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig$1;-><init>()V

    .line 217
    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 4
    .param p1, "source"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    .line 140
    const/4 v2, -0x1

    iput v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 141
    const/4 v2, 0x0

    iput v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 155
    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 158
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    iget v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    iput v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 159
    iget v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    iput v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 154
    return-void
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    .line 591
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    new-array v0, v4, [B

    .line 592
    .local v0, "data":[B
    const/4 v2, 0x0

    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "position":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 593
    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 592
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 596
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 597
    :catch_0
    move-exception v1

    .line 598
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 599
    return-object p0
.end method

.method public static encodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 578
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 579
    .local v0, "bytes":[B
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 580
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v5, v0

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-byte v1, v0, v3

    .line 581
    .local v1, "o":B
    const-string/jumbo v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    and-int/lit16 v8, v1, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 583
    .end local v1    # "o":B
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "arr"    # [Ljava/lang/String;
    .param p2, "toBeFound"    # Ljava/lang/String;
    .param p3, "defaultIndex"    # I

    .prologue
    .line 1008
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return p3

    .line 1009
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1010
    aget-object v1, p1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 1009
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1012
    :cond_2
    return p3
.end method

.method private isEapMethodValid()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1090
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1091
    const-string/jumbo v0, "WifiEnterpriseConfig"

    const-string/jumbo v1, "WiFi enterprise configuration is invalid as it supplies no EAP method."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    return v3

    .line 1094
    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 1095
    :cond_1
    const-string/jumbo v0, "WifiEnterpriseConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEapMethod is invald for WiFi enterprise configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    return v3

    .line 1098
    :cond_2
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-ltz v0, :cond_3

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 1099
    :cond_3
    const-string/jumbo v0, "WifiEnterpriseConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPhase2Method is invald for WiFi enterprise configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1100
    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 1099
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    return v3

    .line 1103
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 987
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    return-object v1

    .line 988
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 989
    .local v0, "length":I
    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 990
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 991
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 993
    :cond_1
    return-object p1
.end method

.method private writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v3, 0x0

    .line 204
    if-eqz p2, :cond_0

    .line 206
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .line 207
    .local v0, "certBytes":[B
    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v0    # "certBytes":[B
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 213
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method private writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "cert"    # [Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 193
    if-eqz p2, :cond_0

    array-length v1, p2

    if-eqz v1, :cond_0

    .line 194
    array-length v1, p2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 196
    aget-object v1, p2, v0

    invoke-direct {p0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public getAltSubjectMatch()Ljava/lang/String;
    .locals 2

    .prologue
    .line 907
    const-string/jumbo v0, "altsubject_match"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAnonymousIdentity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 552
    const-string/jumbo v0, "anonymous_identity"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaCertificate()Ljava/security/cert/X509Certificate;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 709
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 710
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    aget-object v0, v0, v1

    return-object v0

    .line 712
    :cond_0
    return-object v2
.end method

.method public getCaCertificateAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 651
    const-string/jumbo v0, "ca_cert"

    const-string/jumbo v1, "keystore://CACERT_"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaCertificateAliases()[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 660
    const-string/jumbo v5, "ca_cert"

    const-string/jumbo v6, ""

    invoke-virtual {p0, v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "value":Ljava/lang/String;
    const-string/jumbo v5, "keystore://CACERT_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 663
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "ca_cert"

    const-string/jumbo v6, "keystore://CACERT_"

    invoke-virtual {p0, v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    return-object v4

    .line 664
    :cond_0
    const-string/jumbo v5, "keystores://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 665
    const-string/jumbo v5, "keystores://"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 667
    .local v3, "values":Ljava/lang/String;
    const-string/jumbo v5, " "

    invoke-static {v3, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, "aliases":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 669
    aget-object v5, v0, v1

    invoke-static {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->decodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 670
    aget-object v5, v0, v1

    const-string/jumbo v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 671
    aget-object v5, v0, v1

    const-string/jumbo v6, "CACERT_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 668
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 674
    :cond_2
    array-length v5, v0

    if-eqz v5, :cond_3

    .end local v0    # "aliases":[Ljava/lang/String;
    :goto_1
    return-object v0

    .restart local v0    # "aliases":[Ljava/lang/String;
    :cond_3
    move-object v0, v4

    goto :goto_1

    .line 676
    .end local v0    # "aliases":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "values":Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_2
    return-object v4

    :cond_5
    new-array v4, v8, [Ljava/lang/String;

    aput-object v2, v4, v7

    goto :goto_2
.end method

.method public getCaCertificates()[Ljava/security/cert/X509Certificate;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 749
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 750
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    return-object v0

    .line 752
    :cond_0
    return-object v1
.end method

.method public getCaPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 787
    const-string/jumbo v0, "ca_path"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getClientCertificateAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 817
    const-string/jumbo v0, "client_cert"

    const-string/jumbo v1, "keystore://USRCERT_"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getDomainSuffixMatch()Ljava/lang/String;
    .locals 2

    .prologue
    .line 937
    const-string/jumbo v0, "domain_suffix_match"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEapMethod()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    return v0
.end method

.method public getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1025
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1027
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "NULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, ""

    return-object v1

    .line 1029
    :cond_1
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1030
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1031
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1033
    :cond_2
    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 535
    const-string/jumbo v0, "identity"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;
    .locals 3
    .param p1, "current"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    const/4 v2, 0x0

    .line 977
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 978
    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "NULL"

    goto :goto_0

    .line 980
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isEapMethodValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 981
    const-string/jumbo v0, "NULL"

    return-object v0

    .line 983
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 570
    const-string/jumbo v0, "password"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhase2Method()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    return v0
.end method

.method public getPlmn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 971
    const-string/jumbo v0, "plmn"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 954
    const-string/jumbo v0, "realm"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectMatch()Ljava/lang/String;
    .locals 2

    .prologue
    .line 889
    const-string/jumbo v0, "subject_match"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadFromSupplicant(Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;)V
    .locals 11
    .param p1, "loader"    # Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;

    .prologue
    const/4 v6, 0x0

    .line 428
    sget-object v7, Landroid/net/wifi/WifiEnterpriseConfig;->SUPPLICANT_CONFIG_KEYS:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_1

    aget-object v2, v7, v5

    .line 429
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p1, v2}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;->loadValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, "value":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 431
    iget-object v9, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v10, "NULL"

    invoke-virtual {v9, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 433
    :cond_0
    iget-object v9, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v9, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 436
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "eap"

    invoke-interface {p1, v5}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;->loadValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "eapMethod":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 439
    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "elements":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v5, v1

    const/4 v7, 0x1

    if-le v5, v7, :cond_2

    .line 441
    aget-object v0, v1, v6

    .line 444
    .end local v1    # "elements":[Ljava/lang/String;
    :cond_2
    sget-object v5, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    const/4 v7, -0x1

    invoke-direct {p0, v5, v0, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 446
    const-string/jumbo v5, "phase2"

    invoke-interface {p1, v5}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;->loadValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, "phase2Method":Ljava/lang/String;
    const-string/jumbo v5, "auth="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 449
    const-string/jumbo v5, "auth="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 453
    :cond_3
    :goto_2
    sget-object v5, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    invoke-direct {p0, v5, v3, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 427
    return-void

    .line 450
    :cond_4
    const-string/jumbo v5, "autheap="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 451
    const-string/jumbo v5, "autheap="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method public resetCaCertificate()V
    .locals 1

    .prologue
    .line 760
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    .line 759
    return-void
.end method

.method public resetClientKeyEntry()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 862
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 863
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    .line 861
    return-void
.end method

.method public saveToSupplicant(Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;)Z
    .locals 12
    .param p1, "saver"    # Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x4

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 374
    invoke-direct {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isEapMethodValid()Z

    move-result v6

    if-nez v6, :cond_0

    .line 375
    return v7

    .line 380
    :cond_0
    iget v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    if-eq v6, v10, :cond_1

    .line 381
    iget v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v8, 0x5

    if-ne v6, v8, :cond_4

    .line 380
    :cond_1
    const/4 v4, 0x1

    .line 383
    .local v4, "shouldNotWriteAnonIdentity":Z
    :goto_0
    iget-object v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 384
    .local v1, "key":Ljava/lang/String;
    if-eqz v4, :cond_3

    const-string/jumbo v6, "anonymous_identity"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 387
    :cond_3
    iget-object v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1, v1, v6}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 388
    return v7

    .line 382
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    .end local v4    # "shouldNotWriteAnonIdentity":Z
    :cond_4
    iget v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v8, 0x6

    if-ne v6, v8, :cond_5

    const/4 v4, 0x1

    .restart local v4    # "shouldNotWriteAnonIdentity":Z
    goto :goto_0

    .end local v4    # "shouldNotWriteAnonIdentity":Z
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "shouldNotWriteAnonIdentity":Z
    goto :goto_0

    .line 392
    .restart local v2    # "key$iterator":Ljava/util/Iterator;
    :cond_6
    const-string/jumbo v6, "eap"

    sget-object v8, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    iget v9, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    aget-object v8, v8, v9

    invoke-interface {p1, v6, v8}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 393
    return v7

    .line 397
    :cond_7
    iget v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    if-nez v6, :cond_8

    iget v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-nez v6, :cond_8

    .line 398
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 397
    if-eqz v6, :cond_8

    .line 398
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    .line 399
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getDomainSuffixMatch()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 397
    if-eqz v6, :cond_8

    .line 400
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 397
    if-eqz v6, :cond_8

    .line 402
    const-string/jumbo v6, "eap"

    const-string/jumbo v8, "PEAP TTLS PWD"

    invoke-interface {p1, v6, v8}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 403
    return v7

    .line 407
    :cond_8
    iget v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    if-eq v6, v0, :cond_b

    iget v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-eqz v6, :cond_b

    .line 408
    iget v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_9

    iget v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-ne v6, v10, :cond_9

    .line 409
    .local v0, "is_autheap":Z
    :goto_1
    if-eqz v0, :cond_a

    const-string/jumbo v3, "autheap="

    .line 410
    .local v3, "prefix":Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    iget v8, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 411
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v6, "phase2"

    invoke-interface {p1, v6, v5}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    return v6

    .end local v0    # "is_autheap":Z
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_9
    move v0, v7

    .line 408
    goto :goto_1

    .line 409
    .restart local v0    # "is_autheap":Z
    :cond_a
    const-string/jumbo v3, "auth="

    .restart local v3    # "prefix":Ljava/lang/String;
    goto :goto_2

    .line 412
    .end local v0    # "is_autheap":Z
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_b
    iget v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-nez v6, :cond_c

    .line 414
    const-string/jumbo v6, "phase2"

    invoke-interface {p1, v6, v11}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    return v6

    .line 416
    :cond_c
    const-string/jumbo v6, "WifiEnterpriseConfig"

    const-string/jumbo v8, "WiFi enterprise configuration is invalid as it supplies a phase 2 method but the phase1 method does not support it."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return v7
.end method

.method public setAltSubjectMatch(Ljava/lang/String;)V
    .locals 2
    .param p1, "altSubjectMatch"    # Ljava/lang/String;

    .prologue
    .line 899
    const-string/jumbo v0, "altsubject_match"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    return-void
.end method

.method public setAnonymousIdentity(Ljava/lang/String;)V
    .locals 2
    .param p1, "anonymousIdentity"    # Ljava/lang/String;

    .prologue
    .line 544
    const-string/jumbo v0, "anonymous_identity"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method public setCaCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 692
    if-eqz p1, :cond_1

    .line 693
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    if-ltz v0, :cond_0

    .line 694
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    .line 691
    :goto_0
    return-void

    .line 696
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not a CA certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_1
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    goto :goto_0
.end method

.method public setCaCertificateAlias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 613
    const-string/jumbo v0, "ca_cert"

    const-string/jumbo v1, "keystore://CACERT_"

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method public setCaCertificateAliases([Ljava/lang/String;)V
    .locals 6
    .param p1, "aliases"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 627
    if-nez p1, :cond_0

    .line 628
    const-string/jumbo v2, "ca_cert"

    const-string/jumbo v3, "keystore://CACERT_"

    invoke-virtual {p0, v2, v5, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :goto_0
    return-void

    .line 629
    :cond_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 631
    aget-object v2, p1, v4

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    goto :goto_0

    .line 634
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 636
    if-lez v0, :cond_2

    .line 637
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->encodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 641
    :cond_3
    const-string/jumbo v2, "ca_cert"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "keystores://"

    invoke-virtual {p0, v2, v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCaCertificates([Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 730
    if-eqz p1, :cond_2

    .line 731
    array-length v2, p1

    new-array v1, v2, [Ljava/security/cert/X509Certificate;

    .line 732
    .local v1, "newCerts":[Ljava/security/cert/X509Certificate;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 733
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v2

    if-ltz v2, :cond_0

    .line 734
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 732
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 736
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Not a CA certificate"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 739
    :cond_1
    iput-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    .line 729
    .end local v0    # "i":I
    .end local v1    # "newCerts":[Ljava/security/cert/X509Certificate;
    :goto_1
    return-void

    .line 741
    :cond_2
    iput-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    goto :goto_1
.end method

.method public setCaPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 778
    const-string/jumbo v0, "ca_path"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    return-void
.end method

.method public setClientCertificateAlias(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 799
    const-string/jumbo v0, "client_cert"

    const-string/jumbo v1, "keystore://USRCERT_"

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string/jumbo v0, "key_id"

    const-string/jumbo v1, "USRPKEY_"

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "engine"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "engine_id"

    const-string/jumbo v2, "NULL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    :goto_0
    return-void

    .line 806
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "engine"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "engine_id"

    const-string/jumbo v2, "keystore"

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setClientKeyEntry(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "clientCertificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 833
    if-eqz p2, :cond_2

    .line 834
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 835
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot be a CA certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :cond_0
    if-nez p1, :cond_1

    .line 838
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Client cert without a private key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :cond_1
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    if-nez v0, :cond_2

    .line 841
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Private key cannot be encoded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 845
    :cond_2
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 846
    iput-object p2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    .line 832
    return-void
.end method

.method public setDomainSuffixMatch(Ljava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 929
    const-string/jumbo v0, "domain_suffix_match"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    return-void
.end method

.method public setEapMethod(I)V
    .locals 3
    .param p1, "eapMethod"    # I

    .prologue
    .line 463
    packed-switch p1, :pswitch_data_0

    .line 479
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown EAP method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 475
    :pswitch_1
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 476
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "proactive_key_caching"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    return-void

    .line 463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFieldValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1065
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "NULL"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    :goto_0
    return-void

    .line 1068
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1047
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "NULL"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    :goto_0
    return-void

    .line 1050
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setIdentity(Ljava/lang/String;)V
    .locals 2
    .param p1, "identity"    # Ljava/lang/String;

    .prologue
    .line 527
    const-string/jumbo v0, "identity"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 560
    const-string/jumbo v0, "password"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method public setPhase2Method(I)V
    .locals 2
    .param p1, "phase2Method"    # I

    .prologue
    .line 501
    packed-switch p1, :pswitch_data_0

    .line 510
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown Phase 2 method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :pswitch_0
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 500
    return-void

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPlmn(Ljava/lang/String;)V
    .locals 2
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 962
    const-string/jumbo v0, "plmn"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 2
    .param p1, "realm"    # Ljava/lang/String;

    .prologue
    .line 946
    const-string/jumbo v0, "realm"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    return-void
.end method

.method public setSubjectMatch(Ljava/lang/String;)V
    .locals 2
    .param p1, "subjectMatch"    # Ljava/lang/String;

    .prologue
    .line 880
    const-string/jumbo v0, "subject_match"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1074
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1075
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1079
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v4, "password"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "identity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string/jumbo v3, "<removed>"

    .line 1080
    .local v3, "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1079
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_1

    .line 1082
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 169
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

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

    .line 171
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    invoke-direct {p0, p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V

    .line 179
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    if-eqz v4, :cond_1

    .line 180
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    invoke-interface {v4}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "algorithm":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    invoke-interface {v4}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    .line 182
    .local v3, "userKeyBytes":[B
    array-length v4, v3

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 184
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v3    # "userKeyBytes":[B
    :goto_1
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    invoke-direct {p0, p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V

    .line 168
    return-void

    .line 186
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
