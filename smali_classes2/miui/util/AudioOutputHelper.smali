.class public Lmiui/util/AudioOutputHelper;
.super Ljava/lang/Object;
.source "AudioOutputHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/AudioOutputHelper$AudioOutputClient;,
        Lmiui/util/AudioOutputHelper$CompatCollector;,
        Lmiui/util/AudioOutputHelper$DUMP_TAG;,
        Lmiui/util/AudioOutputHelper$LPCollector;,
        Lmiui/util/AudioOutputHelper$Result;,
        Lmiui/util/AudioOutputHelper$TrackCollector;
    }
.end annotation


# static fields
.field private static COLLECTOR:Lmiui/util/AudioOutputHelper$TrackCollector; = null

.field private static final COLLECTOR_COMPAT:Lmiui/util/AudioOutputHelper$TrackCollector;

.field private static final COLLECTOR_LP:Lmiui/util/AudioOutputHelper$TrackCollector;

.field private static final DEFAULT_TEMP_FILE:Ljava/lang/String; = "audio_flinger_%d_%d_%d.dump"

.field private static final TAG:Ljava/lang/String;

.field static final UNHANDLED:Lmiui/util/AudioOutputHelper$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    const-class v0, Lmiui/util/AudioOutputHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    .line 339
    sput-object v2, Lmiui/util/AudioOutputHelper;->COLLECTOR:Lmiui/util/AudioOutputHelper$TrackCollector;

    .line 340
    new-instance v0, Lmiui/util/AudioOutputHelper$LPCollector;

    invoke-direct {v0}, Lmiui/util/AudioOutputHelper$LPCollector;-><init>()V

    sput-object v0, Lmiui/util/AudioOutputHelper;->COLLECTOR_LP:Lmiui/util/AudioOutputHelper$TrackCollector;

    .line 341
    new-instance v0, Lmiui/util/AudioOutputHelper$CompatCollector;

    invoke-direct {v0}, Lmiui/util/AudioOutputHelper$CompatCollector;-><init>()V

    sput-object v0, Lmiui/util/AudioOutputHelper;->COLLECTOR_COMPAT:Lmiui/util/AudioOutputHelper$TrackCollector;

    .line 353
    new-instance v0, Lmiui/util/AudioOutputHelper$Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/util/AudioOutputHelper$Result;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lmiui/util/AudioOutputHelper;->UNHANDLED:Lmiui/util/AudioOutputHelper$Result;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static collectSessions(Ljava/io/BufferedReader;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 77
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 78
    sget-object v4, Lmiui/util/AudioOutputHelper$DUMP_TAG;->SESSIONS_CONTENT_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 79
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_1

    .line 88
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    return-object v0

    .line 83
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 84
    .local v3, "sessionId":I
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 85
    .local v2, "pid":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getActiveClientProcessList(Ljava/util/List;Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "addMainProc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v8, 0x0

    .line 242
    if-nez p0, :cond_0

    .line 243
    return-object v8

    .line 246
    :cond_0
    invoke-static {p1}, Lmiui/util/AudioOutputHelper;->parseAudioFlingerDump(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 247
    .local v3, "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    if-nez v3, :cond_1

    .line 248
    return-object v8

    .line 251
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v0, "actives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "c$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/AudioOutputHelper$AudioOutputClient;

    .line 253
    .local v1, "c":Lmiui/util/AudioOutputHelper$AudioOutputClient;
    iget-boolean v8, v1, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mActive:Z

    if-eqz v8, :cond_2

    .line 254
    iget v5, v1, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mProcessId:I

    .line 255
    .local v5, "pid":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "proc$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 256
    .local v6, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v8, v5, :cond_3

    .line 257
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    .end local v1    # "c":Lmiui/util/AudioOutputHelper$AudioOutputClient;
    .end local v5    # "pid":I
    .end local v6    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v7    # "proc$iterator":Ljava/util/Iterator;
    :cond_4
    if-eqz p2, :cond_5

    .line 266
    invoke-static {v0, p0}, Lmiui/util/AudioOutputHelper;->getMainProcessNames(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 267
    .local v4, "mainProc":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 270
    .end local v4    # "mainProc":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_5
    return-object v0
.end method

.method public static getActiveReceiverNameList(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 280
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 282
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 281
    invoke-interface {v9, v3, v10, v11, v12}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v7

    .line 283
    .local v7, "receivers":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 284
    :cond_0
    return-object v13

    .line 288
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    .line 287
    invoke-static {v9, p0, v10}, Lmiui/util/AudioOutputHelper;->getActiveClientProcessList(Ljava/util/List;Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v6

    .line 289
    .local v6, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 290
    :cond_2
    return-object v13

    .line 293
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "p$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 295
    .local v4, "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {v7}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 296
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_5

    .line 297
    iget-object v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v10, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 296
    if-eqz v9, :cond_5

    .line 298
    iget-object v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5    # "p$iterator":Ljava/util/Iterator;
    .end local v6    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v7    # "receivers":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    return-object v13

    .line 304
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "p$iterator":Ljava/util/Iterator;
    .restart local v6    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v7    # "receivers":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    return-object v8
.end method

.method private static getMainProcessNames(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "actives":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .local p1, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v9, 0x0

    .line 323
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v6, "mainProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "active$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 325
    .local v0, "active":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 326
    .local v2, "colonIndex":I
    if-lez v2, :cond_0

    .line 327
    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, "mainName":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 329
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 330
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    .end local v0    # "active":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "colonIndex":I
    .end local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "info$iterator":Ljava/util/Iterator;
    .end local v5    # "mainName":Ljava/lang/String;
    :cond_2
    return-object v6
.end method

.method public static hasActiveReceivers(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 317
    invoke-static {p0}, Lmiui/util/AudioOutputHelper;->getActiveReceiverNameList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 318
    .local v0, "processes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isStandBy(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 229
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v1, "yes"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method public static parseAudioFlingerDump(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/util/AudioOutputHelper$AudioOutputClient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, "dir":Ljava/io/File;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    .end local v0    # "dir":Ljava/io/File;
    :goto_0
    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/io/File;

    const-string/jumbo v7, "/cache"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 109
    .local v5, "pid":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    .line 111
    .local v8, "tid":J
    new-instance v1, Ljava/io/File;

    const-string/jumbo v7, "audio_flinger_%d_%d_%d.dump"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 110
    const/4 v11, 0x0

    .line 111
    const/4 v3, 0x1

    .local v3, "i":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    .local v1, "dumpFile":Ljava/io/File;
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 113
    new-instance v1, Ljava/io/File;

    .end local v1    # "dumpFile":Ljava/io/File;
    const-string/jumbo v7, "audio_flinger_%d_%d_%d.dump"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "dumpFile":Ljava/io/File;
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 101
    .end local v1    # "dumpFile":Ljava/io/File;
    .end local v3    # "i":I
    .end local v5    # "pid":I
    .end local v8    # "tid":J
    .restart local v0    # "dir":Ljava/io/File;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 116
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "dumpFile":Ljava/io/File;
    .restart local v3    # "i":I
    .restart local v5    # "pid":I
    .restart local v8    # "tid":J
    :cond_1
    invoke-static {v1}, Lmiui/util/AudioOutputHelper;->parseAudioFlingerDumpInternal(Ljava/io/File;)Ljava/util/List;

    move-result-object v6

    .line 117
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 119
    return-object v6
.end method

.method private static parseAudioFlingerDumpInternal(Ljava/io/File;)Ljava/util/List;
    .locals 24
    .param p0, "tempFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/util/AudioOutputHelper$AudioOutputClient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    const/4 v12, 0x0

    .line 125
    .local v12, "os":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v12    # "os":Ljava/io/FileOutputStream;
    .local v13, "os":Ljava/io/FileOutputStream;
    :try_start_1
    const-string/jumbo v21, "media.audio_flinger"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_15
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 136
    if-eqz v13, :cond_0

    .line 138
    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v12, v13

    .line 144
    .end local v13    # "os":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    const/4 v10, 0x0

    .line 146
    .local v10, "in":Ljava/io/InputStream;
    :try_start_3
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_11

    .end local v10    # "in":Ljava/io/InputStream;
    .local v11, "in":Ljava/io/InputStream;
    move-object v10, v11

    .line 150
    .end local v11    # "in":Ljava/io/InputStream;
    :goto_2
    if-nez v10, :cond_3

    .line 151
    const/16 v21, 0x0

    return-object v21

    .line 139
    .restart local v13    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    goto :goto_0

    .line 133
    .end local v7    # "e":Ljava/io/IOException;
    .end local v13    # "os":Ljava/io/FileOutputStream;
    .restart local v12    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v8

    .line 134
    .end local v12    # "os":Ljava/io/FileOutputStream;
    .local v8, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    sget-object v21, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    if-eqz v12, :cond_1

    .line 138
    :try_start_5
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 139
    :catch_2
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 131
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v12    # "os":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v7

    .line 132
    .end local v12    # "os":Ljava/io/FileOutputStream;
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    sget-object v21, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 136
    if-eqz v12, :cond_1

    .line 138
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 139
    :catch_4
    move-exception v7

    goto :goto_1

    .line 129
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v12    # "os":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v5

    .line 130
    .end local v12    # "os":Ljava/io/FileOutputStream;
    .local v5, "e":Landroid/os/RemoteException;
    :goto_5
    :try_start_8
    sget-object v21, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 136
    if-eqz v12, :cond_1

    .line 138
    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_1

    .line 139
    :catch_6
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 127
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v12    # "os":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v6

    .line 128
    .end local v12    # "os":Ljava/io/FileOutputStream;
    .local v6, "e":Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_a
    sget-object v21, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 136
    if-eqz v12, :cond_1

    .line 138
    :try_start_b
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_1

    .line 139
    :catch_8
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 135
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    .line 136
    :goto_7
    if-eqz v12, :cond_2

    .line 138
    :try_start_c
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 135
    :cond_2
    :goto_8
    throw v21

    .line 139
    :catch_9
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 154
    .end local v7    # "e":Ljava/io/IOException;
    :cond_3
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 156
    .local v15, "reader":Ljava/io/BufferedReader;
    :try_start_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v2, "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    const/16 v16, 0x0

    .line 158
    .local v16, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v18, 0x0

    .line 160
    .local v18, "standby":Z
    const/4 v4, 0x0

    .line 161
    .local v4, "content":Ljava/lang/String;
    const/16 v17, 0x0

    .line 163
    .end local v4    # "content":Ljava/lang/String;
    .end local v16    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v18    # "standby":Z
    :cond_4
    :goto_9
    if-eqz v17, :cond_7

    .line 164
    move-object/from16 v4, v17

    .line 165
    .local v4, "content":Ljava/lang/String;
    const/16 v17, 0x0

    .line 173
    :cond_5
    sget-object v21, Lmiui/util/AudioOutputHelper$DUMP_TAG;->SESSIONS_HEAD_FINDER:Ljava/util/regex/Pattern;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->matches()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 174
    if-nez v16, :cond_6

    .line 175
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 177
    :cond_6
    invoke-static/range {v15 .. v16}, Lmiui/util/AudioOutputHelper;->collectSessions(Ljava/io/BufferedReader;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v17

    .local v17, "skipped":Ljava/lang/String;
    goto :goto_9

    .line 167
    .end local v4    # "content":Ljava/lang/String;
    .end local v17    # "skipped":Ljava/lang/String;
    :cond_7
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v4

    .line 168
    .restart local v4    # "content":Ljava/lang/String;
    if-nez v4, :cond_5

    .line 215
    :try_start_e
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 219
    :goto_a
    :try_start_f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 210
    :goto_b
    return-object v2

    .line 181
    :cond_8
    :try_start_10
    sget-object v21, Lmiui/util/AudioOutputHelper$DUMP_TAG;->STANDBY_FINDER:Ljava/util/regex/Pattern;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    .line 182
    .local v19, "standbyMatcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 183
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    .line 184
    .local v20, "str":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lmiui/util/AudioOutputHelper;->isStandBy(Ljava/lang/String;)Z

    move-result v18

    .local v18, "standby":Z
    goto :goto_9

    .line 188
    .end local v18    # "standby":Z
    .end local v20    # "str":Ljava/lang/String;
    :cond_9
    if-nez v18, :cond_4

    .line 189
    sget-object v3, Lmiui/util/AudioOutputHelper;->COLLECTOR:Lmiui/util/AudioOutputHelper$TrackCollector;

    .line 190
    .local v3, "collector":Lmiui/util/AudioOutputHelper$TrackCollector;
    if-eqz v3, :cond_a

    .line 191
    move-object/from16 v0, v16

    invoke-interface {v3, v15, v4, v2, v0}, Lmiui/util/AudioOutputHelper$TrackCollector;->collectTracks(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lmiui/util/AudioOutputHelper$Result;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lmiui/util/AudioOutputHelper$Result;->mSkipped:Ljava/lang/String;

    move-object/from16 v17, v0

    .restart local v17    # "skipped":Ljava/lang/String;
    goto :goto_9

    .line 193
    .end local v17    # "skipped":Ljava/lang/String;
    :cond_a
    sget-object v21, Lmiui/util/AudioOutputHelper;->COLLECTOR_LP:Lmiui/util/AudioOutputHelper$TrackCollector;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v4, v2, v1}, Lmiui/util/AudioOutputHelper$TrackCollector;->collectTracks(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lmiui/util/AudioOutputHelper$Result;

    move-result-object v14

    .line 194
    .local v14, "r":Lmiui/util/AudioOutputHelper$Result;
    iget-boolean v0, v14, Lmiui/util/AudioOutputHelper$Result;->mHandled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 195
    iget-object v0, v14, Lmiui/util/AudioOutputHelper$Result;->mSkipped:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 196
    .restart local v17    # "skipped":Ljava/lang/String;
    sget-object v21, Lmiui/util/AudioOutputHelper;->COLLECTOR_LP:Lmiui/util/AudioOutputHelper$TrackCollector;

    sput-object v21, Lmiui/util/AudioOutputHelper;->COLLECTOR:Lmiui/util/AudioOutputHelper$TrackCollector;

    .line 197
    sget-object v21, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "collector=lp"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_9

    .line 211
    .end local v2    # "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .end local v3    # "collector":Lmiui/util/AudioOutputHelper$TrackCollector;
    .end local v4    # "content":Ljava/lang/String;
    .end local v14    # "r":Lmiui/util/AudioOutputHelper$Result;
    .end local v17    # "skipped":Ljava/lang/String;
    .end local v19    # "standbyMatcher":Ljava/util/regex/Matcher;
    :catch_a
    move-exception v8

    .line 212
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_11
    sget-object v21, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 215
    :try_start_12
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    .line 219
    :goto_c
    :try_start_13
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    .line 224
    :goto_d
    const/16 v21, 0x0

    return-object v21

    .line 199
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v2    # "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .restart local v3    # "collector":Lmiui/util/AudioOutputHelper$TrackCollector;
    .restart local v4    # "content":Ljava/lang/String;
    .restart local v14    # "r":Lmiui/util/AudioOutputHelper$Result;
    .restart local v19    # "standbyMatcher":Ljava/util/regex/Matcher;
    :cond_b
    :try_start_14
    sget-object v21, Lmiui/util/AudioOutputHelper;->COLLECTOR_COMPAT:Lmiui/util/AudioOutputHelper$TrackCollector;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v4, v2, v1}, Lmiui/util/AudioOutputHelper$TrackCollector;->collectTracks(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lmiui/util/AudioOutputHelper$Result;

    move-result-object v14

    .line 200
    iget-boolean v0, v14, Lmiui/util/AudioOutputHelper$Result;->mHandled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 201
    iget-object v0, v14, Lmiui/util/AudioOutputHelper$Result;->mSkipped:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 202
    .restart local v17    # "skipped":Ljava/lang/String;
    sget-object v21, Lmiui/util/AudioOutputHelper;->COLLECTOR_COMPAT:Lmiui/util/AudioOutputHelper$TrackCollector;

    sput-object v21, Lmiui/util/AudioOutputHelper;->COLLECTOR:Lmiui/util/AudioOutputHelper$TrackCollector;

    .line 203
    sget-object v21, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "collector=compat"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/16 :goto_9

    .line 213
    .end local v2    # "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .end local v3    # "collector":Lmiui/util/AudioOutputHelper$TrackCollector;
    .end local v4    # "content":Ljava/lang/String;
    .end local v14    # "r":Lmiui/util/AudioOutputHelper$Result;
    .end local v17    # "skipped":Ljava/lang/String;
    .end local v19    # "standbyMatcher":Ljava/util/regex/Matcher;
    :catchall_1
    move-exception v21

    .line 215
    :try_start_15
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_f

    .line 219
    :goto_e
    :try_start_16
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_10

    .line 213
    :goto_f
    throw v21

    .line 216
    .restart local v2    # "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .restart local v4    # "content":Ljava/lang/String;
    :catch_b
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto/16 :goto_a

    .line 220
    .end local v7    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto/16 :goto_b

    .line 216
    .end local v2    # "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .end local v4    # "content":Ljava/lang/String;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v8    # "e":Ljava/lang/Exception;
    :catch_d
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_c

    .line 220
    .end local v7    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_d

    .line 216
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_f
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_e

    .line 220
    .end local v7    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_f

    .line 147
    .end local v7    # "e":Ljava/io/IOException;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/InputStream;
    :catch_11
    move-exception v9

    .local v9, "e1":Ljava/io/FileNotFoundException;
    goto/16 :goto_2

    .line 135
    .end local v9    # "e1":Ljava/io/FileNotFoundException;
    .end local v10    # "in":Ljava/io/InputStream;
    .restart local v13    # "os":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v21

    move-object v12, v13

    .end local v13    # "os":Ljava/io/FileOutputStream;
    .local v12, "os":Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .line 127
    .end local v12    # "os":Ljava/io/FileOutputStream;
    .restart local v13    # "os":Ljava/io/FileOutputStream;
    :catch_12
    move-exception v6

    .restart local v6    # "e":Ljava/io/FileNotFoundException;
    move-object v12, v13

    .end local v13    # "os":Ljava/io/FileOutputStream;
    .restart local v12    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .line 129
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v12    # "os":Ljava/io/FileOutputStream;
    .restart local v13    # "os":Ljava/io/FileOutputStream;
    :catch_13
    move-exception v5

    .restart local v5    # "e":Landroid/os/RemoteException;
    move-object v12, v13

    .end local v13    # "os":Ljava/io/FileOutputStream;
    .restart local v12    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 131
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v12    # "os":Ljava/io/FileOutputStream;
    .restart local v13    # "os":Ljava/io/FileOutputStream;
    :catch_14
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    move-object v12, v13

    .end local v13    # "os":Ljava/io/FileOutputStream;
    .restart local v12    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 133
    .end local v7    # "e":Ljava/io/IOException;
    .end local v12    # "os":Ljava/io/FileOutputStream;
    .restart local v13    # "os":Ljava/io/FileOutputStream;
    :catch_15
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object v12, v13

    .end local v13    # "os":Ljava/io/FileOutputStream;
    .restart local v12    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_3
.end method
