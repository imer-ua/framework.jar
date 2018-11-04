.class public Landroid/app/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DownloadManager$CursorTranslator;,
        Landroid/app/DownloadManager$ExtraDownloads;,
        Landroid/app/DownloadManager$Query;,
        Landroid/app/DownloadManager$Request;
    }
.end annotation


# static fields
.field public static final ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETE"

.field public static final ACTION_DOWNLOAD_DELETED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_DELETED"

.field public static final ACTION_DOWNLOAD_UPDATED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_UPDATED"

.field public static final ACTION_DOWNLOAD_UPDATE_PROGRESS_REGISTRATION:Ljava/lang/String; = "android.intent.action.DOWNLOAD_UPDATE_PROGRESS_REGISTRATION"

.field public static final ACTION_NOTIFICATION_CLICKED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

.field public static final ACTION_VIEW_DOWNLOADS:Ljava/lang/String; = "android.intent.action.VIEW_DOWNLOADS"

.field public static final COLUMN_ALLOW_WRITE:Ljava/lang/String; = "allow_write"

.field public static final COLUMN_BYTES_DOWNLOADED_SO_FAR:Ljava/lang/String; = "bytes_so_far"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_LAST_MODIFIED_TIMESTAMP:Ljava/lang/String; = "last_modified_timestamp"

.field public static final COLUMN_LOCAL_FILENAME:Ljava/lang/String; = "local_filename"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLUMN_LOCAL_URI:Ljava/lang/String; = "local_uri"

.field public static final COLUMN_MEDIAPROVIDER_URI:Ljava/lang/String; = "mediaprovider_uri"

.field public static final COLUMN_MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field public static final COLUMN_REASON:Ljava/lang/String; = "reason"

.field public static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_TOTAL_SIZE_BYTES:Ljava/lang/String; = "total_size"

.field public static final COLUMN_URI:Ljava/lang/String; = "uri"

.field public static final ERROR_BLOCKED:I = 0x3f2

.field public static final ERROR_CANNOT_RESUME:I = 0x3f0

.field public static final ERROR_DEVICE_NOT_FOUND:I = 0x3ef

.field public static final ERROR_FILE_ALREADY_EXISTS:I = 0x3f1

.field public static final ERROR_FILE_ERROR:I = 0x3e9

.field public static final ERROR_HTTP_DATA_ERROR:I = 0x3ec

.field public static final ERROR_INSUFFICIENT_SPACE:I = 0x3ee

.field public static final ERROR_TOO_MANY_REDIRECTS:I = 0x3ed

.field public static final ERROR_UNHANDLED_HTTP_CODE:I = 0x3ea

.field public static final ERROR_UNKNOWN:I = 0x3e8

.field public static final EXTRA_DOWNLOAD_CURRENT_BYTES:Ljava/lang/String; = "extra_download_current_bytes"

.field public static final EXTRA_DOWNLOAD_ID:Ljava/lang/String; = "extra_download_id"

.field public static final EXTRA_DOWNLOAD_STATUS:Ljava/lang/String; = "extra_download_status"

.field public static final EXTRA_DOWNLOAD_TOTAL_BYTES:Ljava/lang/String; = "extra_download_total_bytes"

.field public static final EXTRA_NOTIFICATION_CLICK_DOWNLOAD_IDS:Ljava/lang/String; = "extra_click_download_ids"

.field public static final INTENT_EXTRAS_SORT_BY_SIZE:Ljava/lang/String; = "android.app.DownloadManager.extra_sortBySize"

.field public static final INTENT_EXTRA_APPLICATION_PACKAGENAME:Ljava/lang/String; = "intent_extra_application_packagename"

.field public static final INTENT_EXTRA_REGISTER_DOWNLOADS_UPDATE_PROGRESS:Ljava/lang/String; = "intent_extra_register_downloads_update_progress"

.field public static final INTENT_EXTRA_UNREGISTER_DOWNLOADS_UPDATE_PROGRESS:Ljava/lang/String; = "intent_extra_unregister_downloads_update_progress"

.field public static final MIUI_UNDERLYING_COLUMNS:[Ljava/lang/String;

.field private static final NON_DOWNLOADMANAGER_DOWNLOAD:Ljava/lang/String; = "non-dwnldmngr-download-dont-retry2download"

.field public static final PAUSED_BY_APP:I = 0x5

.field public static final PAUSED_QUEUED_FOR_WIFI:I = 0x3

.field public static final PAUSED_UNKNOWN:I = 0x4

.field public static final PAUSED_WAITING_FOR_NETWORK:I = 0x2

.field public static final PAUSED_WAITING_TO_RETRY:I = 0x1

.field public static final PAUSE_INSUFFICIENT_SPACE:I = 0x6

.field public static final PERMISSION_SILENCE_INSTALL:Ljava/lang/String; = "android.permission.XL_SILENCE_INSTALL"

.field public static final STATUS_FAILED:I = 0x10

.field public static final STATUS_PAUSED:I = 0x4

.field public static final STATUS_PENDING:I = 0x1

.field public static final STATUS_RUNNING:I = 0x2

.field public static final STATUS_SUCCESSFUL:I = 0x8

.field public static final UNDERLYING_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mAccessFilename:Z

.field private mBaseUri:Landroid/net/Uri;

.field private final mPackageName:Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 443
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    .line 444
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 445
    const-string/jumbo v1, "_data AS local_filename"

    aput-object v1, v0, v4

    .line 446
    const-string/jumbo v1, "mediaprovider_uri"

    aput-object v1, v0, v5

    .line 447
    const-string/jumbo v1, "destination"

    aput-object v1, v0, v6

    .line 448
    const-string/jumbo v1, "title"

    aput-object v1, v0, v7

    .line 449
    const-string/jumbo v1, "description"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 450
    const-string/jumbo v1, "uri"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 451
    const-string/jumbo v1, "status"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 452
    const-string/jumbo v1, "hint"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 453
    const-string/jumbo v1, "mimetype AS media_type"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 454
    const-string/jumbo v1, "total_bytes AS total_size"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 455
    const-string/jumbo v1, "lastmod AS last_modified_timestamp"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 456
    const-string/jumbo v1, "current_bytes AS bytes_so_far"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 457
    const-string/jumbo v1, "allow_write"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 459
    const-string/jumbo v1, "errorMsg"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 460
    const-string/jumbo v1, "notificationpackage"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 466
    const-string/jumbo v1, "\'placeholder\' AS local_uri"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 467
    const-string/jumbo v1, "\'placeholder\' AS reason"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 443
    sput-object v0, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    .line 506
    sget-object v0, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    .line 507
    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "entity"

    aput-object v2, v1, v3

    .line 508
    const-string/jumbo v2, "file_create_time"

    aput-object v2, v1, v4

    .line 509
    const-string/jumbo v2, "downloading_current_speed"

    aput-object v2, v1, v5

    .line 510
    const-string/jumbo v2, "download_surplus_time"

    aput-object v2, v1, v6

    .line 511
    const-string/jumbo v2, "xl_accelerate_speed"

    aput-object v2, v1, v7

    .line 512
    const-string/jumbo v2, "downloaded_time"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 513
    const-string/jumbo v2, "xl_vip_status"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 514
    const-string/jumbo v2, "xl_vip_cdn_url"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 515
    const-string/jumbo v2, "xl_task_open_mark"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 516
    const-string/jumbo v2, "download_task_thumbnail"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 517
    const-string/jumbo v2, "apk_package_name"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 518
    const-string/jumbo v2, "download_file_hash"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 519
    const-string/jumbo v2, "download_apk_install_way"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 520
    const-string/jumbo v2, "download_extra"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 522
    const-class v2, Ljava/lang/String;

    .line 505
    invoke-static {v0, v1, v2}, Landroid/app/DownloadManager;->concatArrays([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Landroid/app/DownloadManager;->MIUI_UNDERLYING_COLUMNS:[Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1416
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1423
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    .line 1424
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    .line 1428
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    .line 1422
    return-void

    .line 1428
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static addRunningStatusAndControlRun(Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1993
    if-eqz p0, :cond_0

    .line 1994
    const-string/jumbo v0, "status"

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1995
    const-string/jumbo v0, "control"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1992
    :cond_0
    return-void
.end method

.method private static concatArrays([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "src1":[Ljava/lang/Object;, "[TT;"
    .local p1, "src2":[Ljava/lang/Object;, "[TT;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 529
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 530
    .local v0, "dst":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 532
    return-object v0
.end method

.method public static getActiveNetworkWarningBytes(Landroid/content/Context;)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1751
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getDownloadStatus(Landroid/database/Cursor;)I
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2018
    const-string/jumbo v1, "status"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2019
    .local v0, "status":I
    return v0
.end method

.method public static getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1639
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1640
    const-string/jumbo v2, "download_manager_max_bytes_over_mobile"

    .line 1639
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1641
    :catch_0
    move-exception v0

    .line 1642
    .local v0, "exc":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getRecommendedMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1735
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1736
    const-string/jumbo v2, "download_manager_recommended_max_bytes_over_mobile"

    .line 1735
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1737
    :catch_0
    move-exception v0

    .line 1738
    .local v0, "exc":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method static getWhereArgsForIds([J)[Ljava/lang/String;
    .locals 4
    .param p0, "ids"    # [J

    .prologue
    .line 1906
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 1907
    .local v1, "whereArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1908
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1907
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1910
    :cond_0
    return-object v1
.end method

.method private static getWhereArgsForStatuses([I)[Ljava/lang/String;
    .locals 3
    .param p0, "statuses"    # [I

    .prologue
    .line 1982
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 1983
    .local v1, "whereArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1984
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1983
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1986
    :cond_0
    return-object v1
.end method

.method static getWhereClauseForIds([J)Ljava/lang/String;
    .locals 3
    .param p0, "ids"    # [J

    .prologue
    .line 1889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1890
    .local v1, "whereClause":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1891
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1892
    if-lez v0, :cond_0

    .line 1893
    const-string/jumbo v2, "OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1895
    :cond_0
    const-string/jumbo v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    const-string/jumbo v2, " = ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1891
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1898
    :cond_1
    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1899
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getWhereClauseForStatuses([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "operators"    # [Ljava/lang/String;
    .param p1, "jointConditions"    # [Ljava/lang/String;

    .prologue
    .line 1968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1969
    .local v1, "whereClause":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1970
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1971
    if-lez v0, :cond_0

    .line 1972
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1974
    :cond_0
    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1975
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1970
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1977
    :cond_1
    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1978
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isActiveNetworkExpensive(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1745
    const/4 v0, 0x0

    return v0
.end method

.method public static isDownloadSuccess(Landroid/database/Cursor;)Z
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2026
    const-string/jumbo v0, "status"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDownloading(Landroid/database/Cursor;)Z
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2003
    const/4 v0, 0x0

    .line 2004
    .local v0, "ret":Z
    const-string/jumbo v2, "status"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2005
    .local v1, "status":I
    packed-switch v1, :pswitch_data_0

    .line 2011
    :goto_0
    return v0

    .line 2008
    :pswitch_0
    const/4 v0, 0x1

    .line 2009
    goto :goto_0

    .line 2005
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setDownloadUpdateProgressRegistration(Landroid/content/Context;[J[J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "registerIds"    # [J
    .param p2, "unregisterIds"    # [J

    .prologue
    .line 540
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DOWNLOAD_UPDATE_PROGRESS_REGISTRATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "intent_extra_register_downloads_update_progress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 542
    const-string/jumbo v1, "intent_extra_unregister_downloads_update_progress"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 543
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 539
    return-void
.end method

.method public static setRecommendedMaxBytesOverMobile(Landroid/content/Context;J)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # J

    .prologue
    .line 2049
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2050
    const-string/jumbo v1, "download_manager_recommended_max_bytes_over_mobile"

    .line 2049
    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static translateStatus(I)I
    .locals 1
    .param p0, "downloadsStatus"    # I

    .prologue
    .line 2037
    invoke-static {p0}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    return v0
.end method

.method private static validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "paramName"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 1871
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1872
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1870
    :cond_0
    return-void
.end method


# virtual methods
.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z

    .prologue
    .line 1780
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    .line 1779
    invoke-virtual/range {v0 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;Landroid/net/Uri;)J
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z
    .param p9, "uri"    # Landroid/net/Uri;
    .param p10, "referer"    # Landroid/net/Uri;

    .prologue
    .line 1811
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 1810
    invoke-virtual/range {v0 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZ)J
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z
    .param p9, "allowWrite"    # Z

    .prologue
    .line 1819
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    .line 1818
    invoke-virtual/range {v0 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z
    .param p9, "allowWrite"    # Z
    .param p10, "uri"    # Landroid/net/Uri;
    .param p11, "referer"    # Landroid/net/Uri;

    .prologue
    .line 1827
    const-string/jumbo v5, "title"

    invoke-static {v5, p1}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    const-string/jumbo v5, "description"

    invoke-static {v5, p2}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    const-string/jumbo v5, "path"

    invoke-static {v5, p5}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    const-string/jumbo v5, "mimeType"

    invoke-static {v5, p4}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    const-wide/16 v6, 0x0

    cmp-long v5, p6, v6

    if-gez v5, :cond_0

    .line 1832
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, " invalid value for param: totalBytes"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1837
    :cond_0
    if-eqz p10, :cond_2

    .line 1838
    new-instance v3, Landroid/app/DownloadManager$Request;

    move-object/from16 v0, p10

    invoke-direct {v3, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 1842
    .local v3, "request":Landroid/app/DownloadManager$Request;
    :goto_0
    invoke-virtual {v3, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v5

    invoke-virtual {v5, p4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 1845
    if-eqz p11, :cond_1

    .line 1846
    const-string/jumbo v5, "Referer"

    invoke-virtual/range {p11 .. p11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 1848
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    .line 1849
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "destination"

    .line 1850
    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1849
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1851
    const-string/jumbo v5, "_data"

    invoke-virtual {v4, v5, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    const-string/jumbo v5, "status"

    const/16 v6, 0xc8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1853
    const-string/jumbo v5, "total_bytes"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1854
    const-string/jumbo v6, "scanned"

    .line 1855
    if-eqz p3, :cond_3

    const/4 v5, 0x0

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1854
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1857
    const-string/jumbo v6, "visibility"

    if-eqz p8, :cond_4

    .line 1858
    const/4 v5, 0x3

    .line 1857
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1859
    const-string/jumbo v6, "allow_write"

    if-eqz p9, :cond_5

    const/4 v5, 0x1

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1860
    iget-object v5, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1861
    .local v2, "downloadUri":Landroid/net/Uri;
    if-nez v2, :cond_6

    .line 1862
    const-wide/16 v6, -0x1

    return-wide v6

    .line 1840
    .end local v2    # "downloadUri":Landroid/net/Uri;
    .end local v3    # "request":Landroid/app/DownloadManager$Request;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    new-instance v3, Landroid/app/DownloadManager$Request;

    const-string/jumbo v5, "non-dwnldmngr-download-dont-retry2download"

    invoke-direct {v3, v5}, Landroid/app/DownloadManager$Request;-><init>(Ljava/lang/String;)V

    .restart local v3    # "request":Landroid/app/DownloadManager$Request;
    goto :goto_0

    .line 1856
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_3
    const/4 v5, 0x2

    goto :goto_1

    .line 1858
    :cond_4
    const/4 v5, 0x2

    goto :goto_2

    .line 1859
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 1864
    .restart local v2    # "downloadUri":Landroid/net/Uri;
    :cond_6
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    return-wide v6
.end method

.method public enqueue(Landroid/app/DownloadManager$Request;)J
    .locals 6
    .param p1, "request"    # Landroid/app/DownloadManager$Request;

    .prologue
    .line 1458
    iget-object v4, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1459
    .local v1, "values":Landroid/content/ContentValues;
    iget-object v4, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1460
    .local v0, "downloadUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1461
    .local v2, "id":J
    return-wide v2
.end method

.method public varargs forceDownload([J)V
    .locals 5
    .param p1, "ids"    # [J

    .prologue
    .line 1622
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1623
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1624
    const-string/jumbo v1, "control"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1625
    const-string/jumbo v1, "bypass_recommended_size_limit"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1626
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1621
    return-void
.end method

.method public getDownloadUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 1882
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getMimeTypeForDownloadedFile(J)Ljava/lang/String;
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v5, 0x0

    .line 1567
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide p1, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v1

    .line 1568
    .local v1, "query":Landroid/app/DownloadManager$Query;
    const/4 v0, 0x0

    .line 1570
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1571
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 1578
    if-eqz v0, :cond_0

    .line 1579
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1572
    :cond_0
    return-object v5

    .line 1574
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1575
    const-string/jumbo v2, "media_type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1578
    if-eqz v0, :cond_2

    .line 1579
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1575
    :cond_2
    return-object v2

    .line 1578
    :cond_3
    if-eqz v0, :cond_4

    .line 1579
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1583
    :cond_4
    return-object v5

    .line 1577
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    .line 1578
    if-eqz v0, :cond_5

    .line 1579
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1577
    :cond_5
    throw v2
.end method

.method public getUriForDownloadedFile(J)Landroid/net/Uri;
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v6, 0x0

    .line 1536
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide p1, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v1

    .line 1537
    .local v1, "query":Landroid/app/DownloadManager$Query;
    const/4 v0, 0x0

    .line 1539
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1540
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 1550
    if-eqz v0, :cond_0

    .line 1551
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1541
    :cond_0
    return-object v6

    .line 1543
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1544
    const-string/jumbo v3, "status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1545
    .local v2, "status":I
    const/16 v3, 0x8

    if-ne v3, v2, :cond_3

    .line 1546
    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1550
    if-eqz v0, :cond_2

    .line 1551
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1546
    :cond_2
    return-object v3

    .line 1550
    .end local v2    # "status":I
    :cond_3
    if-eqz v0, :cond_4

    .line 1551
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1555
    :cond_4
    return-object v6

    .line 1549
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    .line 1550
    if-eqz v0, :cond_5

    .line 1551
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1549
    :cond_5
    throw v3
.end method

.method public varargs markRowDeleted([J)I
    .locals 6
    .param p1, "ids"    # [J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1474
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 1476
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "input param \'ids\' can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1478
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1479
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "deleted"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1482
    array-length v1, p1

    if-ne v1, v5, :cond_2

    .line 1483
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    aget-wide v4, p1, v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1486
    :cond_2
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    .line 1487
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v4

    .line 1486
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1523
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1, p2}, Landroid/app/DownloadManager;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public varargs pauseDownload([J)V
    .locals 8
    .param p1, "ids"    # [J

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1936
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1937
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "status"

    const/16 v4, 0xc1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1938
    const-string/jumbo v3, "control"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1940
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1941
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "="

    aput-object v5, v4, v7

    const-string/jumbo v5, "="

    aput-object v5, v4, v6

    new-array v5, v6, [Ljava/lang/String;

    const-string/jumbo v6, "OR"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Landroid/app/DownloadManager;->getWhereClauseForStatuses([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1940
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1941
    const-string/jumbo v4, ")"

    .line 1940
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1942
    .local v2, "whereClause":Ljava/lang/String;
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v3

    .line 1943
    const/16 v4, 0xbe

    .line 1944
    const/16 v5, 0xc0

    .line 1943
    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-static {v4}, Landroid/app/DownloadManager;->getWhereArgsForStatuses([I)[Ljava/lang/String;

    move-result-object v4

    .line 1944
    const-class v5, Ljava/lang/String;

    .line 1942
    invoke-static {v3, v4, v5}, Landroid/app/DownloadManager;->concatArrays([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1945
    .local v1, "whereArgs":[Ljava/lang/String;
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1935
    return-void
.end method

.method public query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    .locals 5
    .param p1, "query"    # Landroid/app/DownloadManager$Query;

    .prologue
    const/4 v4, 0x0

    .line 1509
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/app/DownloadManager;->MIUI_UNDERLYING_COLUMNS:[Ljava/lang/String;

    iget-object v3, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/DownloadManager$Query;->runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 1510
    .local v0, "underlyingCursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1511
    return-object v4

    .line 1513
    :cond_0
    new-instance v1, Landroid/app/DownloadManager$CursorTranslator;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    iget-boolean v3, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    invoke-direct {v1, v0, v2, v3}, Landroid/app/DownloadManager$CursorTranslator;-><init>(Landroid/database/Cursor;Landroid/net/Uri;Z)V

    return-object v1
.end method

.method public varargs remove([J)I
    .locals 1
    .param p1, "ids"    # [J

    .prologue
    .line 1499
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager;->markRowDeleted([J)I

    move-result v0

    return v0
.end method

.method public varargs removeRecordOnly([J)I
    .locals 4
    .param p1, "ids"    # [J

    .prologue
    .line 1923
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 1925
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "input param \'ids\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1927
    :cond_1
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public rename(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # J
    .param p4, "displayName"    # Ljava/lang/String;

    .prologue
    .line 1656
    invoke-static/range {p4 .. p4}, Landroid/os/FileUtils;->isValidFatFilename(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1657
    new-instance v13, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " is not a valid filename"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1660
    :cond_0
    new-instance v13, Landroid/app/DownloadManager$Query;

    invoke-direct {v13}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v14, 0x1

    new-array v14, v14, [J

    const/4 v15, 0x0

    aput-wide p2, v14, v15

    invoke-virtual {v13, v14}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v10

    .line 1661
    .local v10, "query":Landroid/app/DownloadManager$Query;
    const/4 v4, 0x0

    .line 1662
    .local v4, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1663
    .local v8, "oldDisplayName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1665
    .local v7, "mimeType":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1666
    .local v4, "cursor":Landroid/database/Cursor;
    if-nez v4, :cond_2

    .line 1667
    const/4 v13, 0x0

    .line 1678
    if-eqz v4, :cond_1

    .line 1679
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1667
    :cond_1
    return v13

    .line 1669
    :cond_2
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1670
    const-string/jumbo v13, "status"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    .line 1671
    .local v11, "status":I
    const/16 v13, 0x8

    if-eq v13, v11, :cond_4

    .line 1672
    const/4 v13, 0x0

    .line 1678
    if-eqz v4, :cond_3

    .line 1679
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1672
    :cond_3
    return v13

    .line 1674
    :cond_4
    :try_start_2
    const-string/jumbo v13, "title"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1675
    .local v8, "oldDisplayName":Ljava/lang/String;
    const-string/jumbo v13, "media_type"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 1678
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "oldDisplayName":Ljava/lang/String;
    .end local v11    # "status":I
    :cond_5
    if-eqz v4, :cond_6

    .line 1679
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1683
    :cond_6
    if-eqz v8, :cond_7

    if-nez v7, :cond_9

    .line 1684
    :cond_7
    new-instance v13, Ljava/lang/IllegalStateException;

    .line 1685
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Document with id "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p2

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " does not exist"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1684
    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1677
    .end local v4    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "mimeType":Ljava/lang/String;
    :catchall_0
    move-exception v13

    .line 1678
    if-eqz v4, :cond_8

    .line 1679
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1677
    :cond_8
    throw v13

    .line 1689
    .end local v7    # "mimeType":Ljava/lang/String;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    :cond_9
    sget-object v13, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 1688
    invoke-static {v13}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 1691
    .local v9, "parent":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1692
    .local v3, "before":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p4

    invoke-direct {v2, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1694
    .local v2, "after":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1695
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Already exists "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1697
    :cond_a
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 1698
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Failed to rename to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1702
    :cond_b
    const-string/jumbo v13, "image/"

    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1703
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1704
    const-string/jumbo v15, "_data=?"

    .line 1705
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1706
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    .line 1703
    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1709
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v13, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1710
    .local v6, "intent":Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1711
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1714
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_c
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1715
    .local v12, "values":Landroid/content/ContentValues;
    const-string/jumbo v13, "title"

    move-object/from16 v0, p4

    invoke-virtual {v12, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    const-string/jumbo v13, "_data"

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    const-string/jumbo v13, "mediaprovider_uri"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1718
    const/4 v13, 0x1

    new-array v5, v13, [J

    const/4 v13, 0x0

    aput-wide p2, v5, v13

    .line 1720
    .local v5, "ids":[J
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v5}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v15

    .line 1721
    invoke-static {v5}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v16

    .line 1720
    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v12, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 1721
    const/4 v14, 0x1

    .line 1720
    if-ne v13, v14, :cond_d

    const/4 v13, 0x1

    :goto_0
    return v13

    :cond_d
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public varargs restartDownload([J)V
    .locals 8
    .param p1, "ids"    # [J

    .prologue
    const/4 v5, 0x0

    .line 1593
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v3, p1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 1595
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1596
    const-string/jumbo v3, "status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1597
    .local v1, "status":I
    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const/16 v3, 0x10

    if-eq v1, v3, :cond_0

    .line 1598
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot restart incomplete download: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1599
    const-string/jumbo v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1598
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1602
    .end local v1    # "status":I
    :catchall_0
    move-exception v3

    .line 1603
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1602
    throw v3

    .line 1595
    .restart local v1    # "status":I
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1603
    .end local v1    # "status":I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1606
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1607
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "current_bytes"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1608
    const-string/jumbo v3, "total_bytes"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1609
    const-string/jumbo v3, "_data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1610
    const-string/jumbo v3, "status"

    const/16 v4, 0xbe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1611
    const-string/jumbo v3, "numfailed"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1612
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1592
    return-void
.end method

.method public varargs resumeDownload([J)V
    .locals 10
    .param p1, "ids"    # [J

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1954
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1955
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {v0}, Landroid/app/DownloadManager;->addRunningStatusAndControlRun(Landroid/content/ContentValues;)V

    .line 1956
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1957
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "="

    aput-object v5, v4, v7

    const-string/jumbo v5, "="

    aput-object v5, v4, v8

    const-string/jumbo v5, "="

    aput-object v5, v4, v9

    const-string/jumbo v5, "="

    aput-object v5, v4, v6

    new-array v5, v6, [Ljava/lang/String;

    const-string/jumbo v6, "OR"

    aput-object v6, v5, v7

    const-string/jumbo v6, "OR"

    aput-object v6, v5, v8

    const-string/jumbo v6, "OR"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Landroid/app/DownloadManager;->getWhereClauseForStatuses([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1956
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1957
    const-string/jumbo v4, ")"

    .line 1956
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1958
    .local v2, "whereClause":Ljava/lang/String;
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v3

    .line 1959
    const/16 v4, 0xc1

    .line 1960
    const/16 v5, 0xc2

    .line 1961
    const/16 v6, 0xc3

    .line 1962
    const/16 v7, 0xc4

    .line 1959
    filled-new-array {v4, v5, v6, v7}, [I

    move-result-object v4

    invoke-static {v4}, Landroid/app/DownloadManager;->getWhereArgsForStatuses([I)[Ljava/lang/String;

    move-result-object v4

    .line 1963
    const-class v5, Ljava/lang/String;

    .line 1958
    invoke-static {v3, v4, v5}, Landroid/app/DownloadManager;->concatArrays([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1964
    .local v1, "whereArgs":[Ljava/lang/String;
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1953
    return-void
.end method

.method public setAccessAllDownloads(Z)V
    .locals 1
    .param p1, "accessAllDownloads"    # Z

    .prologue
    .line 1437
    if-eqz p1, :cond_0

    .line 1438
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1436
    :goto_0
    return-void

    .line 1440
    :cond_0
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public setAccessFilename(Z)V
    .locals 0
    .param p1, "accessFilename"    # Z

    .prologue
    .line 1446
    iput-boolean p1, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    .line 1445
    return-void
.end method
