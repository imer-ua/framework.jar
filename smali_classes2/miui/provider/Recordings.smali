.class public Lmiui/provider/Recordings;
.super Ljava/lang/Object;
.source "Recordings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/Recordings$CachedAccount;,
        Lmiui/provider/Recordings$CallRecords;,
        Lmiui/provider/Recordings$CallRecordsView;,
        Lmiui/provider/Recordings$Downloads;,
        Lmiui/provider/Recordings$MarkPoints;,
        Lmiui/provider/Recordings$MarkpointsOperations;,
        Lmiui/provider/Recordings$Operations;,
        Lmiui/provider/Recordings$RecordingNotifications;,
        Lmiui/provider/Recordings$Records;,
        Lmiui/provider/Recordings$SyncTokens;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "records"

.field public static final CALL_RECORD_DIR:Ljava/lang/String;

.field public static final FM_RECORD_DIR:Ljava/lang/String;

.field private static final HEXDIGITS:[Ljava/lang/String;

.field private static final MEDIA_SCANNER_CLASS:Ljava/lang/String; = "com.android.providers.media.MediaScannerReceiver"

.field private static final MEDIA_SCANNER_PACKAGE:Ljava/lang/String; = "com.android.providers.media"

.field public static final RECORDER_ROOT_PATH:Ljava/lang/String;

.field public static final SAMPLE_DEFAULT_DIR:Ljava/lang/String; = "/sound_recorder"

.field private static final TAG:Ljava/lang/String; = "SoundRecorder:SoundRecorder"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageMiuiDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31
    const-string/jumbo v1, "/sound_recorder"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/provider/Recordings;->RECORDER_ROOT_PATH:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/provider/Recordings;->RECORDER_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/call_rec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/provider/Recordings;->CALL_RECORD_DIR:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/provider/Recordings;->RECORDER_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/fm_rec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/provider/Recordings;->FM_RECORD_DIR:Ljava/lang/String;

    .line 696
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    .line 697
    const-string/jumbo v1, "0"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "3"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "4"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "5"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "6"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "7"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "8"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "9"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "a"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "b"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "c"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 698
    const-string/jumbo v1, "d"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "e"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "f"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 696
    sput-object v0, Lmiui/provider/Recordings;->HEXDIGITS:[Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B

    .prologue
    const/4 v2, 0x0

    .line 702
    if-nez p0, :cond_0

    .line 703
    return-object v2

    .line 706
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 707
    .local v1, "resultSB":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 708
    sget-object v2, Lmiui/provider/Recordings;->HEXDIGITS:[Ljava/lang/String;

    aget-byte v3, p0, v0

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 709
    sget-object v2, Lmiui/provider/Recordings;->HEXDIGITS:[Ljava/lang/String;

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 711
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getNotificationUnreadCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recType"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 617
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 618
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v1, "cnt_unread"

    aput-object v1, v2, v5

    .line 619
    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "rec_type=?"

    .line 620
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v5

    .line 622
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 623
    .local v7, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 625
    .local v8, "cnt":I
    :try_start_0
    sget-object v1, Lmiui/provider/Recordings$RecordingNotifications;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 626
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v9, :cond_0

    .line 627
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 628
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 631
    :cond_0
    if-eqz v7, :cond_1

    .line 632
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 635
    :cond_1
    return v8

    .line 630
    .end local v7    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 631
    if-eqz v7, :cond_2

    .line 632
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 630
    :cond_2
    throw v1
.end method

.method public static getSha1(Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 670
    const/4 v4, 0x0

    .line 671
    .local v4, "in":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 673
    .local v7, "sha1":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    .end local v4    # "in":Ljava/io/InputStream;
    .local v5, "in":Ljava/io/InputStream;
    :try_start_1
    const-string/jumbo v8, "SHA1"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 675
    .local v3, "fileSha1":Ljava/security/MessageDigest;
    const/16 v8, 0x2000

    new-array v0, v8, [B

    .line 677
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    if-ltz v6, :cond_1

    .line 678
    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 681
    .end local v0    # "buf":[B
    .end local v3    # "fileSha1":Ljava/security/MessageDigest;
    .end local v6    # "len":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v4, v5

    .line 682
    .end local v5    # "in":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    const-string/jumbo v8, "SoundRecorder:SoundRecorder"

    const-string/jumbo v9, "Exception when getSha1"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 684
    if-eqz v4, :cond_0

    .line 686
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 690
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "sha1":Ljava/lang/String;
    :goto_2
    const/4 v4, 0x0

    .line 693
    :cond_0
    :goto_3
    return-object v7

    .line 680
    .restart local v0    # "buf":[B
    .restart local v3    # "fileSha1":Ljava/security/MessageDigest;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "len":I
    .restart local v7    # "sha1":Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-static {v8}, Lmiui/provider/Recordings;->byteArrayToHexString([B)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    .line 684
    .local v7, "sha1":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 686
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 687
    :catch_1
    move-exception v1

    .line 688
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v8, "SoundRecorder:SoundRecorder"

    const-string/jumbo v9, "Exception when close inputstream"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 687
    .end local v0    # "buf":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fileSha1":Ljava/security/MessageDigest;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "len":I
    .restart local v2    # "e":Ljava/lang/Exception;
    .local v7, "sha1":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 688
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "SoundRecorder:SoundRecorder"

    const-string/jumbo v9, "Exception when close inputstream"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 683
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 684
    :goto_4
    if-eqz v4, :cond_2

    .line 686
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 690
    :goto_5
    const/4 v4, 0x0

    .line 683
    :cond_2
    throw v8

    .line 687
    :catch_3
    move-exception v1

    .line 688
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "SoundRecorder:SoundRecorder"

    const-string/jumbo v10, "Exception when close inputstream"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 683
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    goto :goto_4

    .line 681
    .local v4, "in":Ljava/io/InputStream;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v0    # "buf":[B
    .restart local v3    # "fileSha1":Ljava/security/MessageDigest;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "len":I
    .local v7, "sha1":Ljava/lang/String;
    :cond_3
    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    goto :goto_3
.end method

.method public static notifyRecording(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "duration"    # J

    .prologue
    const/4 v8, 0x1

    .line 579
    if-nez p1, :cond_0

    .line 580
    return-void

    .line 582
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 583
    .local v0, "f":Ljava/io/File;
    const/4 v3, -0x1

    .line 584
    .local v3, "type":I
    sget-object v5, Lmiui/provider/Recordings;->CALL_RECORD_DIR:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 585
    const/4 v3, 0x1

    .line 591
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 592
    sget-object v5, Lmiui/provider/Recordings;->RECORDER_ROOT_PATH:Ljava/lang/String;

    invoke-static {v5}, Lmiui/os/FileUtils;->addNoMedia(Ljava/lang/String;)Z

    .line 593
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 594
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.android.providers.media"

    const-string/jumbo v6, "com.android.providers.media.MediaScannerReceiver"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 596
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 598
    invoke-static {v0}, Lmiui/provider/Recordings;->getSha1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, "sha1":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 600
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 601
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "file_path"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string/jumbo v5, "file_name"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string/jumbo v5, "create_time"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 604
    const-string/jumbo v5, "rec_type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 605
    const-string/jumbo v5, "db_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 606
    const-string/jumbo v5, "duration"

    const-wide/16 v6, 0x3e8

    div-long v6, p2, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 607
    const-string/jumbo v5, "sync_dirty"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 608
    const-string/jumbo v5, "in_local"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 609
    const-string/jumbo v5, "in_cloud"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 610
    const-string/jumbo v5, "sha1"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lmiui/provider/Recordings$Records;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 578
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "sha1":Ljava/lang/String;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    return-void

    .line 586
    :cond_3
    sget-object v5, Lmiui/provider/Recordings;->FM_RECORD_DIR:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 587
    const/4 v3, 0x2

    goto/16 :goto_0

    .line 588
    :cond_4
    sget-object v5, Lmiui/provider/Recordings;->RECORDER_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 589
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public static setNotificationUnreadCount(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recType"    # Ljava/lang/String;
    .param p2, "cntUnread"    # I
    .param p3, "desc"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 639
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 641
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v1, "cnt_unread"

    aput-object v1, v2, v5

    .line 642
    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "rec_type=?"

    .line 643
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v5

    .line 644
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 645
    .local v7, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 647
    .local v8, "update":Z
    :try_start_0
    sget-object v1, Lmiui/provider/Recordings$RecordingNotifications;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 648
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    const/4 v8, 0x1

    .line 650
    :goto_0
    if-eqz v7, :cond_0

    .line 651
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 655
    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 656
    .local v9, "v":Landroid/content/ContentValues;
    const-string/jumbo v1, "cnt_unread"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    if-eqz p3, :cond_1

    .line 658
    const-string/jumbo v1, "NOTIF_DESC"

    invoke-virtual {v9, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :cond_1
    if-eqz v8, :cond_4

    .line 662
    sget-object v1, Lmiui/provider/Recordings$RecordingNotifications;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 638
    :goto_1
    return-void

    .line 648
    .end local v9    # "v":Landroid/content/ContentValues;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 649
    .end local v7    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 650
    if-eqz v7, :cond_3

    .line 651
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 649
    :cond_3
    throw v1

    .line 664
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v9    # "v":Landroid/content/ContentValues;
    :cond_4
    const-string/jumbo v1, "rec_type"

    invoke-virtual {v9, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    sget-object v1, Lmiui/provider/Recordings$RecordingNotifications;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1
.end method
