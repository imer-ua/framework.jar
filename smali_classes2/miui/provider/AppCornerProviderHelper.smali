.class public Lmiui/provider/AppCornerProviderHelper;
.super Ljava/lang/Object;
.source "AppCornerProviderHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 22
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x1

    .line 23
    .local v6, "allow":Z
    const/4 v7, 0x0

    .line 25
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lmiui/provider/AppCornerProviderConstants;->URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 26
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 25
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 28
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ge v1, v9, :cond_2

    .line 29
    :cond_0
    const/4 v6, 0x1

    .line 35
    :goto_0
    if-eqz v7, :cond_1

    .line 36
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 40
    :cond_1
    return v6

    .line 28
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 32
    .local v8, "isShowMessage":I
    if-ne v8, v9, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 34
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "isShowMessage":I
    :catchall_0
    move-exception v1

    .line 35
    if-eqz v7, :cond_4

    .line 36
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 34
    :cond_4
    throw v1
.end method
