.class public Lmiui/theme/ThemePermissionUtils;
.super Ljava/lang/Object;
.source "ThemePermissionUtils.java"


# static fields
.field private static final THEME_FILE_CONTEXT:Ljava/lang/String; = "u:object_r:theme_data_file:s0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateFilePermissionWithThemeContext(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 16
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lmiui/theme/ThemePermissionUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static updateFilePermissionWithThemeContext(Ljava/lang/String;Z)Z
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "systemReady"    # Z

    .prologue
    const/4 v7, 0x0

    .line 20
    if-nez p0, :cond_0

    .line 21
    return v7

    .line 24
    :cond_0
    const/4 v4, 0x0

    .line 25
    .local v4, "themeRoot":Ljava/io/File;
    const/4 v2, -0x1

    .line 26
    .local v2, "mode":I
    const-string/jumbo v5, "/data/system/theme/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 27
    new-instance v4, Ljava/io/File;

    .end local v4    # "themeRoot":Ljava/io/File;
    const-string/jumbo v5, "/data/system/theme/"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v4, "themeRoot":Ljava/io/File;
    const/16 v2, 0x1fd

    .line 33
    .end local v4    # "themeRoot":Ljava/io/File;
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, "destFile":Ljava/io/File;
    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 35
    :cond_2
    return v7

    .line 29
    .end local v0    # "destFile":Ljava/io/File;
    .local v4, "themeRoot":Ljava/io/File;
    :cond_3
    sget-object v5, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 30
    new-instance v4, Ljava/io/File;

    .end local v4    # "themeRoot":Ljava/io/File;
    sget-object v5, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v4, "themeRoot":Ljava/io/File;
    const/16 v2, 0x1fd

    goto :goto_0

    .line 38
    .end local v4    # "themeRoot":Ljava/io/File;
    .restart local v0    # "destFile":Ljava/io/File;
    :cond_4
    const/4 v3, 0x0

    .line 40
    .local v3, "ret":Z
    if-nez p1, :cond_7

    .line 44
    :try_start_0
    const-string/jumbo v5, "u:object_r:theme_data_file:s0"

    invoke-static {p0, v5}, Landroid/os/SELinux;->setFileContext(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 38
    const/4 v3, 0x0

    .line 45
    :goto_1
    const-string/jumbo v5, "Theme"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "system user update theme file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v3    # "ret":Z
    :cond_5
    :goto_2
    return v3

    .line 44
    .restart local v3    # "ret":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 47
    :cond_7
    const/16 v5, 0x2649

    const/16 v6, 0x2649

    invoke-static {p0, v5, v6}, Landroid/miui/Shell;->chown(Ljava/lang/String;II)Z

    move-result v3

    .line 48
    .local v3, "ret":Z
    invoke-static {p0, v2}, Landroid/miui/Shell;->chmod(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 49
    .end local v3    # "ret":Z
    :goto_3
    const-string/jumbo v5, "u:object_r:theme_data_file:s0"

    invoke-static {p0, v5}, Landroid/miui/Shell;->setfilecon(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_5

    const/4 v3, 0x0

    .local v3, "ret":Z
    goto :goto_2

    .line 48
    .local v3, "ret":Z
    :cond_8
    const/4 v3, 0x0

    .local v3, "ret":Z
    goto :goto_3

    .line 51
    .end local v3    # "ret":Z
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    const-string/jumbo v5, "Theme"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "occur exception when updating theme file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
