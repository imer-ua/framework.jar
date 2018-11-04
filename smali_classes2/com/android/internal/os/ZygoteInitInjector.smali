.class Lcom/android/internal/os/ZygoteInitInjector;
.super Ljava/lang/Object;
.source "ZygoteInitInjector.java"


# static fields
.field private static final PRELOADED_MIUI_CLASSES:Ljava/lang/String; = "preloaded-miui-classes"

.field private static final PRELOADED_MIUI_CLASSES_FILE:Ljava/lang/String; = "/system/etc/preloaded-miui-classes"

.field private static final ROOT_GID:I = 0x0

.field private static final ROOT_UID:I = 0x0

.field private static final SECOND_ZYGOTE_NAME:Ljava/lang/String; = "zygote_secondary"

.field private static final TAG:Ljava/lang/String; = "ZygoteInitInjector"

.field private static final UNPRIVILEGED_GID:I = 0x270f

.field private static final UNPRIVILEGED_UID:I = 0x270f

.field private static processName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static preloadBoostFramework()V
    .locals 5

    .prologue
    .line 205
    :try_start_0
    const-string/jumbo v3, "android.util.BoostFramework"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 206
    .local v0, "clazz":Ljava/lang/Class;
    if-nez v0, :cond_0

    .line 207
    return-void

    .line 209
    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 210
    .local v1, "constuctor":Ljava/lang/reflect/Constructor;
    if-eqz v1, :cond_1

    .line 211
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_1
    const-string/jumbo v3, "ZygoteInitInjector"

    const-string/jumbo v4, "preload BoostFramework succeed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v1    # "constuctor":Ljava/lang/reflect/Constructor;
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v2

    .line 215
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ZygoteInitInjector"

    const-string/jumbo v4, "preload class android.util.BoostFramework failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static preloadGralloc()V
    .locals 9

    .prologue
    .line 186
    const-string/jumbo v3, "/system/lib/hw/gralloc."

    .line 187
    .local v3, "halPrefix32":Ljava/lang/String;
    const-string/jumbo v4, "/system/lib64/hw/gralloc."

    .line 188
    .local v4, "halPrefix64":Ljava/lang/String;
    const-string/jumbo v6, "ro.board.platform"

    const-string/jumbo v7, "default"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, "platform":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "gralloc32":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "gralloc64":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 194
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 195
    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v6, "ZygoteInitInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "failed load gralloc lib : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static preloadMiuiClasses()V
    .locals 26

    .prologue
    .line 85
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v12

    .line 86
    .local v12, "runtime":Ldalvik/system/VMRuntime;
    const-string/jumbo v19, "ZygoteInitInjector"

    const-string/jumbo v20, "Preload miui classes..."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v19

    .line 88
    const-string/jumbo v20, "preloaded-miui-classes"

    .line 87
    invoke-virtual/range {v19 .. v20}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 89
    .local v10, "is":Ljava/io/InputStream;
    if-nez v10, :cond_0

    .line 90
    const-string/jumbo v19, "ZygoteInitInjector"

    const-string/jumbo v20, "Couldn\'t find preloaded-miui-classes."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string/jumbo v19, "ZygoteInitInjector"

    const-string/jumbo v20, "Preloading miui classes..."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 97
    .local v14, "startTime":J
    const-class v19, Lcom/android/internal/os/ZygoteInit;

    const-string/jumbo v20, "UNPRIVILEGED_GID"

    const-class v21, Ljava/lang/Integer;

    invoke-static/range {v19 .. v21}, Lmiui/util/ReflectionUtils;->tryGetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v17

    .line 99
    .local v17, "unprivileged_gid":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    const-class v19, Lcom/android/internal/os/ZygoteInit;

    const-string/jumbo v20, "UNPRIVILEGED_UID"

    const-class v21, Ljava/lang/Integer;

    invoke-static/range {v19 .. v21}, Lmiui/util/ReflectionUtils;->tryGetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v18

    .line 100
    .local v18, "unprivileged_uid":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    const-class v20, Lcom/android/internal/os/ZygoteInit;

    const-string/jumbo v21, "setEffectiveGroup"

    .line 101
    const-class v22, Ljava/lang/Void;

    .line 100
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    .line 101
    invoke-virtual/range {v17 .. v17}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v24, 0x0

    aput-object v19, v23, v24

    .line 100
    invoke-static/range {v20 .. v23}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 102
    const-class v20, Lcom/android/internal/os/ZygoteInit;

    const-string/jumbo v21, "setEffectiveGroup"

    .line 103
    const-class v22, Ljava/lang/Void;

    .line 102
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    .line 103
    invoke-virtual/range {v18 .. v18}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v24, 0x0

    aput-object v19, v23, v24

    .line 102
    invoke-static/range {v20 .. v23}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 107
    invoke-virtual {v12}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v6

    .line 108
    .local v6, "defaultUtilization":F
    const v19, 0x3f4ccccd    # 0.8f

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 111
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 112
    invoke-virtual {v12}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 113
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 117
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v20, 0x100

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 119
    .local v4, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 121
    .local v5, "count":I
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, "line":Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 123
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 124
    const-string/jumbo v19, "#"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    if-nez v19, :cond_1

    .line 132
    :try_start_1
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 134
    const-class v19, Lcom/android/internal/os/ZygoteInit;

    const-string/jumbo v20, "PRELOAD_GC_THRESHOLD"

    const-class v21, Ljava/lang/Integer;

    .line 133
    invoke-static/range {v19 .. v21}, Lmiui/util/ReflectionUtils;->tryGetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v16

    .line 135
    .local v16, "threshold":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v20

    invoke-virtual/range {v16 .. v16}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 140
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 141
    invoke-virtual {v12}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 142
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 149
    .end local v16    # "threshold":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v13

    .line 150
    .local v13, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v19, "ZygoteInitInjector"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Error preloading "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    instance-of v0, v13, Ljava/lang/Error;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 152
    check-cast v13, Ljava/lang/Error;

    .end local v13    # "t":Ljava/lang/Throwable;
    throw v13
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "count":I
    .end local v11    # "line":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 164
    .local v7, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v19, "ZygoteInitInjector"

    const-string/jumbo v20, "Error reading preloaded-miui-classes."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 168
    invoke-virtual {v12, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 171
    invoke-virtual {v12}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 173
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 176
    const-class v20, Lcom/android/internal/os/ZygoteInit;

    .line 177
    const-string/jumbo v21, "setEffectiveGroup"

    const-class v22, Ljava/lang/Void;

    .line 176
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    .line 177
    invoke-virtual/range {v17 .. v17}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v24, 0x0

    aput-object v19, v23, v24

    .line 176
    invoke-static/range {v20 .. v23}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 178
    const-class v20, Lcom/android/internal/os/ZygoteInit;

    .line 179
    const-string/jumbo v21, "setEffectiveGroup"

    const-class v22, Ljava/lang/Void;

    .line 178
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    .line 179
    invoke-virtual/range {v18 .. v18}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v24, 0x0

    aput-object v19, v23, v24

    .line 178
    invoke-static/range {v20 .. v23}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    goto/16 :goto_0

    .line 154
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "count":I
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v13    # "t":Ljava/lang/Throwable;
    :cond_3
    :try_start_4
    instance-of v0, v13, Ljava/lang/RuntimeException;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 155
    check-cast v13, Ljava/lang/RuntimeException;

    .end local v13    # "t":Ljava/lang/Throwable;
    throw v13
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "count":I
    .end local v11    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v19

    move-object/from16 v20, v19

    .line 166
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 168
    invoke-virtual {v12, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 171
    invoke-virtual {v12}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 173
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 176
    const-class v21, Lcom/android/internal/os/ZygoteInit;

    .line 177
    const-string/jumbo v22, "setEffectiveGroup"

    const-class v23, Ljava/lang/Void;

    .line 176
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 177
    invoke-virtual/range {v17 .. v17}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v25, 0x0

    aput-object v19, v24, v25

    .line 176
    invoke-static/range {v21 .. v24}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 178
    const-class v21, Lcom/android/internal/os/ZygoteInit;

    .line 179
    const-string/jumbo v22, "setEffectiveGroup"

    const-class v23, Ljava/lang/Void;

    .line 178
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 179
    invoke-virtual/range {v18 .. v18}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v25, 0x0

    aput-object v19, v24, v25

    .line 178
    invoke-static/range {v21 .. v24}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 165
    throw v20

    .line 157
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "count":I
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v13    # "t":Ljava/lang/Throwable;
    :cond_4
    :try_start_5
    new-instance v19, Ljava/lang/RuntimeException;

    move-object/from16 v0, v19

    invoke-direct {v0, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 147
    .end local v13    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v9

    .line 148
    .local v9, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v19, "ZygoteInitInjector"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Problem preloading "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 145
    .end local v9    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_3
    move-exception v8

    .line 146
    .local v8, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v19, "ZygoteInitInjector"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Class not found for preloading: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 161
    .end local v8    # "e":Ljava/lang/ClassNotFoundException;
    :cond_5
    const-string/jumbo v19, "ZygoteInitInjector"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "...preloaded "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " classes in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v14

    .line 161
    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 162
    const-string/jumbo v21, "ms."

    .line 161
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 166
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 168
    invoke-virtual {v12, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 171
    invoke-virtual {v12}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 173
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 176
    const-class v20, Lcom/android/internal/os/ZygoteInit;

    .line 177
    const-string/jumbo v21, "setEffectiveGroup"

    const-class v22, Ljava/lang/Void;

    .line 176
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    .line 177
    invoke-virtual/range {v17 .. v17}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v24, 0x0

    aput-object v19, v23, v24

    .line 176
    invoke-static/range {v20 .. v23}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 178
    const-class v20, Lcom/android/internal/os/ZygoteInit;

    .line 179
    const-string/jumbo v21, "setEffectiveGroup"

    const-class v22, Ljava/lang/Void;

    .line 178
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    .line 179
    invoke-virtual/range {v18 .. v18}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v24, 0x0

    aput-object v19, v23, v24

    .line 178
    invoke-static/range {v20 .. v23}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    goto/16 :goto_0
.end method

.method private static preloadMiuiClassesHigherThanL()V
    .locals 27

    .prologue
    .line 229
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v17

    .line 233
    .local v17, "runtime":Ldalvik/system/VMRuntime;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    const-string/jumbo v21, "/system/etc/preloaded-miui-classes"

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .local v12, "is":Ljava/io/InputStream;
    const-string/jumbo v21, "ZygoteInitInjector"

    const-string/jumbo v22, "Preloading classes..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 243
    .local v18, "startTime":J
    const-string/jumbo v21, "android.system.Os"

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lmiui/util/ReflectionUtils;->tryFindClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v14

    .line 244
    .local v14, "os":Ljava/lang/Class;
    if-nez v14, :cond_0

    .line 245
    const-string/jumbo v21, "ZygoteInitInjector"

    const-string/jumbo v22, "class android.system.Os is not found."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 247
    return-void

    .line 234
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v14    # "os":Ljava/lang/Class;
    .end local v18    # "startTime":J
    :catch_0
    move-exception v8

    .line 235
    .local v8, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v21, "ZygoteInitInjector"

    const-string/jumbo v22, "Couldn\'t find /system/etc/preloaded-miui-classes."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void

    .line 249
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .restart local v12    # "is":Ljava/io/InputStream;
    .restart local v14    # "os":Ljava/lang/Class;
    .restart local v18    # "startTime":J
    :cond_0
    const-string/jumbo v21, "getuid"

    const-class v22, Ljava/lang/Integer;

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v14, v0, v1, v2}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 250
    .local v16, "reuid":I
    const-string/jumbo v21, "getgid"

    const-class v22, Ljava/lang/Integer;

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v14, v0, v1, v2}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 255
    .local v15, "regid":I
    const/4 v7, 0x0

    .line 256
    .local v7, "droppedPriviliges":Z
    if-nez v16, :cond_1

    if-nez v15, :cond_1

    .line 258
    const-string/jumbo v21, "setregid"

    const-class v22, Ljava/lang/Void;

    .line 257
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    .line 258
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    const/16 v24, 0x270f

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x1

    aput-object v24, v23, v25

    .line 257
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v14, v0, v1, v2}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 260
    const-string/jumbo v21, "setreuid"

    const-class v22, Ljava/lang/Void;

    .line 259
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    .line 260
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    const/16 v24, 0x270f

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x1

    aput-object v24, v23, v25

    .line 259
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v14, v0, v1, v2}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 261
    const/4 v7, 0x1

    .line 266
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v6

    .line 267
    .local v6, "defaultUtilization":F
    const v21, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 271
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v22, 0x100

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 273
    .local v4, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 275
    .local v5, "count":I
    :cond_2
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, "line":Ljava/lang/String;
    if-eqz v13, :cond_7

    .line 277
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 278
    const-string/jumbo v21, "#"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string/jumbo v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 282
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "PreloadClass "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-wide/16 v22, 0x4000

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    const/16 v21, 0x1

    const/16 v22, 0x0

    :try_start_2
    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v13, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    add-int/lit8 v5, v5, 0x1

    .line 308
    :goto_1
    const-wide/16 v22, 0x4000

    :try_start_3
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 313
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "count":I
    .end local v13    # "line":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 314
    .local v9, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v21, "ZygoteInitInjector"

    const-string/jumbo v22, "Error reading /system/etc/preloaded-miui-classes."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 316
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 318
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 321
    const-string/jumbo v21, "PreloadDexCaches"

    const-wide/16 v22, 0x4000

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 322
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 323
    const-wide/16 v22, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 326
    if-eqz v7, :cond_3

    .line 328
    const-string/jumbo v21, "setreuid"

    const-class v22, Ljava/lang/Void;

    .line 327
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    .line 328
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x1

    aput-object v24, v23, v25

    .line 327
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v14, v0, v1, v2}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 330
    const-string/jumbo v21, "setregid"

    const-class v22, Ljava/lang/Void;

    .line 329
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    .line 330
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x1

    aput-object v24, v23, v25

    .line 329
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v14, v0, v1, v2}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 228
    .end local v9    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    return-void

    .line 298
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "count":I
    .restart local v13    # "line":Ljava/lang/String;
    :catch_2
    move-exception v20

    .line 299
    .local v20, "t":Ljava/lang/Throwable;
    :try_start_5
    const-string/jumbo v21, "ZygoteInitInjector"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Error preloading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Error;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 301
    check-cast v20, Ljava/lang/Error;

    .end local v20    # "t":Ljava/lang/Throwable;
    throw v20
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 315
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "count":I
    .end local v13    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v21

    .line 316
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 318
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 321
    const-string/jumbo v22, "PreloadDexCaches"

    const-wide/16 v24, 0x4000

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 322
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 323
    const-wide/16 v22, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 326
    if-eqz v7, :cond_4

    .line 328
    const-string/jumbo v22, "setreuid"

    const-class v23, Ljava/lang/Void;

    .line 327
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 328
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x1

    aput-object v25, v24, v26

    .line 327
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v14, v0, v1, v2}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 330
    const-string/jumbo v22, "setregid"

    const-class v23, Ljava/lang/Void;

    .line 329
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 330
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x1

    aput-object v25, v24, v26

    .line 329
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v14, v0, v1, v2}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 315
    :cond_4
    throw v21

    .line 303
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "count":I
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v20    # "t":Ljava/lang/Throwable;
    :cond_5
    :try_start_6
    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/RuntimeException;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 304
    check-cast v20, Ljava/lang/RuntimeException;

    .end local v20    # "t":Ljava/lang/Throwable;
    throw v20

    .line 306
    .restart local v20    # "t":Ljava/lang/Throwable;
    :cond_6
    new-instance v21, Ljava/lang/RuntimeException;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v21

    .line 296
    .end local v20    # "t":Ljava/lang/Throwable;
    :catch_3
    move-exception v11

    .line 297
    .local v11, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v21, "ZygoteInitInjector"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Problem preloading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ": "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 294
    .end local v11    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_4
    move-exception v10

    .line 295
    .local v10, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v21, "ZygoteInitInjector"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Class not found for preloading: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 311
    .end local v10    # "e":Ljava/lang/ClassNotFoundException;
    :cond_7
    const-string/jumbo v21, "ZygoteInitInjector"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "...preloaded "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " classes in "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 312
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v18

    .line 311
    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 312
    const-string/jumbo v23, "ms."

    .line 311
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 316
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 318
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 321
    const-string/jumbo v21, "PreloadDexCaches"

    const-wide/16 v22, 0x4000

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 322
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 323
    const-wide/16 v22, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 326
    if-eqz v7, :cond_3

    .line 328
    const-string/jumbo v21, "setreuid"

    const-class v22, Ljava/lang/Void;

    .line 327
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    .line 328
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x1

    aput-object v24, v23, v25

    .line 327
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v14, v0, v1, v2}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 330
    const-string/jumbo v21, "setregid"

    const-class v22, Ljava/lang/Void;

    .line 329
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    .line 330
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x1

    aput-object v24, v23, v25

    .line 329
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v14, v0, v1, v2}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    goto/16 :goto_2
.end method

.method static preloadMiuiFeatures()V
    .locals 2

    .prologue
    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 63
    invoke-static {}, Lcom/android/internal/os/ZygoteInitInjector;->preloadBoostFramework()V

    .line 66
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 68
    invoke-static {}, Lcom/android/internal/os/ZygoteInitInjector;->preloadMiuiClassesHigherThanL()V

    .line 60
    :cond_1
    return-void
.end method

.method static preloadMiuiResources(Landroid/content/res/Resources;)V
    .locals 10
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 39
    const-string/jumbo v3, "zygote_secondary"

    sget-object v6, Lcom/android/internal/os/ZygoteInitInjector;->processName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    const-string/jumbo v3, "ZygoteInitInjector"

    const-string/jumbo v6, "skip the second zygote 32 preload miui resource"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void

    .line 45
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 46
    .local v4, "startTime":J
    sget v3, Lmiui/R$array;->preloaded_drawables:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 47
    .local v1, "ar":Landroid/content/res/TypedArray;
    const-class v3, Lcom/android/internal/os/ZygoteInit;

    const-string/jumbo v6, "preloadDrawables"

    const-class v7, Ljava/lang/Integer;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 48
    const/4 v9, 0x0

    aput-object v1, v8, v9

    .line 47
    invoke-static {v3, v6, v7, v8}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v2

    .line 49
    .local v2, "result":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 50
    .local v0, "N":I
    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {v2}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 53
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    const-string/jumbo v3, "ZygoteInitInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "...preloaded "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " miui sdk resources in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    .line 54
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 55
    const-string/jumbo v7, "ms."

    .line 54
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Lcom/android/internal/os/ZygoteInitInjector;->preloadMiuiFeatures()V

    .line 38
    return-void
.end method

.method static preloadSharedLibraries()V
    .locals 2

    .prologue
    .line 77
    const-string/jumbo v0, "zygote_secondary"

    sget-object v1, Lcom/android/internal/os/ZygoteInitInjector;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const-string/jumbo v0, "themeutils_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v0, "shell"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 80
    const-string/jumbo v0, "shell_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method static setProcessName(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    sput-object p0, Lcom/android/internal/os/ZygoteInitInjector;->processName:Ljava/lang/String;

    .line 72
    return-void
.end method
