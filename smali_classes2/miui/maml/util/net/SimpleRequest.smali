.class public final Lmiui/maml/util/net/SimpleRequest;
.super Ljava/lang/Object;
.source "SimpleRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/net/SimpleRequest$HeaderContent;,
        Lmiui/maml/util/net/SimpleRequest$MapContent;,
        Lmiui/maml/util/net/SimpleRequest$StreamContent;,
        Lmiui/maml/util/net/SimpleRequest$StringContent;
    }
.end annotation


# static fields
.field private static final CER_12306:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIICmjCCAgOgAwIBAgIIbyZr5/jKH6QwDQYJKoZIhvcNAQEFBQAwRzELMAkGA1UEBhMCQ04xKTAnBgNVBAoTIFNpbm9yYWlsIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MQ0wCwYDVQQDEwRTUkNBMB4XDTA5MDUyNTA2NTYwMFoXDTI5MDUyMDA2NTYwMFowRzELMAkGA1UEBhMCQ04xKTAnBgNVBAoTIFNpbm9yYWlsIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MQ0wCwYDVQQDEwRTUkNBMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDMpbNeb34p0GvLkZ6t72/OOba4mX2K/eZRWFfnuk8e5jKDH+9BgCb29bSotqPqTbxXWPxIOz8EjyUO3bfR5pQ8ovNTOlks2rS5BdMhoi4sUjCKi5ELiqtyww/XgY5iFqv6D4Pw9QvOUcdRVSbPWo1DwMmH75It6pk/rARIFHEjWwIDAQABo4GOMIGLMB8GA1UdIwQYMBaAFHletne34lKDQ+3HUYhMY4UsAENYMAwGA1UdEwQFMAMBAf8wLgYDVR0fBCcwJTAjoCGgH4YdaHR0cDovLzE5Mi4xNjguOS4xNDkvY3JsMS5jcmwwCwYDVR0PBAQDAgH+MB0GA1UdDgQWBBR5XrZ3t+JSg0Ptx1GITGOFLABDWDANBgkqhkiG9w0BAQUFAAOBgQDGrAm2U/of1LbOnG2bnnQtgcVaBXiVJF8LKPaV23XQ96HU8xfgSZMJS6U00WHAI7zp0q208RSUft9wDq9ee///VOhzR6Tebg9QfyPSohkBrhXQenvQog555S+C3eJAAVeNCTeMS3N/M5hzBRJAoffn3qoYdAO1Q8bTguOi+2849A==\n-----END CERTIFICATE-----"

.field private static final DEBUG:Z = false

.field private static final HOST_12306:Ljava/lang/String; = "kyfw.12306.cn"

.field public static final ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"

.field public static final LOCATION:Ljava/lang/String; = "Location"

.field private static final NAME_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final PARAMETER_SEPARATOR:Ljava/lang/String; = "&"

.field private static final PARAM_IGNORE_12306_CA:Ljava/lang/String; = "ignore12306ca"

.field private static final TIMEOUT:I = 0x7530

.field public static final UTF8:Ljava/lang/String; = "utf-8"

.field private static final log:Ljava/util/logging/Logger;

.field private static sUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-class v0, Lmiui/maml/util/net/SimpleRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static appendUrl(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 4
    .param p0, "origin"    # Ljava/lang/String;
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "origin is not allowed null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, "urlBuilder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 92
    const-string/jumbo v2, "utf-8"

    invoke-static {p1, v2}, Lmiui/maml/util/net/SimpleRequest;->format(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "paramPart":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 94
    const-string/jumbo v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .end local v0    # "paramPart":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 97
    .restart local v0    # "paramPart":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected static convertStringToMap(Lmiui/maml/util/net/SimpleRequest$StringContent;)Lmiui/maml/util/net/SimpleRequest$MapContent;
    .locals 7
    .param p0, "stringContent"    # Lmiui/maml/util/net/SimpleRequest$StringContent;

    .prologue
    const/4 v6, 0x0

    .line 363
    if-nez p0, :cond_0

    .line 364
    return-object v6

    .line 366
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/util/net/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "bodyString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 369
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .local v4, "jsonObject":Lorg/json/JSONObject;
    move-object v3, v4

    .line 373
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    if-nez v3, :cond_1

    .line 374
    return-object v6

    .line 370
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 371
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 376
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    invoke-static {v3}, Lmiui/maml/util/net/ObjectUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 378
    .local v1, "contentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Lmiui/maml/util/net/SimpleRequest$MapContent;

    invoke-direct {v5, v1}, Lmiui/maml/util/net/SimpleRequest$MapContent;-><init>(Ljava/util/Map;)V

    .line 379
    .local v5, "mapContent":Lmiui/maml/util/net/SimpleRequest$MapContent;
    invoke-virtual {p0}, Lmiui/maml/util/net/SimpleRequest$HeaderContent;->getHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiui/maml/util/net/SimpleRequest$HeaderContent;->putHeaders(Ljava/util/Map;)V

    .line 380
    return-object v5
.end method

.method private static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 124
    .end local p1    # "encoding":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 125
    .restart local p1    # "encoding":Ljava/lang/String;
    :cond_0
    const-string/jumbo p1, "ISO-8859-1"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    .end local p1    # "encoding":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "problem":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static format(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "contentValues"    # Landroid/content/ContentValues;
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v4, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 110
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2, p1}, Lmiui/maml/util/net/SimpleRequest;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "encodedName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-static {v5, p1}, Lmiui/maml/util/net/SimpleRequest;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "encodedValue":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 114
    const-string/jumbo v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 112
    .end local v1    # "encodedValue":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ""

    .restart local v1    # "encodedValue":Ljava/lang/String;
    goto :goto_1

    .line 119
    .end local v0    # "encodedName":Ljava/lang/String;
    .end local v1    # "encodedValue":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$MapContent;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p3, "readBody"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lmiui/maml/util/net/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3}, Lmiui/maml/util/net/SimpleRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v0

    .line 270
    .local v0, "stringContent":Lmiui/maml/util/net/SimpleRequest$StringContent;
    invoke-static {v0}, Lmiui/maml/util/net/SimpleRequest;->convertStringToMap(Lmiui/maml/util/net/SimpleRequest$StringContent;)Lmiui/maml/util/net/SimpleRequest$MapContent;

    move-result-object v1

    return-object v1
.end method

.method public static getAsStream(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lmiui/maml/util/net/SimpleRequest$StreamContent;
    .locals 16
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmiui/maml/util/net/SimpleRequest$StreamContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lmiui/maml/util/net/SimpleRequest;->needIgnore12306CA(Ljava/util/Map;)Z

    move-result v10

    .line 212
    .local v10, "ignore12306CA":Z
    invoke-static/range {p1 .. p1}, Lmiui/maml/util/net/ObjectUtils;->mapToPairs(Ljava/util/Map;)Landroid/content/ContentValues;

    move-result-object v4

    .line 213
    .local v4, "contentValues":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lmiui/maml/util/net/SimpleRequest;->appendUrl(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v7

    .line 214
    .local v7, "fullUrl":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v7, v0, v10}, Lmiui/maml/util/net/SimpleRequest;->makeConn(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 215
    .local v3, "conn":Ljava/net/HttpURLConnection;
    if-nez v3, :cond_0

    .line 216
    sget-object v13, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string/jumbo v14, "failed to create URLConnection"

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 217
    new-instance v13, Ljava/io/IOException;

    const-string/jumbo v14, "failed to create connection"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 220
    :cond_0
    const/4 v13, 0x1

    :try_start_0
    invoke-virtual {v3, v13}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 221
    const-string/jumbo v13, "GET"

    invoke-virtual {v3, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 223
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 224
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 226
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 228
    .local v2, "code":I
    const/16 v13, 0xc8

    if-ne v2, v13, :cond_1

    .line 229
    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    .line 231
    .local v8, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v1, Ljava/net/CookieManager;

    invoke-direct {v1}, Ljava/net/CookieManager;-><init>()V

    .line 232
    .local v1, "cm":Ljava/net/CookieManager;
    invoke-static {v7}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v11

    .line 233
    .local v11, "reqUri":Ljava/net/URI;
    invoke-virtual {v1, v11, v8}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 234
    invoke-virtual {v1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v9

    .line 235
    .local v9, "httpCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-static {v9}, Lmiui/maml/util/net/SimpleRequest;->parseCookies(Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    .line 236
    .local v5, "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v8}, Lmiui/maml/util/net/ObjectUtils;->listToMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 237
    new-instance v12, Lmiui/maml/util/net/SimpleRequest$StreamContent;

    .line 238
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 237
    invoke-direct {v12, v13}, Lmiui/maml/util/net/SimpleRequest$StreamContent;-><init>(Ljava/io/InputStream;)V

    .line 239
    .local v12, "streamContent":Lmiui/maml/util/net/SimpleRequest$StreamContent;
    invoke-virtual {v12, v5}, Lmiui/maml/util/net/SimpleRequest$HeaderContent;->putHeaders(Ljava/util/Map;)V

    .line 240
    return-object v12

    .line 241
    .end local v1    # "cm":Ljava/net/CookieManager;
    .end local v5    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v9    # "httpCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v11    # "reqUri":Ljava/net/URI;
    .end local v12    # "streamContent":Lmiui/maml/util/net/SimpleRequest$StreamContent;
    :cond_1
    const/16 v13, 0x193

    if-ne v2, v13, :cond_2

    .line 242
    new-instance v13, Lmiui/maml/util/net/AccessDeniedException;

    .line 243
    const-string/jumbo v14, "access denied, encrypt error or user is forbidden to access the resource"

    .line 242
    invoke-direct {v13, v14}, Lmiui/maml/util/net/AccessDeniedException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v2    # "code":I
    :catch_0
    move-exception v6

    .line 258
    .local v6, "e":Ljava/net/ProtocolException;
    new-instance v13, Ljava/io/IOException;

    const-string/jumbo v14, "protocol error"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 244
    .end local v6    # "e":Ljava/net/ProtocolException;
    .restart local v2    # "code":I
    :cond_2
    const/16 v13, 0x191

    if-eq v2, v13, :cond_3

    .line 245
    const/16 v13, 0x190

    if-ne v2, v13, :cond_4

    .line 246
    :cond_3
    :try_start_1
    new-instance v13, Lmiui/maml/util/net/AuthenticationFailureException;

    .line 247
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "authentication failure for get, code: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 246
    invoke-direct {v13, v14}, Lmiui/maml/util/net/AuthenticationFailureException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 249
    :cond_4
    sget-object v13, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "http status error when GET: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 250
    const/16 v13, 0x12d

    if-ne v2, v13, :cond_5

    .line 251
    sget-object v13, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unexpected redirect from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 252
    invoke-virtual {v3}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 251
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 252
    const-string/jumbo v15, " to "

    .line 251
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 253
    const-string/jumbo v15, "Location"

    invoke-virtual {v3, v15}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 251
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 255
    :cond_5
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unexpected http res code: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public static getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;
    .locals 20
    .param p0, "url"    # Ljava/lang/String;
    .param p3, "readBody"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lmiui/maml/util/net/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lmiui/maml/util/net/SimpleRequest;->needIgnore12306CA(Ljava/util/Map;)Z

    move-result v12

    .line 144
    .local v12, "ignore12306CA":Z
    invoke-static/range {p1 .. p1}, Lmiui/maml/util/net/ObjectUtils;->mapToPairs(Ljava/util/Map;)Landroid/content/ContentValues;

    move-result-object v6

    .line 145
    .local v6, "contentValues":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lmiui/maml/util/net/SimpleRequest;->appendUrl(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v9

    .line 146
    .local v9, "fullUrl":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v9, v0, v12}, Lmiui/maml/util/net/SimpleRequest;->makeConn(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 147
    .local v5, "conn":Ljava/net/HttpURLConnection;
    if-nez v5, :cond_0

    .line 148
    sget-object v17, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string/jumbo v18, "failed to create URLConnection"

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 149
    new-instance v17, Ljava/io/IOException;

    const-string/jumbo v18, "failed to create connection"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 152
    :cond_0
    const/16 v17, 0x1

    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 153
    const-string/jumbo v17, "GET"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v5}, Ljava/net/URLConnection;->connect()V

    .line 156
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 157
    .local v4, "code":I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v4, v0, :cond_1

    .line 158
    const/16 v17, 0x12e

    move/from16 v0, v17

    if-ne v4, v0, :cond_4

    .line 159
    :cond_1
    invoke-virtual {v5}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    .line 161
    .local v10, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v3, Ljava/net/CookieManager;

    invoke-direct {v3}, Ljava/net/CookieManager;-><init>()V

    .line 162
    .local v3, "cm":Ljava/net/CookieManager;
    invoke-static {v9}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v14

    .line 163
    .local v14, "reqUri":Ljava/net/URI;
    invoke-virtual {v3, v14, v10}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 164
    invoke-virtual {v3}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v11

    .line 165
    .local v11, "httpCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-static {v11}, Lmiui/maml/util/net/SimpleRequest;->parseCookies(Ljava/util/List;)Ljava/util/Map;

    move-result-object v7

    .line 166
    .local v7, "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v10}, Lmiui/maml/util/net/ObjectUtils;->listToMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 167
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v15, "sb":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_3

    .line 169
    new-instance v2, Ljava/io/BufferedReader;

    .line 170
    new-instance v17, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v18, 0x400

    .line 169
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v2, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 173
    .local v2, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, "line":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 174
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    .end local v13    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v17

    .line 177
    :try_start_2
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 176
    throw v17
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 200
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "cm":Ljava/net/CookieManager;
    .end local v4    # "code":I
    .end local v7    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v11    # "httpCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v14    # "reqUri":Ljava/net/URI;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    .line 201
    .local v8, "e":Ljava/net/ProtocolException;
    :try_start_3
    new-instance v17, Ljava/io/IOException;

    const-string/jumbo v18, "protocol error"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 202
    .end local v8    # "e":Ljava/net/ProtocolException;
    :catchall_1
    move-exception v17

    .line 203
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 202
    throw v17

    .line 177
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "cm":Ljava/net/CookieManager;
    .restart local v4    # "code":I
    .restart local v7    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v11    # "httpCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "reqUri":Ljava/net/URI;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_4
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 180
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v13    # "line":Ljava/lang/String;
    :cond_3
    new-instance v16, Lmiui/maml/util/net/SimpleRequest$StringContent;

    .line 181
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 180
    invoke-direct/range {v16 .. v17}, Lmiui/maml/util/net/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v16, "stringContent":Lmiui/maml/util/net/SimpleRequest$StringContent;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lmiui/maml/util/net/SimpleRequest$HeaderContent;->putHeaders(Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 203
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 183
    return-object v16

    .line 184
    .end local v3    # "cm":Ljava/net/CookieManager;
    .end local v7    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v11    # "httpCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v14    # "reqUri":Ljava/net/URI;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "stringContent":Lmiui/maml/util/net/SimpleRequest$StringContent;
    :cond_4
    const/16 v17, 0x193

    move/from16 v0, v17

    if-ne v4, v0, :cond_5

    .line 185
    :try_start_5
    new-instance v17, Lmiui/maml/util/net/AccessDeniedException;

    .line 186
    const-string/jumbo v18, "access denied, encrypt error or user is forbidden to access the resource"

    .line 185
    invoke-direct/range {v17 .. v18}, Lmiui/maml/util/net/AccessDeniedException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 187
    :cond_5
    const/16 v17, 0x191

    move/from16 v0, v17

    if-eq v4, v0, :cond_6

    .line 188
    const/16 v17, 0x190

    move/from16 v0, v17

    if-ne v4, v0, :cond_7

    .line 189
    :cond_6
    new-instance v17, Lmiui/maml/util/net/AuthenticationFailureException;

    .line 190
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "authentication failure for get, code: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 189
    invoke-direct/range {v17 .. v18}, Lmiui/maml/util/net/AuthenticationFailureException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 192
    :cond_7
    sget-object v17, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "http status error when GET: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 193
    const/16 v17, 0x12d

    move/from16 v0, v17

    if-ne v4, v0, :cond_8

    .line 194
    sget-object v17, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "unexpected redirect from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 195
    invoke-virtual {v5}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v19

    .line 194
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 195
    const-string/jumbo v19, " to "

    .line 194
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 196
    const-string/jumbo v19, "Location"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 194
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 198
    :cond_8
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "unexpected http res code: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_5
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method

.method protected static joinMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "sp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 474
    if-nez p0, :cond_0

    .line 475
    return-object v7

    .line 477
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 479
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 480
    .local v3, "i":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 481
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-lez v3, :cond_1

    .line 482
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 485
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 486
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const-string/jumbo v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 491
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method protected static makeConn(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/maml/util/net/SimpleRequest;->makeConn(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method protected static makeConn(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;
    .locals 21
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "ignore12306CA"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 390
    .local v12, "req":Ljava/net/URL;
    :try_start_0
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v12    # "req":Ljava/net/URL;
    .local v13, "req":Ljava/net/URL;
    move-object v12, v13

    .line 394
    .end local v13    # "req":Ljava/net/URL;
    :goto_0
    if-nez v12, :cond_0

    .line 395
    sget-object v18, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string/jumbo v19, "failed to init url"

    invoke-virtual/range {v18 .. v19}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 396
    const/16 v18, 0x0

    return-object v18

    .line 391
    .restart local v12    # "req":Ljava/net/URL;
    :catch_0
    move-exception v9

    .line 392
    .local v9, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 399
    .end local v9    # "e":Ljava/net/MalformedURLException;
    .end local v12    # "req":Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 400
    .local v7, "conn":Ljava/net/HttpURLConnection;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 401
    const/16 v18, 0x7530

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 402
    const/16 v18, 0x7530

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 403
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 404
    const-string/jumbo v18, "Content-Type"

    .line 405
    const-string/jumbo v19, "application/x-www-form-urlencoded"

    .line 404
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    if-eqz p1, :cond_1

    .line 408
    const-string/jumbo v18, "Cookie"

    const-string/jumbo v19, "; "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lmiui/maml/util/net/SimpleRequest;->joinMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_1
    const-string/jumbo v18, "kyfw.12306.cn"

    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    instance-of v0, v7, Ljavax/net/ssl/HttpsURLConnection;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 413
    move-object v0, v7

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v10, v0

    .line 414
    .local v10, "httpsCon":Ljavax/net/ssl/HttpsURLConnection;
    const-string/jumbo v18, "TLS"

    invoke-static/range {v18 .. v18}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v14

    .line 416
    .local v14, "sslContext":Ljavax/net/ssl/SSLContext;
    if-eqz p2, :cond_3

    .line 418
    new-instance v16, Lmiui/maml/util/net/SimpleRequest$1;

    invoke-direct/range {v16 .. v16}, Lmiui/maml/util/net/SimpleRequest$1;-><init>()V

    .line 438
    .local v16, "tm":Ljavax/net/ssl/TrustManager;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v17, v0

    .line 439
    const/16 v18, 0x0

    aput-object v16, v17, v18

    .line 441
    .local v17, "tms":[Ljavax/net/ssl/TrustManager;
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v14, v0, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 463
    .end local v16    # "tm":Ljavax/net/ssl/TrustManager;
    .end local v17    # "tms":[Ljavax/net/ssl/TrustManager;
    :goto_1
    invoke-virtual {v14}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 466
    .end local v10    # "httpsCon":Ljavax/net/ssl/HttpsURLConnection;
    .end local v14    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_2
    return-object v7

    .line 443
    .restart local v10    # "httpsCon":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v14    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_3
    const-string/jumbo v18, "X.509"

    invoke-static/range {v18 .. v18}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 444
    .local v6, "cf":Ljava/security/cert/CertificateFactory;
    const/4 v4, 0x0

    .line 446
    .local v4, "caInput":Ljava/io/InputStream;
    :try_start_2
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v18, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v19, "-----BEGIN CERTIFICATE-----\nMIICmjCCAgOgAwIBAgIIbyZr5/jKH6QwDQYJKoZIhvcNAQEFBQAwRzELMAkGA1UEBhMCQ04xKTAnBgNVBAoTIFNpbm9yYWlsIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MQ0wCwYDVQQDEwRTUkNBMB4XDTA5MDUyNTA2NTYwMFoXDTI5MDUyMDA2NTYwMFowRzELMAkGA1UEBhMCQ04xKTAnBgNVBAoTIFNpbm9yYWlsIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MQ0wCwYDVQQDEwRTUkNBMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDMpbNeb34p0GvLkZ6t72/OOba4mX2K/eZRWFfnuk8e5jKDH+9BgCb29bSotqPqTbxXWPxIOz8EjyUO3bfR5pQ8ovNTOlks2rS5BdMhoi4sUjCKi5ELiqtyww/XgY5iFqv6D4Pw9QvOUcdRVSbPWo1DwMmH75It6pk/rARIFHEjWwIDAQABo4GOMIGLMB8GA1UdIwQYMBaAFHletne34lKDQ+3HUYhMY4UsAENYMAwGA1UdEwQFMAMBAf8wLgYDVR0fBCcwJTAjoCGgH4YdaHR0cDovLzE5Mi4xNjguOS4xNDkvY3JsMS5jcmwwCwYDVR0PBAQDAgH+MB0GA1UdDgQWBBR5XrZ3t+JSg0Ptx1GITGOFLABDWDANBgkqhkiG9w0BAQUFAAOBgQDGrAm2U/of1LbOnG2bnnQtgcVaBXiVJF8LKPaV23XQ96HU8xfgSZMJS6U00WHAI7zp0q208RSUft9wDq9ee///VOhzR6Tebg9QfyPSohkBrhXQenvQog555S+C3eJAAVeNCTeMS3N/M5hzBRJAoffn3qoYdAO1Q8bTguOi+2849A==\n-----END CERTIFICATE-----"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 447
    .local v5, "caInput":Ljava/io/InputStream;
    :try_start_3
    invoke-virtual {v6, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .end local v4    # "caInput":Ljava/io/InputStream;
    move-result-object v3

    .line 449
    .local v3, "ca":Ljava/security/cert/Certificate;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v11

    .line 450
    .local v11, "ks":Ljava/security/KeyStore;
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 451
    const-string/jumbo v18, "ca"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 453
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v15

    .line 455
    .local v15, "tf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v15, v11}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 457
    invoke-virtual {v15}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 459
    :try_start_4
    invoke-static {v5}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 467
    .end local v3    # "ca":Ljava/security/cert/Certificate;
    .end local v5    # "caInput":Ljava/io/InputStream;
    .end local v6    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v7    # "conn":Ljava/net/HttpURLConnection;
    .end local v10    # "httpsCon":Ljavax/net/ssl/HttpsURLConnection;
    .end local v11    # "ks":Ljava/security/KeyStore;
    .end local v14    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v15    # "tf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_1
    move-exception v8

    .line 468
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 470
    const/16 v18, 0x0

    return-object v18

    .line 458
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "caInput":Ljava/io/InputStream;
    .restart local v6    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v7    # "conn":Ljava/net/HttpURLConnection;
    .restart local v10    # "httpsCon":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v14    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catchall_0
    move-exception v18

    .line 459
    .end local v4    # "caInput":Ljava/io/InputStream;
    :goto_2
    :try_start_5
    invoke-static {v4}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 458
    throw v18
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .restart local v5    # "caInput":Ljava/io/InputStream;
    :catchall_1
    move-exception v18

    move-object v4, v5

    .end local v5    # "caInput":Ljava/io/InputStream;
    .local v4, "caInput":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private static needIgnore12306CA(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "ignore12306ca"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const-string/jumbo v0, "ignore12306ca"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/4 v0, 0x1

    return v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected static parseCookies(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 496
    .local p0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 497
    .local v2, "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cookie$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 498
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v5

    if-nez v5, :cond_0

    .line 499
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 501
    .local v4, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 502
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 510
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static postAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$MapContent;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p3, "readBody"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lmiui/maml/util/net/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3}, Lmiui/maml/util/net/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v0

    .line 359
    .local v0, "stringContent":Lmiui/maml/util/net/SimpleRequest$StringContent;
    invoke-static {v0}, Lmiui/maml/util/net/SimpleRequest;->convertStringToMap(Lmiui/maml/util/net/SimpleRequest$StringContent;)Lmiui/maml/util/net/SimpleRequest$MapContent;

    move-result-object v1

    return-object v1
.end method

.method public static postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;
    .locals 21
    .param p0, "url"    # Ljava/lang/String;
    .param p3, "readBody"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lmiui/maml/util/net/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lmiui/maml/util/net/SimpleRequest;->needIgnore12306CA(Ljava/util/Map;)Z

    move-result v12

    .line 278
    .local v12, "ignore12306CA":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12}, Lmiui/maml/util/net/SimpleRequest;->makeConn(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 279
    .local v6, "conn":Ljava/net/HttpURLConnection;
    if-nez v6, :cond_0

    .line 280
    sget-object v18, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string/jumbo v19, "failed to create URLConnection"

    invoke-virtual/range {v18 .. v19}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 281
    new-instance v18, Ljava/io/IOException;

    const-string/jumbo v19, "failed to create connection"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 284
    :cond_0
    const/16 v18, 0x1

    :try_start_0
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 285
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 286
    const-string/jumbo v18, "POST"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    .line 289
    invoke-static/range {p1 .. p1}, Lmiui/maml/util/net/ObjectUtils;->mapToPairs(Ljava/util/Map;)Landroid/content/ContentValues;

    move-result-object v8

    .line 290
    .local v8, "contentValues":Landroid/content/ContentValues;
    if-eqz v8, :cond_1

    .line 291
    const-string/jumbo v18, "utf-8"

    move-object/from16 v0, v18

    invoke-static {v8, v0}, Lmiui/maml/util/net/SimpleRequest;->format(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 292
    .local v7, "content":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    .line 293
    .local v14, "os":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 295
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1
    const-string/jumbo v18, "utf-8"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/io/FilterOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 297
    :try_start_2
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 301
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v7    # "content":Ljava/lang/String;
    .end local v14    # "os":Ljava/io/OutputStream;
    :cond_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 302
    .local v5, "code":I
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    .line 303
    const/16 v18, 0x12e

    move/from16 v0, v18

    if-ne v5, v0, :cond_5

    .line 304
    :cond_2
    invoke-virtual {v6}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11

    .line 306
    .local v11, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v4, Ljava/net/CookieManager;

    invoke-direct {v4}, Ljava/net/CookieManager;-><init>()V

    .line 307
    .local v4, "cm":Ljava/net/CookieManager;
    invoke-static/range {p0 .. p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v15

    .line 308
    .local v15, "reqUri":Ljava/net/URI;
    invoke-virtual {v4, v15, v11}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 310
    invoke-virtual {v4}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v18

    .line 309
    invoke-static/range {v18 .. v18}, Lmiui/maml/util/net/SimpleRequest;->parseCookies(Ljava/util/List;)Ljava/util/Map;

    move-result-object v9

    .line 311
    .local v9, "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v11}, Lmiui/maml/util/net/ObjectUtils;->listToMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 312
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .local v16, "sb":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_4

    .line 314
    new-instance v3, Ljava/io/BufferedReader;

    .line 315
    new-instance v18, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 316
    const/16 v19, 0x400

    .line 314
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v3, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 319
    .local v3, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, "line":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 320
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 322
    .end local v13    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v18

    .line 323
    :try_start_4
    invoke-static {v3}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 322
    throw v18
    :try_end_4
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 346
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "cm":Ljava/net/CookieManager;
    .end local v5    # "code":I
    .end local v8    # "contentValues":Landroid/content/ContentValues;
    .end local v9    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v15    # "reqUri":Ljava/net/URI;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v10

    .line 347
    .local v10, "e":Ljava/net/ProtocolException;
    :try_start_5
    new-instance v18, Ljava/io/IOException;

    const-string/jumbo v19, "protocol error"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 348
    .end local v10    # "e":Ljava/net/ProtocolException;
    :catchall_1
    move-exception v18

    .line 349
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 348
    throw v18

    .line 296
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v7    # "content":Ljava/lang/String;
    .restart local v8    # "contentValues":Landroid/content/ContentValues;
    .restart local v14    # "os":Ljava/io/OutputStream;
    :catchall_2
    move-exception v18

    .line 297
    :try_start_6
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 296
    throw v18

    .line 323
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v7    # "content":Ljava/lang/String;
    .end local v14    # "os":Ljava/io/OutputStream;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "cm":Ljava/net/CookieManager;
    .restart local v5    # "code":I
    .restart local v9    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v15    # "reqUri":Ljava/net/URI;
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    invoke-static {v3}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 326
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v13    # "line":Ljava/lang/String;
    :cond_4
    new-instance v17, Lmiui/maml/util/net/SimpleRequest$StringContent;

    .line 327
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 326
    invoke-direct/range {v17 .. v18}, Lmiui/maml/util/net/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    .line 328
    .local v17, "stringContent":Lmiui/maml/util/net/SimpleRequest$StringContent;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lmiui/maml/util/net/SimpleRequest$HeaderContent;->putHeaders(Ljava/util/Map;)V
    :try_end_6
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 349
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 329
    return-object v17

    .line 330
    .end local v4    # "cm":Ljava/net/CookieManager;
    .end local v9    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v15    # "reqUri":Ljava/net/URI;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "stringContent":Lmiui/maml/util/net/SimpleRequest$StringContent;
    :cond_5
    const/16 v18, 0x193

    move/from16 v0, v18

    if-ne v5, v0, :cond_6

    .line 331
    :try_start_7
    new-instance v18, Lmiui/maml/util/net/AccessDeniedException;

    .line 332
    const-string/jumbo v19, "access denied, encrypt error or user is forbidden to access the resource"

    .line 331
    invoke-direct/range {v18 .. v19}, Lmiui/maml/util/net/AccessDeniedException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 333
    :cond_6
    const/16 v18, 0x191

    move/from16 v0, v18

    if-eq v5, v0, :cond_7

    .line 334
    const/16 v18, 0x190

    move/from16 v0, v18

    if-ne v5, v0, :cond_8

    .line 335
    :cond_7
    new-instance v18, Lmiui/maml/util/net/AuthenticationFailureException;

    .line 336
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "authentication failure for post, code: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 335
    invoke-direct/range {v18 .. v19}, Lmiui/maml/util/net/AuthenticationFailureException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 338
    :cond_8
    sget-object v18, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "http status error when POST: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 339
    const/16 v18, 0x12d

    move/from16 v0, v18

    if-ne v5, v0, :cond_9

    .line 340
    sget-object v18, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "unexpected redirect from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 341
    invoke-virtual {v6}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v20

    .line 340
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 341
    const-string/jumbo v20, " to "

    .line 340
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 342
    const-string/jumbo v20, "Location"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 340
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 344
    :cond_9
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "unexpected http res code: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_7
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method
