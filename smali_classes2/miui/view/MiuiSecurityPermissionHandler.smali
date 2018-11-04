.class public Lmiui/view/MiuiSecurityPermissionHandler;
.super Ljava/lang/Object;
.source "MiuiSecurityPermissionHandler.java"


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mOpenWifiOnce:Z


# direct methods
.method static synthetic -get0(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/accounts/Account;
    .locals 1

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->loadAccountId()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lmiui/view/MiuiSecurityPermissionHandler;)V
    .locals 0

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    return-void
.end method

.method static synthetic -wrap2(Lmiui/view/MiuiSecurityPermissionHandler;)V
    .locals 0

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->enableWifiAndData()V

    return-void
.end method

.method static synthetic -wrap3(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 0
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "btn"    # Landroid/widget/Button;
    .param p3, "actName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationRequest(Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mOpenWifiOnce:Z

    .line 50
    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method private appendImei(Ljava/io/OutputStreamWriter;)V
    .locals 7
    .param p1, "writer"    # Ljava/io/OutputStreamWriter;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 288
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/TelephonyManager;->getImeiList()Ljava/util/List;

    move-result-object v3

    .line 289
    .local v3, "imeis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 290
    .local v2, "imei2":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 291
    :cond_0
    return-void

    .line 293
    :cond_1
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lmiui/view/MiuiSecurityPermissionHandler;->hashSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "imei1":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_2

    .line 295
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lmiui/view/MiuiSecurityPermissionHandler;->hashSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .end local v2    # "imei2":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 299
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "&imei1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 301
    :cond_3
    if-eqz v2, :cond_4

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "&imei2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_4
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private createPermissionView()V
    .locals 9

    .prologue
    const/4 v1, -0x1

    .line 111
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    const v3, 0x1103001a

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 112
    .local v7, "permissionView":Landroid/view/View;
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 113
    .local v8, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 115
    const/16 v3, 0x7e0

    .line 116
    const v4, 0x5020500

    .line 121
    const/4 v5, 0x1

    move v2, v1

    .line 113
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 122
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v1, "Permission"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    invoke-interface {v8, v7, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    const v1, 0x110c0020

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 126
    .local v6, "action":Landroid/widget/Button;
    new-instance v1, Lmiui/view/MiuiSecurityPermissionHandler$2;

    invoke-direct {v1, p0, v6, v7}, Lmiui/view/MiuiSecurityPermissionHandler$2;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method private decryptData(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 165
    const-string/jumbo v3, "ODQ4NWFmYjdhNGE="

    .line 167
    .local v3, "key":Ljava/lang/String;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0, v3}, Lmiui/view/MiuiSecurityPermissionHandler;->generateRawKey(Ljava/lang/String;)[B

    move-result-object v6

    const-string/jumbo v7, "AES"

    invoke-direct {v4, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 169
    .local v4, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string/jumbo v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 170
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string/jumbo v6, "0102030405060708"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 171
    .local v2, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 172
    const/4 v6, 0x0

    invoke-static {p1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 173
    .local v5, "raw":[B
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 174
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "raw":[B
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 177
    const/4 v6, 0x0

    return-object v6
.end method

.method private enableWifiAndData()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 192
    iput-boolean v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mOpenWifiOnce:Z

    .line 194
    invoke-static {}, Landroid/app/MobileDataUtils;->getInstance()Landroid/app/MobileDataUtils;

    move-result-object v1

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroid/app/MobileDataUtils;->enableMobileData(Landroid/content/Context;Z)V

    .line 195
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 196
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 191
    :cond_0
    return-void
.end method

.method private generateRawKey(Ljava/lang/String;)[B
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 153
    .local v1, "rawKey":[B
    array-length v3, v1

    rem-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_0

    .line 154
    return-object v1

    .line 157
    :cond_0
    array-length v3, v1

    add-int/lit8 v3, v3, 0x8

    array-length v4, v1

    rem-int/lit8 v4, v4, 0x8

    sub-int/2addr v3, v4

    new-array v2, v3, [B

    .line 158
    .local v2, "ret":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 159
    aget-byte v3, v1, v0

    aput-byte v3, v2, v0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    return-object v2
.end method

.method public static hashSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "original"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 310
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    return-object v5

    .line 314
    :cond_0
    :try_start_0
    const-string/jumbo v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 315
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 316
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 317
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 319
    return-object v5
.end method

.method private loadAccountId()Landroid/accounts/Account;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 144
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string/jumbo v2, "com.xiaomi"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 145
    .local v0, "accounts":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 146
    aget-object v1, v0, v3

    return-object v1

    .line 148
    :cond_0
    return-object v4
.end method

.method private postVerificationRequest(Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 21
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "btn"    # Landroid/widget/Button;
    .param p3, "actName"    # Ljava/lang/String;

    .prologue
    .line 202
    const/16 v17, 0x0

    .line 203
    .local v17, "writer":Ljava/io/OutputStreamWriter;
    const/4 v11, 0x0

    .line 204
    .local v11, "reader":Ljava/io/InputStreamReader;
    const/4 v6, 0x0

    .line 205
    .local v6, "conn":Ljava/net/HttpURLConnection;
    const/4 v13, -0x2

    .line 207
    .local v13, "responseResult":I
    const/16 v15, 0x2710

    .line 208
    .local v15, "timeout":I
    :try_start_0
    new-instance v16, Ljava/net/URL;

    const-string/jumbo v19, "https://update.miui.com/updates/mi-vip.php"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 209
    .local v16, "url":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 210
    .local v6, "conn":Ljava/net/HttpURLConnection;
    const/16 v19, 0x2710

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 211
    const/16 v19, 0x2710

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 212
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 213
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 214
    const-string/jumbo v19, "POST"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 216
    new-instance v18, Ljava/io/OutputStreamWriter;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .local v18, "writer":Ljava/io/OutputStreamWriter;
    :try_start_1
    new-instance v19, Ljava/lang/StringBuilder;

    .end local v17    # "writer":Ljava/io/OutputStreamWriter;
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "uid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "&sid=1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler;->appendImei(Ljava/io/OutputStreamWriter;)V

    .line 219
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStreamWriter;->flush()V

    .line 220
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 221
    const/16 v17, 0x0

    .line 223
    .restart local v17    # "writer":Ljava/io/OutputStreamWriter;
    :try_start_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .end local v18    # "writer":Ljava/io/OutputStreamWriter;
    move-result v19

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 224
    new-instance v12, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    .local v12, "reader":Ljava/io/InputStreamReader;
    const/16 v10, 0x1000

    .line 226
    .local v10, "maxLength":I
    const/16 v19, 0x1000

    :try_start_3
    move/from16 v0, v19

    new-array v4, v0, [C

    .line 227
    .end local v11    # "reader":Ljava/io/InputStreamReader;
    .local v4, "buffer":[C
    const/4 v9, 0x0

    .line 228
    .local v9, "idx":I
    :goto_0
    rsub-int v0, v9, 0x1000

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v12, v4, v9, v0}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v5

    .local v5, "cnt":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v5, v0, :cond_0

    .line 229
    add-int/2addr v9, v5

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 232
    const/4 v11, 0x0

    .line 233
    .restart local v11    # "reader":Ljava/io/InputStreamReader;
    :try_start_4
    new-instance v19, Ljava/lang/String;

    .end local v12    # "reader":Ljava/io/InputStreamReader;
    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v4, v1, v9}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler;->decryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler;->processResult(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v13

    .line 248
    .end local v4    # "buffer":[C
    .end local v5    # "cnt":I
    .end local v9    # "idx":I
    .end local v10    # "maxLength":I
    :cond_1
    move v14, v13

    .line 249
    .local v14, "result":I
    new-instance v19, Lmiui/view/MiuiSecurityPermissionHandler$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v14, v3}, Lmiui/view/MiuiSecurityPermissionHandler$3;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;ILandroid/view/View;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 273
    const/16 v19, 0x0

    if-eqz v19, :cond_2

    .line 275
    :try_start_5
    throw v11
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 281
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    .line 282
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 201
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v11    # "reader":Ljava/io/InputStreamReader;
    .end local v16    # "url":Ljava/net/URL;
    .end local v17    # "writer":Ljava/io/OutputStreamWriter;
    :cond_3
    :goto_2
    return-void

    .line 276
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v11    # "reader":Ljava/io/InputStreamReader;
    .restart local v16    # "url":Ljava/net/URL;
    .restart local v17    # "writer":Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v7

    .line 277
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 235
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v14    # "result":I
    .end local v16    # "url":Ljava/net/URL;
    :catch_1
    move-exception v8

    .line 236
    .end local v11    # "reader":Ljava/io/InputStreamReader;
    .end local v17    # "writer":Ljava/io/OutputStreamWriter;
    .local v8, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 237
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/view/MiuiSecurityPermissionHandler;->mOpenWifiOnce:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    .line 238
    new-instance v19, Lmiui/view/MiuiSecurityPermissionHandler$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lmiui/view/MiuiSecurityPermissionHandler$4;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 205
    :cond_4
    const/4 v14, -0x2

    .line 249
    .restart local v14    # "result":I
    new-instance v19, Lmiui/view/MiuiSecurityPermissionHandler$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v14, v3}, Lmiui/view/MiuiSecurityPermissionHandler$3;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;ILandroid/view/View;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 265
    if-eqz v17, :cond_5

    .line 267
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 273
    :cond_5
    :goto_4
    if-eqz v11, :cond_6

    .line 275
    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 281
    :cond_6
    :goto_5
    if-eqz v6, :cond_3

    .line 282
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 268
    :catch_2
    move-exception v7

    .line 269
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 276
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 277
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 247
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v14    # "result":I
    :catchall_0
    move-exception v19

    .line 205
    :goto_6
    const/4 v14, -0x2

    .line 249
    .restart local v14    # "result":I
    new-instance v20, Lmiui/view/MiuiSecurityPermissionHandler$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v14, v3}, Lmiui/view/MiuiSecurityPermissionHandler$3;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;ILandroid/view/View;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 265
    if-eqz v17, :cond_7

    .line 267
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 273
    :cond_7
    :goto_7
    if-eqz v11, :cond_8

    .line 275
    :try_start_a
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 281
    :cond_8
    :goto_8
    if-eqz v6, :cond_9

    .line 282
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 247
    :cond_9
    throw v19

    .line 268
    :catch_4
    move-exception v7

    .line 269
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 276
    .end local v7    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v7

    .line 277
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 247
    .end local v7    # "e":Ljava/io/IOException;
    .end local v14    # "result":I
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v11    # "reader":Ljava/io/InputStreamReader;
    .restart local v16    # "url":Ljava/net/URL;
    .restart local v18    # "writer":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v19

    move-object/from16 v17, v18

    .end local v18    # "writer":Ljava/io/OutputStreamWriter;
    .local v17, "writer":Ljava/io/OutputStreamWriter;
    goto :goto_6

    .end local v11    # "reader":Ljava/io/InputStreamReader;
    .restart local v10    # "maxLength":I
    .restart local v12    # "reader":Ljava/io/InputStreamReader;
    .local v17, "writer":Ljava/io/OutputStreamWriter;
    :catchall_2
    move-exception v19

    move-object v11, v12

    .end local v12    # "reader":Ljava/io/InputStreamReader;
    .local v11, "reader":Ljava/io/InputStreamReader;
    goto :goto_6

    .line 235
    .end local v10    # "maxLength":I
    .end local v17    # "writer":Ljava/io/OutputStreamWriter;
    .local v11, "reader":Ljava/io/InputStreamReader;
    .restart local v18    # "writer":Ljava/io/OutputStreamWriter;
    :catch_6
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object/from16 v17, v18

    .end local v18    # "writer":Ljava/io/OutputStreamWriter;
    .local v17, "writer":Ljava/io/OutputStreamWriter;
    goto/16 :goto_3

    .end local v8    # "e":Ljava/lang/Exception;
    .end local v11    # "reader":Ljava/io/InputStreamReader;
    .restart local v10    # "maxLength":I
    .restart local v12    # "reader":Ljava/io/InputStreamReader;
    .local v17, "writer":Ljava/io/OutputStreamWriter;
    :catch_7
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object v11, v12

    .end local v12    # "reader":Ljava/io/InputStreamReader;
    .local v11, "reader":Ljava/io/InputStreamReader;
    goto/16 :goto_3
.end method

.method private processResult(Ljava/lang/String;)I
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 182
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, "obj":Lorg/json/JSONObject;
    const-string/jumbo v2, "Auth"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 184
    .end local v1    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 187
    const/4 v2, -0x2

    return v2
.end method

.method private processWhenNotProvisioned()V
    .locals 6

    .prologue
    .line 96
    iget-object v4, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 97
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x0

    .line 99
    .local v3, "topPackage":Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 103
    .end local v3    # "topPackage":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "com.android.provision"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 105
    .local v2, "isProvisionAppRunningTop":Z
    if-nez v2, :cond_0

    .line 106
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    .line 95
    :cond_0
    return-void

    .line 100
    .end local v2    # "isProvisionAppRunningTop":Z
    .restart local v3    # "topPackage":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public mayBringUpPermissionView()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 54
    sget-boolean v3, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-nez v3, :cond_0

    .line 55
    return-void

    .line 58
    :cond_0
    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 59
    const-string/jumbo v4, "device_provisioned"

    .line 58
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 60
    .local v1, "provisioned":Z
    :goto_0
    if-nez v1, :cond_2

    .line 61
    new-instance v0, Landroid/os/Handler;

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    .local v0, "handler":Landroid/os/Handler;
    new-instance v3, Lmiui/view/MiuiSecurityPermissionHandler$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v0}, Lmiui/view/MiuiSecurityPermissionHandler$1;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;

    .line 80
    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 81
    const-string/jumbo v4, "device_provisioned"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 82
    iget-object v5, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;

    .line 80
    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 53
    .end local v0    # "handler":Landroid/os/Handler;
    :goto_1
    return-void

    .end local v1    # "provisioned":Z
    :cond_1
    move v1, v2

    .line 58
    goto :goto_0

    .line 91
    .restart local v1    # "provisioned":Z
    :cond_2
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    goto :goto_1
.end method
