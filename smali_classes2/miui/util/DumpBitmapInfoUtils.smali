.class public Lmiui/util/DumpBitmapInfoUtils;
.super Ljava/lang/Object;
.source "DumpBitmapInfoUtils.java"


# static fields
.field static final ENABLE:Z

.field static sBitmapThresholdSize:I

.field static sBitmapTitles:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field static sCurrProcess:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string/jumbo v0, "DumpBitmapInfo"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/MiuiFeatureUtils;->isSystemFeatureSupported(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/util/DumpBitmapInfoUtils;->ENABLE:Z

    .line 40
    sget-boolean v0, Lmiui/util/DumpBitmapInfoUtils;->ENABLE:Z

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    .line 32
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpBitmapInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 38
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 68
    sget-boolean v29, Lmiui/util/DumpBitmapInfoUtils;->ENABLE:Z

    if-nez v29, :cond_0

    return-void

    .line 70
    :cond_0
    const/16 v17, 0x0

    .line 71
    .local v17, "isDumpBitmap":Z
    const/16 v18, 0x0

    .line 72
    .local v18, "isExportBitmap":Z
    const/16 v20, 0x0

    .line 73
    .local v20, "isNoGC":Z
    const/16 v19, 0x0

    .line 74
    .local v19, "isIncludePreload":Z
    const/16 v27, 0x0

    .line 75
    .local v27, "recycleBmp":I
    const/16 v29, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    :goto_0
    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_9

    aget-object v4, p1, v29

    .line 76
    .local v4, "arg":Ljava/lang/String;
    const-string/jumbo v33, "--bitmap"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_1

    const-string/jumbo v33, "-b"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2

    :cond_1
    const/16 v17, 0x1

    .line 77
    :cond_2
    const-string/jumbo v33, "--exportbitmap"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_3

    const-string/jumbo v33, "-e"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_4

    :cond_3
    const/16 v18, 0x1

    .line 78
    :cond_4
    const-string/jumbo v33, "--nogc"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_5

    const/16 v20, 0x1

    .line 79
    :cond_5
    const-string/jumbo v33, "--includepreload"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_6

    const/16 v19, 0x1

    .line 80
    :cond_6
    const-string/jumbo v33, "--recycle:"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_7

    .line 81
    const-string/jumbo v33, "--recycle:0x"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_8

    .line 82
    const-string/jumbo v33, "--recycle:0x"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x10

    invoke-static/range {v33 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v27

    .line 75
    :cond_7
    :goto_1
    add-int/lit8 v29, v29, 0x1

    goto :goto_0

    .line 84
    :cond_8
    const-string/jumbo v33, "--recycle:"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x10

    invoke-static/range {v33 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v27

    goto :goto_1

    .line 88
    .end local v4    # "arg":Ljava/lang/String;
    :cond_9
    if-nez v17, :cond_a

    if-eqz v18, :cond_f

    .line 90
    :cond_a
    if-nez v20, :cond_b

    .line 91
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 95
    :cond_b
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v29

    if-eqz v29, :cond_c

    .line 96
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    .line 95
    if-nez v29, :cond_c

    .line 97
    const-string/jumbo v29, "system"

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    .line 95
    if-eqz v29, :cond_10

    .line 98
    :cond_c
    new-instance v13, Ljava/io/File;

    const-string/jumbo v29, "/data/system/_exportbitmap/"

    move-object/from16 v0, v29

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v13, "exportBitmapFolder":Ljava/io/File;
    :goto_2
    if-eqz v18, :cond_d

    .line 104
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_11

    .line 105
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 115
    :cond_d
    :goto_3
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 116
    .local v15, "fout":Ljava/io/FileOutputStream;
    new-instance v26, Lcom/android/internal/util/FastPrintWriter;

    move-object/from16 v0, v26

    invoke-direct {v0, v15}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 118
    .local v26, "pw":Ljava/io/PrintWriter;
    const-wide/16 v30, 0x0

    .line 119
    .local v30, "totalSize":J
    const/4 v5, 0x0

    .line 122
    .local v5, "bitmapCount":I
    :try_start_0
    sget-object v32, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    monitor-enter v32
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 123
    :try_start_1
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v22, "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    sget-object v29, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    invoke-virtual/range {v29 .. v29}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "entry$iterator":Ljava/util/Iterator;
    :cond_e
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 125
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    new-instance v24, Ljava/util/AbstractMap$SimpleEntry;

    move-object/from16 v0, v24

    invoke-direct {v0, v10}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/util/Map$Entry;)V

    .line 126
    .local v24, "newEntry":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap$SimpleEntry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v29

    if-eqz v29, :cond_e

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 122
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    .end local v11    # "entry$iterator":Ljava/util/Iterator;
    .end local v22    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    .end local v24    # "newEntry":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap$SimpleEntry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    :catchall_0
    move-exception v29

    :try_start_2
    monitor-exit v32

    throw v29
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 186
    :catchall_1
    move-exception v29

    .line 187
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 186
    throw v29

    .line 88
    .end local v5    # "bitmapCount":I
    .end local v13    # "exportBitmapFolder":Ljava/io/File;
    .end local v15    # "fout":Ljava/io/FileOutputStream;
    .end local v26    # "pw":Ljava/io/PrintWriter;
    .end local v30    # "totalSize":J
    :cond_f
    return-void

    .line 100
    :cond_10
    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v29

    .line 101
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "_exportbitmap/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 100
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v13    # "exportBitmapFolder":Ljava/io/File;
    goto/16 :goto_2

    .line 108
    :cond_11
    :try_start_3
    invoke-static {v13}, Llibcore/io/IoUtils;->deleteContents(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 109
    :catch_0
    move-exception v12

    .line 110
    .local v12, "ex":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .end local v12    # "ex":Ljava/lang/Exception;
    .restart local v5    # "bitmapCount":I
    .restart local v11    # "entry$iterator":Ljava/util/Iterator;
    .restart local v15    # "fout":Ljava/io/FileOutputStream;
    .restart local v22    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    .restart local v26    # "pw":Ljava/io/PrintWriter;
    .restart local v30    # "totalSize":J
    :cond_12
    :try_start_4
    monitor-exit v32

    .line 130
    new-instance v29, Lmiui/util/DumpBitmapInfoUtils$1;

    invoke-direct/range {v29 .. v29}, Lmiui/util/DumpBitmapInfoUtils$1;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 136
    const-string/jumbo v29, "All big bitmaps (debug.bitmap_threshold_size = %d k):\n"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    sget v33, Lmiui/util/DumpBitmapInfoUtils;->sBitmapThresholdSize:I

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x0

    aput-object v33, v32, v34

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 138
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v25

    .line 140
    .local v25, "preloadDrawables":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "bmpTitle$iterator":Ljava/util/Iterator;
    :cond_13
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_19

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 141
    .local v7, "bmpTitle":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 142
    .local v6, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v29

    if-nez v29, :cond_13

    .line 144
    const/16 v21, 0x0

    .line 145
    .local v21, "isPreload":Z
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_6
    invoke-virtual/range {v25 .. v25}, Landroid/util/LongSparseArray;->size()I

    move-result v29

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_14

    .line 146
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 147
    .local v9, "c":Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-static {v9}, Lmiui/util/DumpBitmapInfoUtils;->getBitmapFromDrawableState(Landroid/graphics/drawable/Drawable$ConstantState;)Landroid/graphics/Bitmap;

    move-result-object v29

    move-object/from16 v0, v29

    if-ne v0, v6, :cond_18

    .line 148
    const/16 v21, 0x1

    .line 152
    .end local v9    # "c":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_14
    if-eqz v21, :cond_15

    if-eqz v19, :cond_13

    .line 154
    :cond_15
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v32, v0

    add-long v30, v30, v32

    .line 155
    add-int/lit8 v5, v5, 0x1

    .line 157
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/CharSequence;

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v21

    invoke-static {v6, v0, v1, v2}, Lmiui/util/DumpBitmapInfoUtils;->getBitmapMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;ZZ)Ljava/lang/String;

    move-result-object v23

    .line 158
    .local v23, "msg":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "  "

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 160
    if-eqz v18, :cond_16

    .line 162
    :try_start_5
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v32, "_"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/CharSequence;

    const/16 v33, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v33

    move/from16 v2, v21

    invoke-static {v6, v0, v1, v2}, Lmiui/util/DumpBitmapInfoUtils;->getBitmapMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;ZZ)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 163
    .local v14, "fileName":Ljava/lang/String;
    new-instance v28, Ljava/io/FileOutputStream;

    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    invoke-direct {v0, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct/range {v28 .. v29}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 164
    .local v28, "stream":Ljava/io/FileOutputStream;
    sget-object v29, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v32, 0x64

    move-object/from16 v0, v29

    move/from16 v1, v32

    move-object/from16 v2, v28

    invoke-virtual {v6, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 165
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 172
    .end local v14    # "fileName":Ljava/lang/String;
    .end local v28    # "stream":Ljava/io/FileOutputStream;
    :cond_16
    :goto_7
    if-eqz v27, :cond_17

    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    .line 173
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 174
    const-string/jumbo v29, "  now recycled."

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 177
    :cond_17
    const/16 v29, 0xa

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastPrintWriter;->print(C)V

    goto/16 :goto_5

    .line 145
    .end local v23    # "msg":Ljava/lang/String;
    .restart local v9    # "c":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_18
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 166
    .end local v9    # "c":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v23    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 167
    .restart local v12    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 168
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 180
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local v7    # "bmpTitle":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    .end local v12    # "ex":Ljava/lang/Exception;
    .end local v16    # "i":I
    .end local v21    # "isPreload":Z
    .end local v23    # "msg":Ljava/lang/String;
    :cond_19
    const-string/jumbo v29, "Total count: %d, size: %dM\n"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x0

    aput-object v33, v32, v34

    const-wide/16 v34, 0x400

    div-long v34, v30, v34

    const-wide/16 v36, 0x400

    div-long v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    const/16 v34, 0x1

    aput-object v33, v32, v34

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 181
    if-eqz v18, :cond_1a

    .line 182
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Export bitmap. Path: "

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v32, "\n"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 183
    const-string/jumbo v29, "DumpBitmapInfo"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Export bitmaps finished. Path: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1a
    const-string/jumbo v29, "\n"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 187
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 67
    return-void
.end method

.method private static formatMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 5
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "isPreload"    # Z

    .prologue
    .line 240
    const-string/jumbo v0, "0x%8x %,6dk %dx%d %s %s"

    .line 241
    .local v0, "msgFormat":Ljava/lang/String;
    const-string/jumbo v2, "0x%8x %,6dk %dx%d %s %s"

    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/Object;

    .line 242
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    div-int/lit16 v1, v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 243
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v3, v4

    if-eqz p2, :cond_0

    const-string/jumbo v1, "preload"

    :goto_0
    const/4 v4, 0x4

    aput-object v1, v3, v4

    .line 244
    if-nez p1, :cond_1

    const-string/jumbo v1, ""

    :goto_1
    const/4 v4, 0x5

    aput-object v1, v3, v4

    .line 241
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 243
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0

    .line 244
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static getBitmapFromDrawableState(Landroid/graphics/drawable/Drawable$ConstantState;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "c"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    const/4 v6, 0x0

    .line 220
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "clsName":Ljava/lang/String;
    const-string/jumbo v4, "BitmapState"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "mBitmap"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 223
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 224
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    return-object v4

    .line 225
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :cond_0
    const-string/jumbo v4, "NinePatchState"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "mNinePatch"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 227
    .restart local v2    # "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 228
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/NinePatch;

    .line 229
    .local v3, "np":Landroid/graphics/NinePatch;
    if-nez v3, :cond_1

    return-object v6

    .line 230
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 232
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "np":Landroid/graphics/NinePatch;
    :cond_2
    return-object v6

    .line 233
    .end local v0    # "clsName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 234
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 235
    return-object v6
.end method

.method private static getBitmapMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;ZZ)Ljava/lang/String;
    .locals 7
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "forFileName"    # Z
    .param p3, "isPreload"    # Z

    .prologue
    const/16 v6, 0x2d

    .line 202
    invoke-static {p0, p1, p3}, Lmiui/util/DumpBitmapInfoUtils;->formatMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "msg":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 205
    return-object v1

    .line 208
    :cond_0
    const/16 v0, 0xf0

    .line 209
    .local v0, "maxFileNameLen":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v2, v3, -0xf0

    .line 210
    .local v2, "overLength":I
    if-lez v2, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 211
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-static {p0, p1, p3}, Lmiui/util/DumpBitmapInfoUtils;->formatMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v1

    .line 215
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x20

    const/16 v5, 0x5f

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5c

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static isTrackingNeeded(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 192
    sget v1, Lmiui/util/DumpBitmapInfoUtils;->sCurrProcess:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 193
    const-string/jumbo v1, "debug.bitmap_threshold_size"

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lmiui/util/DumpBitmapInfoUtils;->sBitmapThresholdSize:I

    .line 194
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    sput v1, Lmiui/util/DumpBitmapInfoUtils;->sCurrProcess:I

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit16 v0, v1, 0x100

    .line 198
    .local v0, "size":I
    sget v1, Lmiui/util/DumpBitmapInfoUtils;->sBitmapThresholdSize:I

    if-lt v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static putBitmap(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 49
    sget-boolean v1, Lmiui/util/DumpBitmapInfoUtils;->ENABLE:Z

    if-nez v1, :cond_0

    return-void

    .line 51
    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 54
    :cond_1
    :try_start_0
    invoke-static {p0}, Lmiui/util/DumpBitmapInfoUtils;->isTrackingNeeded(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 56
    :cond_2
    sget-object v2, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :try_start_1
    sget-object v1, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    .line 48
    :goto_0
    return-void

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
