.class public Landroid/graphics/TypefaceInjector;
.super Ljava/lang/Object;
.source "TypefaceInjector.java"


# static fields
.field private static final ANDROID_ROOT:Ljava/lang/String; = "/system"

.field private static final TAG:Ljava/lang/String; = "TypefaceInjetor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFontToFamily(Landroid/graphics/FontFamily;Landroid/graphics/FontListParser$Font;Ljava/util/Map;)Z
    .locals 19
    .param p0, "fontFamily"    # Landroid/graphics/FontFamily;
    .param p1, "font"    # Landroid/graphics/FontListParser$Font;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/FontFamily;",
            "Landroid/graphics/FontListParser$Font;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/TypefaceInjector;->replaceFontPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 23
    .local v17, "fontName":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 24
    .local v9, "fontBuffer":Ljava/nio/ByteBuffer;
    if-nez v9, :cond_4

    .line 25
    const/4 v8, 0x0

    const/4 v15, 0x0

    .local v15, "file":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v16, Ljava/io/FileInputStream;

    invoke-direct/range {v16 .. v17}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    .end local v15    # "file":Ljava/io/FileInputStream;
    .local v16, "file":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 27
    .local v2, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 28
    .local v6, "fontSize":J
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v9

    .line 29
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 33
    if-eqz v16, :cond_0

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v8, :cond_4

    :try_start_3
    throw v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 30
    :catch_0
    move-exception v14

    .local v14, "e":Ljava/io/IOException;
    move-object/from16 v15, v16

    .line 31
    .end local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "fontSize":J
    .end local v16    # "file":Ljava/io/FileInputStream;
    :goto_1
    const-string/jumbo v3, "TypefaceInjetor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error mapping font file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v3, 0x0

    return v3

    .line 33
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v6    # "fontSize":J
    .restart local v16    # "file":Ljava/io/FileInputStream;
    :catch_1
    move-exception v8

    goto :goto_0

    .end local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "fontSize":J
    .end local v16    # "file":Ljava/io/FileInputStream;
    .restart local v15    # "file":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    .end local v15    # "file":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    :goto_3
    if-eqz v15, :cond_1

    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_4
    if-eqz v4, :cond_3

    :try_start_6
    throw v4

    .line 30
    :catch_3
    move-exception v14

    .restart local v14    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 33
    .end local v14    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    if-nez v4, :cond_2

    move-object v4, v5

    goto :goto_4

    :cond_2
    if-eq v4, v5, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 35
    :cond_4
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/FontListParser$Font;->ttcIndex:I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/graphics/FontListParser$Font;->axes:Ljava/util/List;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/FontListParser$Font;->weight:I

    move-object/from16 v0, p1

    iget-boolean v13, v0, Landroid/graphics/FontListParser$Font;->isItalic:Z

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/FontFamily;->addFontWeightStyle(Ljava/nio/ByteBuffer;ILjava/util/List;IZ)Z

    move-result v3

    if-nez v3, :cond_5

    .line 36
    const-string/jumbo v3, "TypefaceInjetor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error creating font "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/FontListParser$Font;->ttcIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v3, 0x0

    return v3

    .line 39
    :cond_5
    const/4 v3, 0x1

    return v3

    .line 33
    .restart local v15    # "file":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v4, v8

    goto :goto_3

    .end local v15    # "file":Ljava/io/FileInputStream;
    .restart local v16    # "file":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v3

    move-object v4, v8

    move-object/from16 v15, v16

    .end local v16    # "file":Ljava/io/FileInputStream;
    .local v15, "file":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v15    # "file":Ljava/io/FileInputStream;
    .restart local v16    # "file":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object/from16 v15, v16

    .end local v16    # "file":Ljava/io/FileInputStream;
    .restart local v15    # "file":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static replaceFontPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string/jumbo v2, "/system"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    const-string/jumbo v2, "/system"

    const-string/jumbo v3, "/data/system/theme"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    move-object p0, v1

    .line 50
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    return-object p0
.end method
