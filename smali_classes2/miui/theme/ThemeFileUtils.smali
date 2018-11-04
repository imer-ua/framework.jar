.class public Lmiui/theme/ThemeFileUtils;
.super Ljava/lang/Object;
.source "ThemeFileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dest"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-static {p0, p1}, Landroid/miui/Shell;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static link(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "oldPath"    # Ljava/lang/String;
    .param p1, "newPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {p0, p1}, Landroid/miui/Shell;->link(Ljava/lang/String;Ljava/lang/String;)Z

    .line 25
    return-void
.end method

.method public static mkdirs(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p0}, Landroid/miui/Shell;->mkdirs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lmiui/theme/ThemePermissionUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static remove(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {p0, p1}, Landroid/miui/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    return-void
.end method
