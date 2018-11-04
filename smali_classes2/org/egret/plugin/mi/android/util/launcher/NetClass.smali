.class public Lorg/egret/plugin/mi/android/util/launcher/NetClass;
.super Ljava/lang/Object;
.source "NetClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final TIME_OUT:I = 0x7530


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "out"    # Ljava/io/OutputStream;
    .param p4, "listener"    # Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;

    .prologue
    .line 32
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 33
    :cond_0
    const-string/jumbo v11, "NetTool"

    const-string/jumbo v12, "url, out may be null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void

    .line 38
    :cond_1
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .local v10, "realUrl":Ljava/net/URL;
    const/4 v2, 0x0

    .line 48
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 49
    .local v7, "post":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 51
    .local v5, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 52
    .local v2, "conn":Ljava/net/HttpURLConnection;
    if-nez v2, :cond_5

    .line 53
    if-eqz p4, :cond_2

    .line 54
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unable to open "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :cond_2
    if-eqz v2, :cond_3

    .line 102
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 56
    :cond_3
    :goto_0
    return-void

    .line 39
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v7    # "post":Ljava/io/OutputStream;
    .end local v10    # "realUrl":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 40
    .local v4, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    if-eqz p4, :cond_4

    .line 42
    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    .line 44
    :cond_4
    return-void

    .line 110
    .end local v4    # "e":Ljava/net/MalformedURLException;
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "post":Ljava/io/OutputStream;
    .restart local v10    # "realUrl":Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 111
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    if-eqz p4, :cond_3

    .line 113
    const-string/jumbo v11, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    const/16 v11, 0x7530

    :try_start_3
    invoke-virtual {v2, v11}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 60
    if-eqz p2, :cond_a

    .line 61
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 62
    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 63
    .local v7, "post":Ljava/io/OutputStream;
    if-nez v7, :cond_9

    .line 64
    if-eqz p4, :cond_6

    .line 65
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unable to open post: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    :cond_6
    if-eqz v2, :cond_7

    .line 102
    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 104
    :cond_7
    if-eqz v7, :cond_8

    .line 105
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 67
    :cond_8
    :goto_1
    return-void

    .line 110
    :catch_2
    move-exception v3

    .line 111
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    if-eqz p4, :cond_8

    .line 113
    const-string/jumbo v11, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_1

    .line 69
    .end local v3    # "e":Ljava/io/IOException;
    :cond_9
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/io/OutputStream;->write([B)V

    .line 70
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 72
    .end local v7    # "post":Ljava/io/OutputStream;
    :cond_a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    const/16 v12, 0xc8

    if-eq v11, v12, :cond_e

    .line 73
    if-eqz p4, :cond_b

    .line 74
    const-string/jumbo v11, "response code is HTTP_OK"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 101
    :cond_b
    if-eqz v2, :cond_c

    .line 102
    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 104
    :cond_c
    if-eqz v7, :cond_d

    .line 105
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 76
    :cond_d
    :goto_2
    return-void

    .line 110
    :catch_3
    move-exception v3

    .line 111
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    if-eqz p4, :cond_d

    .line 113
    const-string/jumbo v11, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_2

    .line 78
    .end local v3    # "e":Ljava/io/IOException;
    :cond_e
    :try_start_7
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v6

    .line 79
    .local v6, "length":I
    const/4 v8, 0x0

    .line 80
    .local v8, "progress":I
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 81
    .local v5, "in":Ljava/io/InputStream;
    const/16 v11, 0x400

    new-array v1, v11, [B

    .line 83
    .local v1, "buffer":[B
    :cond_f
    :goto_3
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, "read":I
    if-lez v9, :cond_15

    .line 84
    if-eqz p4, :cond_10

    .line 85
    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v11

    invoke-virtual {v11}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->isRunning()Z

    move-result v11

    if-eqz v11, :cond_15

    .line 88
    :cond_10
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v11, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 89
    add-int/2addr v8, v9

    .line 90
    if-eqz p4, :cond_f

    .line 91
    move-object/from16 v0, p4

    invoke-interface {v0, v8, v6}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onProgress(II)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 94
    .end local v1    # "buffer":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "length":I
    .end local v8    # "progress":I
    .end local v9    # "read":I
    :catch_4
    move-exception v3

    .line 95
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    if-eqz p4, :cond_11

    .line 97
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 101
    :cond_11
    if-eqz v2, :cond_12

    .line 102
    :try_start_9
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 104
    :cond_12
    if-eqz v7, :cond_13

    .line 105
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 107
    :cond_13
    if-eqz v5, :cond_14

    .line 108
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 31
    .end local v3    # "e":Ljava/io/IOException;
    :cond_14
    :goto_4
    return-void

    .line 101
    .restart local v1    # "buffer":[B
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "length":I
    .restart local v8    # "progress":I
    .restart local v9    # "read":I
    :cond_15
    if-eqz v2, :cond_16

    .line 102
    :try_start_a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 104
    :cond_16
    if-eqz v7, :cond_17

    .line 105
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 107
    :cond_17
    if-eqz v5, :cond_14

    .line 108
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_4

    .line 110
    :catch_5
    move-exception v3

    .line 111
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    if-eqz p4, :cond_14

    .line 113
    const-string/jumbo v11, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_4

    .line 110
    .end local v1    # "buffer":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "length":I
    .end local v8    # "progress":I
    .end local v9    # "read":I
    :catch_6
    move-exception v3

    .line 111
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    if-eqz p4, :cond_14

    .line 113
    const-string/jumbo v11, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_4

    .line 99
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 101
    if-eqz v2, :cond_18

    .line 102
    :try_start_b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 104
    :cond_18
    if-eqz v7, :cond_19

    .line 105
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 107
    :cond_19
    if-eqz v5, :cond_1a

    .line 108
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 99
    :cond_1a
    :goto_5
    throw v11

    .line 110
    :catch_7
    move-exception v3

    .line 111
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    if-eqz p4, :cond_1a

    .line 113
    const-string/jumbo v12, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private request(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "dst"    # Ljava/io/File;
    .param p4, "listener"    # Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;

    .prologue
    .line 122
    if-eqz p3, :cond_2

    .line 123
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 124
    .local v2, "out":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v2, p4}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    .line 125
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 126
    if-eqz p4, :cond_0

    .line 127
    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v3

    invoke-virtual {v3}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->isRunning()Z

    move-result v3

    if-nez v3, :cond_1

    .line 128
    const-string/jumbo v3, "net thread is cancelled"

    invoke-interface {p4, v3}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    .line 120
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 130
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :cond_1
    const/4 v3, 0x0

    invoke-interface {p4, v3}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 146
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    if-eqz p4, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v3}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 135
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, p1, p2, v1, p4}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    .line 136
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 137
    if-eqz p4, :cond_0

    .line 138
    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v3

    invoke-virtual {v3}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->isRunning()Z

    move-result v3

    if-nez v3, :cond_3

    .line 139
    const-string/jumbo v3, "net thread is cancelled"

    invoke-interface {p4, v3}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-interface {p4, v3}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onSuccess(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public getRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->postRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequest(Ljava/lang/String;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->postRequest(Ljava/lang/String;Ljava/lang/String;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    .line 168
    return-void
.end method

.method public postRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 173
    if-nez p1, :cond_0

    .line 174
    return-object v4

    .line 177
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 178
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    .line 179
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 180
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 181
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .line 182
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    return-object v4
.end method

.method public postRequest(Ljava/lang/String;Ljava/lang/String;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;

    .prologue
    const/4 v0, 0x0

    .line 162
    if-nez p1, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->request(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    .line 161
    return-void
.end method

.method public writeResponseToFile(Ljava/lang/String;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/io/File;
    .param p3, "listener"    # Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;

    .prologue
    const/4 v0, 0x0

    .line 155
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 156
    :cond_0
    return-void

    .line 158
    :cond_1
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->request(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    .line 154
    return-void
.end method
