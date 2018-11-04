.class public Landroid/media/MediaScannerInjector;
.super Ljava/lang/Object;
.source "MediaScannerInjector.java"


# static fields
.field private static final DEBUG_LOG_PATH:Ljava/lang/String;

.field private static final MEDIA_META_APPROXIMATION:I = 0x400000

.field private static final MSG_PROCESSFILE_TIMEOUT:I = 0x1

.field private static final NOMEDIA_PATH_WHITE_LIST:[Ljava/lang/String;

.field private static final PROCESSFILE_TIMEOUT:I = 0xea60

.field private static final SECURITY_CENTER:Ljava/lang/String; = "com.miui.securitycenter"

.field private static final TAG:Ljava/lang/String; = "MediaScannerInjector"

.field private static mNoMediaWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sProcessName:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .locals 1

    sget-object v0, Landroid/media/MediaScannerInjector;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/MediaScannerInjector;->sProcessName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    sput-object p0, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageMiuiDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 29
    const-string/jumbo v1, "/debug_log/common/android.process.media/"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScannerInjector;->DEBUG_LOG_PATH:Ljava/lang/String;

    .line 32
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 33
    const-string/jumbo v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 34
    const-string/jumbo v1, "/Alarms"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 35
    const-string/jumbo v1, "/DCIM"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 36
    const-string/jumbo v1, "/DCIM/Camera"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 37
    const-string/jumbo v1, "/DCIM/Screenshots"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 38
    const-string/jumbo v1, "/Download"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 39
    const-string/jumbo v1, "/Movies"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 40
    const-string/jumbo v1, "/Music"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 41
    const-string/jumbo v1, "/Pictures"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 42
    const-string/jumbo v1, "/Podcasts"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 43
    const-string/jumbo v1, "/Ringtones"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "/Notifications"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 32
    sput-object v0, Landroid/media/MediaScannerInjector;->NOMEDIA_PATH_WHITE_LIST:[Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

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

.method private static copyFile(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dst"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    .line 131
    const/4 v3, 0x0

    .line 132
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 135
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/16 v8, 0xaa

    :try_start_2
    invoke-virtual {v6, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 141
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 142
    .local v7, "size":I
    const/16 v8, 0x1000

    new-array v0, v8, [B

    .line 143
    .local v0, "b":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-lez v1, :cond_0

    .line 144
    add-int/2addr v7, v1

    .line 145
    if-lt v7, p2, :cond_4

    .line 146
    sub-int v8, v7, p2

    sub-int/2addr v1, v8

    .line 147
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 156
    :cond_0
    if-eqz v4, :cond_1

    .line 157
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 159
    :cond_1
    if-eqz v6, :cond_2

    .line 160
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_1
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 130
    .end local v0    # "b":[B
    .end local v1    # "bytesRead":I
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "size":I
    :cond_3
    :goto_2
    return-void

    .line 150
    .restart local v0    # "b":[B
    .restart local v1    # "bytesRead":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "size":I
    :cond_4
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v6, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 152
    .end local v0    # "b":[B
    .end local v1    # "bytesRead":I
    .end local v7    # "size":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 153
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_5
    const-string/jumbo v8, "MediaScannerInjector"

    const-string/jumbo v9, "IOException "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 156
    if-eqz v3, :cond_5

    .line 157
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 159
    :cond_5
    if-eqz v5, :cond_3

    .line 160
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 162
    :catch_1
    move-exception v2

    .line 163
    const-string/jumbo v8, "MediaScannerInjector"

    const-string/jumbo v9, "IOException"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 162
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "b":[B
    .restart local v1    # "bytesRead":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "size":I
    :catch_2
    move-exception v2

    .line 163
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "MediaScannerInjector"

    const-string/jumbo v9, "IOException"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 154
    .end local v0    # "b":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "size":I
    :catchall_0
    move-exception v8

    .line 156
    :goto_4
    if-eqz v3, :cond_6

    .line 157
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 159
    :cond_6
    if-eqz v5, :cond_7

    .line 160
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 154
    :cond_7
    :goto_5
    throw v8

    .line 162
    :catch_3
    move-exception v2

    .line 163
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "MediaScannerInjector"

    const-string/jumbo v10, "IOException"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 154
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 152
    .local v3, "fis":Ljava/io/FileInputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_3

    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public static forceRescanExternal(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "media"

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 197
    .local v1, "mMediaProvider":Landroid/content/IContentProvider;
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "externalStoragePath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "unhide"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 195
    return-void
.end method

.method public static getNoMediaWhiteList()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    sget-object v1, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    monitor-enter v1

    .line 190
    :try_start_0
    invoke-static {}, Landroid/media/MediaScannerInjector;->loadNoMediaWhiteListLocked()V

    .line 191
    sget-object v0, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static initDebugDirectory()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 120
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/media/MediaScannerInjector;->DEBUG_LOG_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    invoke-static {v0, v2, v2, v2}, Lmiui/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    const-string/jumbo v1, "MediaScannerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mkdir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/MediaScannerInjector;->DEBUG_LOG_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 126
    :cond_0
    sget-object v1, Landroid/media/MediaScannerInjector;->DEBUG_LOG_PATH:Ljava/lang/String;

    invoke-static {v1}, Lmiui/os/FileUtils;->addNoMedia(Ljava/lang/String;)Z

    .line 119
    :cond_1
    return-void
.end method

.method public static declared-synchronized initMediaFileCapture(Ljava/lang/String;)V
    .locals 3
    .param p0, "process"    # Ljava/lang/String;

    .prologue
    const-class v1, Landroid/media/MediaScannerInjector;

    monitor-enter v1

    .line 76
    :try_start_0
    sput-object p0, Landroid/media/MediaScannerInjector;->sProcessName:Ljava/lang/String;

    .line 77
    sget-object v0, Landroid/media/MediaScannerInjector;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    sget-object v0, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Landroid/media/MediaScannerInjector$1;

    const-string/jumbo v2, "MediaScannerInjector"

    invoke-direct {v0, v2}, Landroid/media/MediaScannerInjector$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/MediaScannerInjector;->sHandlerThread:Landroid/os/HandlerThread;

    .line 100
    sget-object v0, Landroid/media/MediaScannerInjector;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 75
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isInNoMediaWhiteList(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 181
    sget-object v1, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    monitor-enter v1

    .line 182
    :try_start_0
    invoke-static {}, Landroid/media/MediaScannerInjector;->loadNoMediaWhiteListLocked()V

    .line 183
    const-string/jumbo v0, "MediaScannerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isInNoMediaWhiteList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v0, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static keepMimeType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "oldMimeType"    # Ljava/lang/String;
    .param p1, "newMimeType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 59
    if-eqz p1, :cond_0

    .line 60
    const-string/jumbo v1, "audio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 62
    :goto_0
    const-string/jumbo v1, "video/mp2p"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 64
    return v2

    .line 59
    :cond_0
    const/4 v0, 0x1

    .local v0, "newTypeIsAudio":Z
    goto :goto_0

    .line 67
    .end local v0    # "newTypeIsAudio":Z
    :cond_1
    const-string/jumbo v1, "video/x-matroska"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 69
    return v2

    .line 72
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private static loadNoMediaWhiteListLocked()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 169
    sget-object v4, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 170
    return-void

    .line 172
    :cond_0
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "externalStoragePath":Ljava/lang/String;
    sget-object v4, Landroid/media/MediaScannerInjector;->NOMEDIA_PATH_WHITE_LIST:[Ljava/lang/String;

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v4, v3

    .line 174
    .local v2, "path":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "element":Ljava/lang/String;
    const-string/jumbo v6, "MediaScannerInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "add "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "to white list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-object v6, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "element":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static processFileBegin(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 105
    sget-object v1, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 106
    sget-object v1, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 107
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 109
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    sput-object p1, Landroid/media/MediaScannerInjector;->sContext:Landroid/content/Context;

    .line 104
    return-void
.end method

.method public static processFileEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    sget-object v0, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    :cond_0
    sput-object v2, Landroid/media/MediaScannerInjector;->sContext:Landroid/content/Context;

    .line 112
    return-void
.end method
