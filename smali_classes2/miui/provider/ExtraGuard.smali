.class public final Lmiui/provider/ExtraGuard;
.super Ljava/lang/Object;
.source "ExtraGuard.java"


# static fields
.field public static final DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.miui.guardprovider"

.field public static final VIRUS_BLACK:I = 0x2

.field public static final VIRUS_GRAY:I = 0x3

.field public static final VIRUS_WHITE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkApkForVirusInfo(Landroid/content/Context;Landroid/net/Uri;Z)Lmiui/provider/ExtraGuardVirusInfoEntity;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cloud"    # Z

    .prologue
    const/4 v9, 0x0

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "uri is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 33
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 35
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v2, "content://guard/sync_scan"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 36
    .local v1, "antiUri":Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 37
    new-instance v8, Lmiui/provider/ExtraGuardVirusInfoEntity;

    invoke-direct {v8}, Lmiui/provider/ExtraGuardVirusInfoEntity;-><init>()V

    .line 38
    .local v8, "result":Lmiui/provider/ExtraGuardVirusInfoEntity;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v4, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v4, v3

    .line 41
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 42
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    const-string/jumbo v2, "Type"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v8, v2}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setType(I)V

    .line 44
    const-string/jumbo v2, "Description"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setDescription(Ljava/lang/String;)V

    .line 45
    const-string/jumbo v2, "VirusName"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setVirusName(Ljava/lang/String;)V

    .line 46
    const-string/jumbo v2, "EngineName"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setEngineName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 48
    return-object v8

    .line 53
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "result":Lmiui/provider/ExtraGuardVirusInfoEntity;
    .local v6, "cursor":Landroid/database/Cursor;
    :cond_2
    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 55
    .end local v1    # "antiUri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v9

    .line 50
    :catch_0
    move-exception v7

    .line 51
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 52
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 53
    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 52
    throw v2
.end method
