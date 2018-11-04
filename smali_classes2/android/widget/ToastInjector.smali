.class Landroid/widget/ToastInjector;
.super Ljava/lang/Object;
.source "ToastInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addAppName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 46
    :try_start_0
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_0

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v2, v3, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 49
    .local v2, "labelRes":I
    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "appName":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    move-object p1, v0

    .line 57
    .end local v0    # "appName":Ljava/lang/String;
    .end local v2    # "labelRes":I
    :cond_0
    return-object p1

    .line 49
    .restart local v2    # "labelRes":I
    :cond_1
    const-string/jumbo v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v0    # "appName":Ljava/lang/String;
    goto :goto_0

    .line 54
    .end local v0    # "appName":Ljava/lang/String;
    .end local v2    # "labelRes":I
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    return-object p1

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 57
    return-object p1
.end method

.method static interceptBackgroundToast(Landroid/widget/Toast;Landroid/content/Context;)Z
    .locals 1
    .param p0, "toast"    # Landroid/widget/Toast;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method
