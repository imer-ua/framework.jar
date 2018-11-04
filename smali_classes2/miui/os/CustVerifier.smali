.class public Lmiui/os/CustVerifier;
.super Ljava/lang/Object;
.source "CustVerifier.java"


# static fields
.field private static final CUST_PATH:Ljava/lang/String;

.field private static final CUST_SIGNATURE_FILE:Ljava/lang/String;

.field private static final DEBUG:Z

.field private static final INT_SIZE:I = 0x4

.field public static final MODE_DELETE:I = 0x1

.field public static final MODE_NORMAL:I = 0x0

.field private static final RSANUMBYTES:I = 0x100

.field private static final TAG:Ljava/lang/String; = "CustVerifier"

.field private static final VERIFY_KEY_FILE:Ljava/lang/String; = "/verity_key"

.field private static sInstance:Lmiui/os/CustVerifier;


# instance fields
.field private mPubKey:Ljava/security/PublicKey;

.field private mSignatures:Ljava/util/HashMap;
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
    .locals 2

    .prologue
    .line 26
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lmiui/os/CustVerifier;->DEBUG:Z

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/cust/cust/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lmiui/os/Build;->getCustVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/CustVerifier;->CUST_PATH:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/os/CustVerifier;->CUST_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sign_customized_applist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/CustVerifier;->CUST_SIGNATURE_FILE:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a2b(B)B
    .locals 1
    .param p1, "a"    # B

    .prologue
    .line 433
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 434
    add-int/lit8 v0, p1, -0x30

    int-to-byte v0, v0

    return v0

    .line 435
    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v0, 0x66

    if-gt p1, v0, :cond_1

    .line 436
    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    return v0

    .line 437
    :cond_1
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x46

    if-gt p1, v0, :cond_2

    .line 438
    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    return v0

    .line 441
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private b2a(I)B
    .locals 1
    .param p1, "b"    # I

    .prologue
    .line 445
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 446
    add-int/lit8 v0, p1, 0x30

    int-to-byte v0, v0

    return v0

    .line 448
    :cond_0
    add-int/lit8 v0, p1, -0xa

    add-int/lit8 v0, v0, 0x61

    int-to-byte v0, v0

    return v0
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 468
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 469
    .local v3, "res":[B
    const/4 v1, 0x0

    .line 470
    .local v1, "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 471
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    aget-byte v4, p1, v0

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-direct {p0, v4}, Lmiui/os/CustVerifier;->b2a(I)B

    move-result v4

    aput-byte v4, v3, v1

    .line 472
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    aget-byte v4, p1, v0

    and-int/lit8 v4, v4, 0xf

    invoke-direct {p0, v4}, Lmiui/os/CustVerifier;->b2a(I)B

    move-result v4

    aput-byte v4, v3, v2

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    return-object v4
.end method

.method private checkCustSignature()V
    .locals 13

    .prologue
    .line 398
    const-string/jumbo v8, "/verity_key"

    invoke-direct {p0, v8}, Lmiui/os/CustVerifier;->loadVerifyKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v5

    .line 400
    .local v5, "pubKey":Ljava/security/PublicKey;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 401
    .local v6, "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    new-instance v7, Ljava/io/File;

    sget-object v8, Lmiui/os/CustVerifier;->CUST_PATH:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    .local v7, "root":Ljava/io/File;
    :try_start_0
    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_0
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 406
    invoke-virtual {v6}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 407
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, "files":[Ljava/lang/String;
    sget-boolean v8, Lmiui/os/CustVerifier;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 410
    const-string/jumbo v8, "CustVerifier"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_1
    const/4 v8, 0x0

    array-length v9, v3

    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v4, v3, v8

    .line 414
    .local v4, "fn":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 416
    .local v2, "f":Ljava/io/File;
    sget-boolean v10, Lmiui/os/CustVerifier;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 417
    const-string/jumbo v10, "CustVerifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\t"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 421
    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_3
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 422
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_3

    const-string/jumbo v10, ".apk"

    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_1

    .line 427
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "fn":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "CustVerifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "checkCustSignature occurs: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    return-void
.end method

.method private getCustApkSignatures(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 24
    .param p1, "sigFn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 338
    .local v16, "signatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 340
    .local v7, "failedMsg":Ljava/lang/String;
    :try_start_0
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    .local v14, "signFile":Ljava/io/File;
    new-instance v12, Ljava/util/Scanner;

    invoke-direct {v12, v14}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 343
    .local v12, "scanner":Ljava/util/Scanner;
    :goto_0
    :try_start_1
    invoke-virtual {v12}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 344
    invoke-virtual {v12}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v10

    .line 345
    .local v10, "line":Ljava/lang/String;
    const-string/jumbo v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 346
    .local v17, "tokens":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 348
    const/16 v19, 0x0

    aget-object v19, v17, v19

    const/16 v20, 0x1

    aget-object v20, v17, v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 370
    .end local v10    # "line":Ljava/lang/String;
    .end local v17    # "tokens":[Ljava/lang/String;
    :catchall_0
    move-exception v19

    .line 371
    :try_start_2
    invoke-virtual {v12}, Ljava/util/Scanner;->close()V

    .line 370
    throw v19
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 376
    .end local v7    # "failedMsg":Ljava/lang/String;
    .end local v12    # "scanner":Ljava/util/Scanner;
    .end local v14    # "signFile":Ljava/io/File;
    :catch_0
    move-exception v11

    .line 377
    .local v11, "ne":Ljava/lang/NullPointerException;
    :try_start_3
    const-string/jumbo v19, "CustVerifier"

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string/jumbo v7, "cust signature file not found"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 386
    .local v7, "failedMsg":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 387
    const-string/jumbo v7, "Cust signature read finish."

    .line 389
    :cond_0
    const-string/jumbo v19, "CustVerifier"

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .end local v7    # "failedMsg":Ljava/lang/String;
    .end local v11    # "ne":Ljava/lang/NullPointerException;
    :goto_1
    const/16 v19, 0x0

    return-object v19

    .line 351
    .local v7, "failedMsg":Ljava/lang/String;
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v12    # "scanner":Ljava/util/Scanner;
    .restart local v14    # "signFile":Ljava/io/File;
    .restart local v17    # "tokens":[Ljava/lang/String;
    :cond_1
    const/16 v19, 0x0

    :try_start_4
    aget-object v19, v17, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v15

    .line 352
    .local v15, "signLen":I
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v8, v0

    .line 353
    .local v8, "fileSize":I
    const/16 v19, 0x0

    aget-object v19, v17, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lmiui/os/CustVerifier;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 354
    .local v13, "sign":[B
    sub-int v19, v8, v15

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1, v13}, Lmiui/os/CustVerifier;->verifyFileBlockSignature(Ljava/io/File;I[B)Z

    move-result v18

    .line 356
    .local v18, "valid":Z
    if-nez v18, :cond_5

    .line 357
    const-string/jumbo v7, "cust signature file is cracked"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 371
    .end local v7    # "failedMsg":Ljava/lang/String;
    .end local v8    # "fileSize":I
    .end local v10    # "line":Ljava/lang/String;
    .end local v13    # "sign":[B
    .end local v15    # "signLen":I
    .end local v17    # "tokens":[Ljava/lang/String;
    .end local v18    # "valid":Z
    :cond_2
    :try_start_5
    invoke-virtual {v12}, Ljava/util/Scanner;->close()V

    .line 373
    if-nez v7, :cond_3

    .line 374
    const-string/jumbo v7, "cust signature file is not signed"
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 386
    :cond_3
    if-nez v7, :cond_4

    .line 387
    const-string/jumbo v7, "Cust signature read finish."

    .line 389
    :cond_4
    const-string/jumbo v19, "CustVerifier"

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 360
    .restart local v7    # "failedMsg":Ljava/lang/String;
    .restart local v8    # "fileSize":I
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v13    # "sign":[B
    .restart local v15    # "signLen":I
    .restart local v17    # "tokens":[Ljava/lang/String;
    .restart local v18    # "valid":Z
    :cond_5
    :try_start_6
    sget-boolean v19, Lmiui/os/CustVerifier;->DEBUG:Z

    if-eqz v19, :cond_6

    .line 361
    const-string/jumbo v19, "CustVerifier"

    const-string/jumbo v20, "cust apk and signatures:"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 363
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v20, "CustVerifier"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v21, ":"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x14

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 371
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "entry$iterator":Ljava/util/Iterator;
    :cond_6
    :try_start_7
    invoke-virtual {v12}, Ljava/util/Scanner;->close()V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 387
    const-string/jumbo v7, "Cust signature read finish."

    .line 389
    .local v7, "failedMsg":Ljava/lang/String;
    const-string/jumbo v19, "CustVerifier"

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-object v16

    .line 382
    .end local v7    # "failedMsg":Ljava/lang/String;
    .end local v8    # "fileSize":I
    .end local v10    # "line":Ljava/lang/String;
    .end local v12    # "scanner":Ljava/util/Scanner;
    .end local v13    # "sign":[B
    .end local v14    # "signFile":Ljava/io/File;
    .end local v15    # "signLen":I
    .end local v17    # "tokens":[Ljava/lang/String;
    .end local v18    # "valid":Z
    :catch_1
    move-exception v4

    .line 383
    .local v4, "e":Ljava/lang/Exception;
    :try_start_8
    const-string/jumbo v19, "CustVerifier"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "failed to read cust signature file: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v7

    .line 386
    .restart local v7    # "failedMsg":Ljava/lang/String;
    if-nez v7, :cond_7

    .line 387
    const-string/jumbo v7, "Cust signature read finish."

    .line 389
    :cond_7
    const-string/jumbo v19, "CustVerifier"

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 379
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "failedMsg":Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 380
    .local v9, "ie":Ljava/io/IOException;
    :try_start_9
    const-string/jumbo v19, "CustVerifier"

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string/jumbo v7, "failed to read cust signature file: IOException"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 386
    .restart local v7    # "failedMsg":Ljava/lang/String;
    if-nez v7, :cond_8

    .line 387
    const-string/jumbo v7, "Cust signature read finish."

    .line 389
    :cond_8
    const-string/jumbo v19, "CustVerifier"

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 385
    .end local v7    # "failedMsg":Ljava/lang/String;
    .end local v9    # "ie":Ljava/io/IOException;
    :catchall_1
    move-exception v19

    .line 386
    if-nez v7, :cond_9

    .line 387
    const-string/jumbo v7, "Cust signature read finish."

    .line 389
    :cond_9
    const-string/jumbo v20, "CustVerifier"

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    throw v19
.end method

.method public static declared-synchronized getInstance()Lmiui/os/CustVerifier;
    .locals 3

    .prologue
    const-class v2, Lmiui/os/CustVerifier;

    monitor-enter v2

    .line 58
    :try_start_0
    sget-object v1, Lmiui/os/CustVerifier;->sInstance:Lmiui/os/CustVerifier;

    if-nez v1, :cond_0

    .line 59
    new-instance v0, Lmiui/os/CustVerifier;

    invoke-direct {v0}, Lmiui/os/CustVerifier;-><init>()V

    .line 60
    .local v0, "instance":Lmiui/os/CustVerifier;
    invoke-direct {v0}, Lmiui/os/CustVerifier;->init()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    sput-object v0, Lmiui/os/CustVerifier;->sInstance:Lmiui/os/CustVerifier;

    .line 64
    :cond_0
    sget-object v1, Lmiui/os/CustVerifier;->sInstance:Lmiui/os/CustVerifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getSignPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 71
    const-string/jumbo v2, "\\/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "pathSplite":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    sget-object v2, Lmiui/os/CustVerifier;->CUST_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "sb":Ljava/lang/StringBuffer;
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".apk"

    const-string/jumbo v4, ".sig"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private hexStringToBytes(Ljava/lang/String;)[B
    .locals 10
    .param p1, "hex"    # Ljava/lang/String;

    .prologue
    .line 452
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0x2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 453
    const/4 v8, 0x0

    return-object v8

    .line 456
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    new-array v1, v8, [B

    .line 457
    .local v1, "buf":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 458
    .local v7, "str":[B
    const/4 v4, 0x0

    .line 459
    .local v4, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    if-ge v3, v8, :cond_1

    .line 460
    aget-byte v2, v7, v3

    .line 461
    .local v2, "high":B
    add-int/lit8 v8, v3, 0x1

    aget-byte v6, v7, v8

    .line 462
    .local v6, "low":B
    invoke-direct {p0, v2}, Lmiui/os/CustVerifier;->a2b(B)B

    move-result v8

    shl-int/lit8 v8, v8, 0x4

    invoke-direct {p0, v6}, Lmiui/os/CustVerifier;->a2b(B)B

    move-result v9

    or-int/2addr v8, v9

    int-to-byte v0, v8

    .line 463
    .local v0, "b":B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .local v5, "j":I
    aput-byte v0, v1, v4

    .line 459
    add-int/lit8 v3, v3, 0x2

    move v4, v5

    .end local v5    # "j":I
    .restart local v4    # "j":I
    goto :goto_0

    .line 465
    .end local v0    # "b":B
    .end local v2    # "high":B
    .end local v6    # "low":B
    :cond_1
    return-object v1
.end method

.method private init()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 128
    const-string/jumbo v1, "/verity_key"

    invoke-direct {p0, v1}, Lmiui/os/CustVerifier;->loadVerifyKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lmiui/os/CustVerifier;->mPubKey:Ljava/security/PublicKey;

    .line 129
    iget-object v1, p0, Lmiui/os/CustVerifier;->mPubKey:Ljava/security/PublicKey;

    if-nez v1, :cond_0

    .line 130
    const-string/jumbo v1, "CustVerifier"

    const-string/jumbo v2, "failed to load verify key"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v0

    .line 133
    :cond_0
    sget-object v1, Lmiui/os/CustVerifier;->CUST_SIGNATURE_FILE:Ljava/lang/String;

    invoke-direct {p0, v1}, Lmiui/os/CustVerifier;->getCustApkSignatures(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lmiui/os/CustVerifier;->mSignatures:Ljava/util/HashMap;

    .line 134
    iget-object v1, p0, Lmiui/os/CustVerifier;->mSignatures:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private loadSignatureFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p1, "sigFile"    # Ljava/io/File;

    .prologue
    .line 151
    const/16 v5, 0x200

    :try_start_0
    new-array v0, v5, [B

    .line 152
    .local v0, "buf":[B
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 155
    .local v4, "total":I
    const/4 v1, 0x0

    .line 156
    .local v1, "count":I
    :cond_0
    :try_start_1
    array-length v5, v0

    sub-int/2addr v5, v4

    invoke-virtual {v3, v0, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 157
    add-int/2addr v4, v1

    .line 158
    array-length v5, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v4, v5, :cond_0

    .line 163
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 165
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    return-object v5

    .line 162
    :catchall_0
    move-exception v5

    .line 163
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 162
    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 166
    .end local v0    # "buf":[B
    .end local v1    # "count":I
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "total":I
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v5, "CustVerifier"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v5, 0x0

    return-object v5
.end method

.method private loadVerifyKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 20
    .param p1, "keyPath"    # Ljava/lang/String;

    .prologue
    .line 188
    :try_start_0
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string/jumbo v17, "r"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v9, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .local v9, "keyFile":Ljava/io/RandomAccessFile;
    const/16 v17, 0x4

    :try_start_1
    move/from16 v0, v17

    new-array v3, v0, [B

    .line 192
    .local v3, "buf":[B
    invoke-virtual {v9, v3}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v17

    array-length v0, v3

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 193
    const-string/jumbo v17, "CustVerifier"

    const-string/jumbo v18, "EOF when read len bytes"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    const/16 v17, 0x0

    .line 252
    :try_start_2
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 194
    return-object v17

    .line 196
    :cond_0
    const/16 v17, 0x0

    :try_start_3
    aget-byte v17, v3, v17

    const/16 v18, 0x1

    aget-byte v18, v3, v18

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    const/16 v18, 0x2

    aget-byte v18, v3, v18

    shl-int/lit8 v18, v18, 0x10

    or-int v17, v17, v18

    const/16 v18, 0x3

    aget-byte v18, v3, v18

    shl-int/lit8 v18, v18, 0x18

    or-int v11, v17, v18

    .line 197
    .local v11, "len":I
    mul-int/lit8 v11, v11, 0x4

    .line 198
    if-lez v11, :cond_1

    const/16 v17, 0x100

    move/from16 v0, v17

    if-le v11, v0, :cond_2

    .line 199
    :cond_1
    const-string/jumbo v17, "CustVerifier"

    const-string/jumbo v18, "invalid len bytes"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    const/16 v17, 0x0

    .line 252
    :try_start_4
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 200
    return-object v17

    .line 204
    :cond_2
    const/16 v17, 0x4

    :try_start_5
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 205
    const-string/jumbo v17, "CustVerifier"

    const-string/jumbo v18, "can\'t skip n0inv bytes"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 206
    const/16 v17, 0x0

    .line 252
    :try_start_6
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 206
    return-object v17

    .line 210
    :cond_3
    :try_start_7
    new-array v13, v11, [B

    .line 211
    .local v13, "modBytes":[B
    invoke-virtual {v9, v13}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v17

    array-length v0, v13

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 212
    const-string/jumbo v17, "CustVerifier"

    const-string/jumbo v18, "EOF when read mod bytes"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 213
    const/16 v17, 0x0

    .line 252
    :try_start_8
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 213
    return-object v17

    .line 216
    :cond_4
    const/4 v7, 0x0

    .local v7, "i":I
    add-int/lit8 v8, v11, -0x1

    .local v8, "j":I
    :goto_0
    if-ge v7, v8, :cond_5

    .line 217
    :try_start_9
    aget-byte v2, v13, v7

    .line 218
    .local v2, "b":B
    aget-byte v17, v13, v8

    aput-byte v17, v13, v7

    .line 219
    aput-byte v2, v13, v8

    .line 216
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 221
    .end local v2    # "b":B
    :cond_5
    new-instance v12, Ljava/math/BigInteger;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v12, v0, v13}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 224
    .local v12, "mod":Ljava/math/BigInteger;
    rsub-int v0, v11, 0x100

    move/from16 v17, v0

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x100

    move/from16 v16, v0

    .line 225
    .local v16, "skipNum":I
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_6

    .line 226
    const-string/jumbo v17, "CustVerifier"

    const-string/jumbo v18, "can\'t skip rr bytes"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 227
    const/16 v17, 0x0

    .line 252
    :try_start_a
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 227
    return-object v17

    .line 231
    :cond_6
    :try_start_b
    invoke-virtual {v9, v3}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v17

    array-length v0, v3

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 232
    const-string/jumbo v17, "CustVerifier"

    const-string/jumbo v18, "EOF when read exp bytes"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 233
    const/16 v17, 0x0

    .line 252
    :try_start_c
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 233
    return-object v17

    .line 235
    :cond_7
    const/16 v17, 0x0

    :try_start_d
    aget-byte v17, v3, v17

    const/16 v18, 0x1

    aget-byte v18, v3, v18

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    const/16 v18, 0x2

    aget-byte v18, v3, v18

    shl-int/lit8 v18, v18, 0x10

    or-int v17, v17, v18

    const/16 v18, 0x3

    aget-byte v18, v3, v18

    shl-int/lit8 v18, v18, 0x18

    or-int v6, v17, v18

    .line 236
    .local v6, "expInt":I
    int-to-long v0, v6

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 239
    .local v5, "exp":Ljava/math/BigInteger;
    new-instance v15, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v15, v12, v5}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 240
    .local v15, "rpks":Ljava/security/spec/RSAPublicKeySpec;
    const-string/jumbo v17, "RSA"

    invoke-static/range {v17 .. v17}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v10

    .line 241
    .local v10, "kf":Ljava/security/KeyFactory;
    invoke-virtual {v10, v15}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v14

    .line 244
    .local v14, "pk":Ljava/security/PublicKey;
    sget-boolean v17, Lmiui/os/CustVerifier;->DEBUG:Z

    if-eqz v17, :cond_8

    .line 245
    const-string/jumbo v17, "CustVerifier"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "loadVerifyKey: \n\tlen: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 246
    const-string/jumbo v19, "\n"

    .line 245
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 247
    const-string/jumbo v19, "\tmodulus: "

    .line 245
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 247
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 245
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 247
    const-string/jumbo v19, "\n"

    .line 245
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 248
    const-string/jumbo v19, "\tpublic exponent: "

    .line 245
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 252
    :cond_8
    :try_start_e
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 250
    return-object v14

    .line 251
    .end local v3    # "buf":[B
    .end local v5    # "exp":Ljava/math/BigInteger;
    .end local v6    # "expInt":I
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v10    # "kf":Ljava/security/KeyFactory;
    .end local v11    # "len":I
    .end local v12    # "mod":Ljava/math/BigInteger;
    .end local v13    # "modBytes":[B
    .end local v14    # "pk":Ljava/security/PublicKey;
    .end local v15    # "rpks":Ljava/security/spec/RSAPublicKeySpec;
    .end local v16    # "skipNum":I
    :catchall_0
    move-exception v17

    .line 252
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 251
    throw v17
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 254
    .end local v9    # "keyFile":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v4

    .line 255
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v17, "CustVerifier"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Exception occur when load verify key: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/16 v17, 0x0

    return-object v17
.end method

.method private verifyFileBlockSignature(Ljava/io/File;I[B)Z
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .param p2, "size"    # I
    .param p3, "signature"    # [B

    .prologue
    const/4 v10, 0x0

    .line 285
    if-nez p2, :cond_0

    .line 286
    const-string/jumbo v7, "CustVerifier"

    const-string/jumbo v8, "verifyFileBlockSignature get 0-sized block"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return v10

    .line 291
    :cond_0
    :try_start_0
    const-string/jumbo v7, "SHA256withRSA"

    invoke-static {v7}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 292
    .local v5, "sig":Ljava/security/Signature;
    iget-object v7, p0, Lmiui/os/CustVerifier;->mPubKey:Ljava/security/PublicKey;

    invoke-virtual {v5, v7}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 293
    const/16 v7, 0x1000

    new-array v0, v7, [B

    .line 294
    .local v0, "buf":[B
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 298
    .local v6, "total":I
    :cond_1
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_3

    .line 299
    add-int v7, v1, v6

    if-le v7, p2, :cond_2

    .line 300
    sub-int v1, p2, v6

    .line 302
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v1}, Ljava/security/Signature;->update([BII)V

    .line 303
    add-int/2addr v6, v1

    .line 304
    if-ne v6, p2, :cond_1

    .line 305
    const-string/jumbo v7, "CustVerifier"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "total: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_3
    invoke-virtual {v5, p3}, Ljava/security/Signature;->verify([B)Z

    move-result v4

    .line 310
    .local v4, "result":Z
    sget-boolean v7, Lmiui/os/CustVerifier;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 311
    const-string/jumbo v7, "CustVerifier"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "verify "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 313
    return v4

    .line 314
    .end local v1    # "count":I
    .end local v4    # "result":Z
    :catchall_0
    move-exception v7

    .line 315
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 314
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 317
    .end local v0    # "buf":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "sig":Ljava/security/Signature;
    .end local v6    # "total":I
    :catch_0
    move-exception v2

    .line 318
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "CustVerifier"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception occurs when verify file block: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return v10
.end method

.method private verifyFileSignature(Ljava/lang/String;[B)Z
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "signature"    # [B

    .prologue
    .line 267
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    const-string/jumbo v2, "CustVerifier"

    const-string/jumbo v3, "verifyFileSignature get null file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v2, 0x0

    return v2

    .line 272
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    .line 274
    .local v1, "size":I
    invoke-direct {p0, v0, v1, p2}, Lmiui/os/CustVerifier;->verifyFileBlockSignature(Ljava/io/File;I[B)Z

    move-result v2

    return v2
.end method

.method private verifyPathSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    .line 139
    :try_start_0
    const-string/jumbo v2, "SHA256withRSA"

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 140
    .local v1, "sig":Ljava/security/Signature;
    iget-object v2, p0, Lmiui/os/CustVerifier;->mPubKey:Ljava/security/PublicKey;

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 142
    invoke-direct {p0, p2}, Lmiui/os/CustVerifier;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 143
    .end local v1    # "sig":Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CustVerifier"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public verifyApkSignatue(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    const/4 v7, 0x0

    .line 91
    invoke-direct {p0, p1}, Lmiui/os/CustVerifier;->getSignPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "sigPath":Ljava/lang/String;
    const-string/jumbo v4, "CustVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " Sig path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "sigFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 96
    .local v0, "hasSigFile":Z
    if-nez p2, :cond_2

    .line 97
    const/4 v3, 0x0

    .line 98
    .local v3, "signature":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0, v1}, Lmiui/os/CustVerifier;->loadSignatureFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "signature":Ljava/lang/String;
    const-string/jumbo v4, "CustVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "has sig File1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    if-nez v3, :cond_1

    .line 106
    const-string/jumbo v4, "CustVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no signature found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return v7

    .line 102
    .local v3, "signature":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lmiui/os/CustVerifier;->mSignatures:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "signature":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 103
    .local v3, "signature":Ljava/lang/String;
    const-string/jumbo v4, "CustVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "has sig File2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :cond_1
    invoke-direct {p0, v3}, Lmiui/os/CustVerifier;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lmiui/os/CustVerifier;->verifyFileSignature(Ljava/lang/String;[B)Z

    move-result v4

    return v4

    .line 110
    .end local v3    # "signature":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    if-ne p2, v4, :cond_4

    .line 111
    if-eqz v0, :cond_3

    .line 112
    invoke-direct {p0, v1}, Lmiui/os/CustVerifier;->loadSignatureFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .restart local v3    # "signature":Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lmiui/os/CustVerifier;->verifyPathSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    return v4

    .line 116
    .end local v3    # "signature":Ljava/lang/String;
    :cond_3
    return v7

    .line 119
    :cond_4
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "not supported mode"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
