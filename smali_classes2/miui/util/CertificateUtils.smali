.class public Lmiui/util/CertificateUtils;
.super Ljava/lang/Object;
.source "CertificateUtils.java"


# static fields
.field private static final DEBUG_JAR:Z

.field private static final TAG:Ljava/lang/String;

.field private static sReadBuffer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lmiui/util/CertificateUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectCertificates(Ljava/io/File;Ljava/util/Set;)Z
    .locals 25
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/Signature;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "sigs":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/Signature;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->clear()V

    .line 34
    const/16 v19, 0x0

    .line 35
    .local v19, "readBuffer":[B
    const-class v22, Lmiui/util/CertificateUtils;

    monitor-enter v22

    .line 36
    :try_start_0
    sget-object v20, Lmiui/util/CertificateUtils;->sReadBuffer:Ljava/lang/ref/WeakReference;

    .line 37
    .local v20, "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    if-eqz v20, :cond_0

    .line 38
    const/16 v21, 0x0

    sput-object v21, Lmiui/util/CertificateUtils;->sReadBuffer:Ljava/lang/ref/WeakReference;

    .line 39
    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, [B

    move-object/from16 v19, v0

    .line 41
    .end local v19    # "readBuffer":[B
    :cond_0
    if-nez v19, :cond_1

    .line 42
    const/16 v21, 0x2000

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 43
    .local v19, "readBuffer":[B
    new-instance v20, Ljava/lang/ref/WeakReference;

    .end local v20    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v19    # "readBuffer":[B
    .restart local v20    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    :cond_1
    monitor-exit v22

    .line 49
    :try_start_1
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x15

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    .line 51
    const-class v21, Ljava/util/jar/JarFile;

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    invoke-static/range {v21 .. v22}, Lmiui/util/ReflectionUtils;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/jar/JarFile;

    .line 57
    .local v15, "jarFile":Ljava/util/jar/JarFile;
    :goto_0
    const/4 v3, 0x0

    .line 58
    .local v3, "certs":[Ljava/security/cert/Certificate;
    invoke-virtual {v15}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v11

    .line 59
    .end local v3    # "certs":[Ljava/security/cert/Certificate;
    .local v11, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 60
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/jar/JarEntry;

    .line 61
    .local v16, "je":Ljava/util/jar/JarEntry;
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v21

    if-nez v21, :cond_2

    .line 64
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v18

    .line 66
    .local v18, "name":Ljava/lang/String;
    const-string/jumbo v21, "META-INF/"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 69
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1}, Lmiui/util/CertificateUtils;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v17

    .line 76
    .local v17, "localCerts":[Ljava/security/cert/Certificate;
    if-nez v17, :cond_4

    .line 77
    sget-object v21, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "JarFile "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 78
    const-string/jumbo v23, " has no certificates at entry "

    .line 77
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 79
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v23

    .line 77
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 79
    const-string/jumbo v23, "; ignoring!"

    .line 77
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    const/16 v21, 0x0

    return v21

    .line 35
    .end local v11    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v15    # "jarFile":Ljava/util/jar/JarFile;
    .end local v16    # "je":Ljava/util/jar/JarEntry;
    .end local v17    # "localCerts":[Ljava/security/cert/Certificate;
    .end local v18    # "name":Ljava/lang/String;
    .end local v20    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    :catchall_0
    move-exception v21

    monitor-exit v22

    throw v21

    .line 54
    .restart local v20    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    :cond_3
    :try_start_2
    const-class v21, Ljava/util/jar/JarFile;

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const/16 v24, 0x2

    aput-object v23, v22, v24

    invoke-static/range {v21 .. v22}, Lmiui/util/ReflectionUtils;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/jar/JarFile;

    .restart local v15    # "jarFile":Ljava/util/jar/JarFile;
    goto/16 :goto_0

    .line 82
    .restart local v11    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v16    # "je":Ljava/util/jar/JarEntry;
    .restart local v17    # "localCerts":[Ljava/security/cert/Certificate;
    .restart local v18    # "name":Ljava/lang/String;
    :cond_4
    if-nez v3, :cond_5

    .line 83
    move-object/from16 v3, v17

    .local v3, "certs":[Ljava/security/cert/Certificate;
    goto/16 :goto_1

    .line 86
    .end local v3    # "certs":[Ljava/security/cert/Certificate;
    :cond_5
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_2

    .line 87
    const/4 v12, 0x0

    .line 88
    .local v12, "found":Z
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_3
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_6

    .line 89
    aget-object v21, v3, v13

    if-eqz v21, :cond_8

    .line 90
    aget-object v21, v3, v13

    aget-object v22, v17, v14

    invoke-virtual/range {v21 .. v22}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 89
    if-eqz v21, :cond_8

    .line 91
    const/4 v12, 0x1

    .line 95
    :cond_6
    if-eqz v12, :cond_7

    array-length v0, v3

    move/from16 v21, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    .line 96
    :cond_7
    sget-object v21, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "JarFile "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 97
    const-string/jumbo v23, " has mismatched certificates at entry "

    .line 96
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 98
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v23

    .line 96
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 98
    const-string/jumbo v23, "; ignoring!"

    .line 96
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->close()V

    .line 100
    const/16 v21, 0x0

    return v21

    .line 88
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 86
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 105
    .end local v12    # "found":Z
    .end local v13    # "i":I
    .end local v14    # "j":I
    .end local v16    # "je":Ljava/util/jar/JarEntry;
    .end local v17    # "localCerts":[Ljava/security/cert/Certificate;
    .end local v18    # "name":Ljava/lang/String;
    :cond_a
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->close()V

    .line 107
    const-class v21, Lmiui/util/CertificateUtils;

    monitor-enter v21
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    .line 108
    :try_start_3
    sput-object v20, Lmiui/util/CertificateUtils;->sReadBuffer:Ljava/lang/ref/WeakReference;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v21

    .line 111
    if-eqz v3, :cond_b

    array-length v0, v3

    move/from16 v21, v0

    if-lez v21, :cond_b

    .line 112
    array-length v2, v3

    .line 113
    .local v2, "N":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_4
    if-ge v13, v2, :cond_c

    .line 114
    new-instance v21, Landroid/content/pm/Signature;

    aget-object v22, v3, v13

    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/content/pm/Signature;-><init>([B)V

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 107
    .end local v2    # "N":I
    .end local v13    # "i":I
    :catchall_1
    move-exception v22

    monitor-exit v21

    throw v22
    :try_end_4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_1

    .line 121
    .end local v11    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v15    # "jarFile":Ljava/util/jar/JarFile;
    :catch_0
    move-exception v10

    .line 122
    .local v10, "e":Ljava/security/cert/CertificateEncodingException;
    sget-object v21, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception reading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    const/16 v21, 0x0

    return v21

    .line 117
    .end local v10    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v11    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v15    # "jarFile":Ljava/util/jar/JarFile;
    :cond_b
    :try_start_5
    sget-object v21, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "JarFile "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 118
    const-string/jumbo v23, " has no certificates; ignoring!"

    .line 117
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_1

    .line 119
    const/16 v21, 0x0

    return v21

    .line 139
    .end local v11    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v15    # "jarFile":Ljava/util/jar/JarFile;
    :catch_1
    move-exception v9

    .line 140
    .local v9, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v21, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception reading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    const/16 v21, 0x0

    return v21

    .line 136
    .end local v9    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v5

    .line 137
    .local v5, "e":Ljava/lang/IllegalAccessException;
    sget-object v21, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception reading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    const/16 v21, 0x0

    return v21

    .line 133
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v6

    .line 134
    .local v6, "e":Ljava/lang/InstantiationException;
    sget-object v21, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception reading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    const/16 v21, 0x0

    return v21

    .line 130
    .end local v6    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v7

    .line 131
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    sget-object v21, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception reading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    const/16 v21, 0x0

    return v21

    .line 127
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v8

    .line 128
    .local v8, "e":Ljava/lang/RuntimeException;
    sget-object v21, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception reading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    const/16 v21, 0x0

    return v21

    .line 124
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :catch_6
    move-exception v4

    .line 125
    .local v4, "e":Ljava/io/IOException;
    sget-object v21, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception reading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    const/16 v21, 0x0

    return v21

    .line 143
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "N":I
    .restart local v11    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v13    # "i":I
    .restart local v15    # "jarFile":Ljava/util/jar/JarFile;
    :cond_c
    const/16 v21, 0x1

    return v21
.end method

.method public static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 6
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v4, 0x0

    .line 147
    if-nez p0, :cond_1

    .line 148
    if-nez p1, :cond_0

    .line 149
    const/4 v3, 0x1

    .line 148
    :goto_0
    return v3

    .line 150
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 152
    :cond_1
    if-nez p1, :cond_2

    .line 153
    const/4 v3, -0x2

    return v3

    .line 155
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 156
    .local v0, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v5, p0

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v2, p0, v3

    .line 157
    .local v2, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 159
    .end local v2    # "sig":Landroid/content/pm/Signature;
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 160
    .local v1, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v5, p1

    move v3, v4

    :goto_2
    if-ge v3, v5, :cond_4

    aget-object v2, p1, v3

    .line 161
    .restart local v2    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 164
    .end local v2    # "sig":Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 165
    return v4

    .line 167
    :cond_5
    const/4 v3, -0x3

    return v3
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 7
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .param p1, "je"    # Ljava/util/jar/JarEntry;
    .param p2, "readBuffer"    # [B

    .prologue
    const/4 v3, 0x0

    .line 175
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 176
    .local v2, "is":Ljava/io/InputStream;
    :cond_0
    array-length v4, p2

    const/4 v5, 0x0

    invoke-virtual {v2, p2, v5, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 179
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 180
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_1
    return-object v3

    .line 184
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 186
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v6

    .line 185
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-object v3

    .line 181
    :catch_1
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 183
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v6

    .line 182
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
