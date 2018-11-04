.class Lcom/miui/enterprise/sdk/DeviceManager$1;
.super Ljava/lang/Object;
.source "DeviceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/enterprise/sdk/DeviceManager;->setBootAnimation(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/enterprise/sdk/DeviceManager;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$pip:[Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lcom/miui/enterprise/sdk/DeviceManager;[Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/enterprise/sdk/DeviceManager;
    .param p2, "val$pip"    # [Landroid/os/ParcelFileDescriptor;
    .param p3, "val$path"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/miui/enterprise/sdk/DeviceManager$1;->this$0:Lcom/miui/enterprise/sdk/DeviceManager;

    iput-object p2, p0, Lcom/miui/enterprise/sdk/DeviceManager$1;->val$pip:[Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/miui/enterprise/sdk/DeviceManager$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 165
    const/4 v3, 0x0

    .line 166
    .local v3, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 168
    .local v5, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/miui/enterprise/sdk/DeviceManager$1;->val$path:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/miui/enterprise/sdk/DeviceManager$1;->val$pip:[Landroid/os/ParcelFileDescriptor;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    .local v6, "os":Ljava/io/OutputStream;
    const/16 v7, 0x800

    :try_start_2
    new-array v0, v7, [B

    .line 172
    .end local v5    # "os":Ljava/io/OutputStream;
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .local v2, "i":I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_2

    .line 173
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 177
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .local v5, "os":Ljava/io/OutputStream;
    move-object v3, v4

    .line 178
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    :goto_1
    :try_start_3
    const-string/jumbo v7, "DeviceManager"

    const-string/jumbo v8, "something wrong"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    if-eqz v3, :cond_0

    .line 182
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 184
    :cond_0
    if-eqz v5, :cond_1

    .line 185
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 187
    :cond_1
    iget-object v7, p0, Lcom/miui/enterprise/sdk/DeviceManager$1;->val$pip:[Landroid/os/ParcelFileDescriptor;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 164
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 175
    .restart local v0    # "buffer":[B
    .restart local v2    # "i":I
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :cond_2
    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 176
    const-string/jumbo v7, "DeviceManager"

    const-string/jumbo v8, "Finish trans bootanim file"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 181
    if-eqz v4, :cond_3

    .line 182
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 184
    :cond_3
    if-eqz v6, :cond_4

    .line 185
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 187
    :cond_4
    iget-object v7, p0, Lcom/miui/enterprise/sdk/DeviceManager$1;->val$pip:[Landroid/os/ParcelFileDescriptor;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_3
    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    goto :goto_2

    .line 188
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 189
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "DeviceManager"

    const-string/jumbo v8, "something wrong"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 188
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "os":Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    .line 189
    const-string/jumbo v7, "DeviceManager"

    const-string/jumbo v8, "something wrong"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 179
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 181
    :goto_4
    if-eqz v3, :cond_5

    .line 182
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 184
    :cond_5
    if-eqz v5, :cond_6

    .line 185
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 187
    :cond_6
    iget-object v8, p0, Lcom/miui/enterprise/sdk/DeviceManager$1;->val$pip:[Landroid/os/ParcelFileDescriptor;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 179
    :goto_5
    throw v7

    .line 188
    :catch_3
    move-exception v1

    .line 189
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "DeviceManager"

    const-string/jumbo v9, "something wrong"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 179
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "in":Ljava/io/InputStream;
    .local v5, "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_4

    .end local v3    # "in":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .local v5, "os":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_4

    .line 177
    .local v3, "in":Ljava/io/InputStream;
    .local v5, "os":Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    goto :goto_1
.end method
