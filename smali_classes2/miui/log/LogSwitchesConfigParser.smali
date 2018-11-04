.class public final Lmiui/log/LogSwitchesConfigParser;
.super Ljava/lang/Object;
.source "LogSwitchesConfigParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LogSwitchesConfigParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseLogSwitchesConfig(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 14
    .param p0, "configFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, "configFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 33
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    return-object v11

    .line 36
    :cond_0
    const/4 v9, 0x0

    .line 38
    .local v9, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v8, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v10, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, "line":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v1, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "line$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "line":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 50
    .restart local v6    # "line":Ljava/lang/String;
    invoke-static {v6}, Lmiui/log/AppLogSwitches;->parseAppLogSwitches(Ljava/lang/String;)Lmiui/log/AppLogSwitches;

    move-result-object v0

    .line 51
    .local v0, "appConfig":Lmiui/log/AppLogSwitches;
    if-eqz v0, :cond_1

    .line 52
    iget-object v11, v0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/log/AppLogSwitches;

    .line 53
    .local v5, "existing":Lmiui/log/AppLogSwitches;
    if-eqz v5, :cond_5

    .line 54
    invoke-virtual {v5, v0}, Lmiui/log/AppLogSwitches;->merge(Lmiui/log/AppLogSwitches;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 61
    .end local v0    # "appConfig":Lmiui/log/AppLogSwitches;
    .end local v1    # "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    .end local v5    # "existing":Lmiui/log/AppLogSwitches;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "line$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/io/FileNotFoundException;
    move-object v9, v10

    .line 62
    .end local v8    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    const-string/jumbo v11, "LogSwitchesConfigParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "cannot found "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    if-eqz v9, :cond_2

    .line 70
    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 63
    :cond_2
    :goto_3
    return-object v11

    .line 45
    .end local v3    # "ex":Ljava/io/FileNotFoundException;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :try_start_4
    const-string/jumbo v11, "\r"

    const-string/jumbo v12, ""

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "\n"

    const-string/jumbo v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 46
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 64
    .end local v6    # "line":Ljava/lang/String;
    :catch_1
    move-exception v4

    .local v4, "ex":Ljava/io/IOException;
    move-object v9, v10

    .line 65
    .end local v8    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :goto_4
    :try_start_5
    const-string/jumbo v11, "LogSwitchesConfigParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "failed to read "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 68
    if-eqz v9, :cond_4

    .line 70
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 66
    :cond_4
    :goto_5
    return-object v11

    .line 56
    .end local v4    # "ex":Ljava/io/IOException;
    .restart local v0    # "appConfig":Lmiui/log/AppLogSwitches;
    .restart local v1    # "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    .restart local v5    # "existing":Lmiui/log/AppLogSwitches;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "line$iterator":Ljava/util/Iterator;
    .restart local v8    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :cond_5
    :try_start_7
    iget-object v11, v0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 67
    .end local v0    # "appConfig":Lmiui/log/AppLogSwitches;
    .end local v1    # "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    .end local v5    # "existing":Lmiui/log/AppLogSwitches;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "line$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v11

    move-object v9, v10

    .line 68
    .end local v8    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :goto_6
    if-eqz v9, :cond_6

    .line 70
    :try_start_8
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 67
    :cond_6
    :goto_7
    throw v11

    .line 68
    .restart local v1    # "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "line$iterator":Ljava/util/Iterator;
    .restart local v8    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :cond_7
    if-eqz v10, :cond_8

    .line 70
    :try_start_9
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 60
    :cond_8
    :goto_8
    return-object v1

    .line 71
    :catch_2
    move-exception v4

    .restart local v4    # "ex":Ljava/io/IOException;
    goto :goto_8

    .end local v1    # "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "line$iterator":Ljava/util/Iterator;
    .end local v8    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v4

    goto :goto_5

    .end local v4    # "ex":Ljava/io/IOException;
    .restart local v3    # "ex":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v4

    .restart local v4    # "ex":Ljava/io/IOException;
    goto :goto_3

    .end local v3    # "ex":Ljava/io/FileNotFoundException;
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_5
    move-exception v4

    .restart local v4    # "ex":Ljava/io/IOException;
    goto :goto_7

    .line 67
    .end local v4    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v11

    goto :goto_6

    .line 61
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v3

    .restart local v3    # "ex":Ljava/io/FileNotFoundException;
    goto/16 :goto_2

    .line 64
    .end local v3    # "ex":Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v4

    .restart local v4    # "ex":Ljava/io/IOException;
    goto :goto_4
.end method
