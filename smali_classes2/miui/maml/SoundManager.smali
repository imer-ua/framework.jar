.class public Lmiui/maml/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/SoundManager$Command;,
        Lmiui/maml/SoundManager$SoundOptions;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-SoundManager$CommandSwitchesValues:[I = null

.field private static final ADVANCE:Ljava/lang/String; = "advance/"

.field private static final LOCKSCREEN_AUDIO:Ljava/lang/String; = "lockscreen_audio/"

.field private static final LOG_TAG:Ljava/lang/String; = "MamlSoundManager"

.field private static final MAX_FILE_SIZE:I = 0x80000

.field private static final MAX_STREAMS:I = 0x8


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInitSignal:Ljava/lang/Object;

.field private mInitialized:Z

.field private mPendingSoundMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/maml/SoundManager$SoundOptions;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSoundMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceManager:Lmiui/maml/ResourceManager;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lmiui/maml/SoundManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmiui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/maml/SoundManager;)Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method private static synthetic -getmiui-maml-SoundManager$CommandSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/SoundManager;->-miui-maml-SoundManager$CommandSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/SoundManager;->-miui-maml-SoundManager$CommandSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/maml/SoundManager$Command;->values()[Lmiui/maml/SoundManager$Command;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/maml/SoundManager$Command;->Pause:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/SoundManager$Command;->Play:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/maml/SoundManager$Command;->Resume:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lmiui/maml/SoundManager$Command;->Stop:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lmiui/maml/SoundManager;->-miui-maml-SoundManager$CommandSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lmiui/maml/SoundManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/maml/SoundManager;->mInitialized:Z

    return p1
.end method

.method static synthetic -set1(Lmiui/maml/SoundManager;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0

    iput-object p1, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method public constructor <init>(Lmiui/maml/ScreenContext;)V
    .locals 1
    .param p1, "context"    # Lmiui/maml/ScreenContext;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    .line 88
    iget-object v0, p1, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iput-object v0, p0, Lmiui/maml/SoundManager;->mResourceManager:Lmiui/maml/ResourceManager;

    .line 90
    invoke-virtual {p1}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/SoundManager;->mHandler:Landroid/os/Handler;

    .line 87
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    .line 94
    iget-boolean v1, p0, Lmiui/maml/SoundManager;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 95
    return-void

    .line 98
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lmiui/maml/SoundManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 99
    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0x8

    const/4 v3, 0x3

    const/16 v4, 0x64

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 100
    iget-object v1, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 101
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/SoundManager;->mInitialized:Z

    .line 93
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v1, p0, Lmiui/maml/SoundManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lmiui/maml/SoundManager$1;

    invoke-direct {v2, p0}, Lmiui/maml/SoundManager$1;-><init>(Lmiui/maml/SoundManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    iget-object v2, p0, Lmiui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    monitor-enter v2

    .line 117
    :goto_1
    :try_start_0
    iget-boolean v1, p0, Lmiui/maml/SoundManager;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    monitor-exit v2

    goto :goto_0

    .line 120
    :cond_2
    :try_start_1
    iget-object v1, p0, Lmiui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 121
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 115
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private declared-synchronized playSoundImp(ILmiui/maml/SoundManager$SoundOptions;)I
    .locals 10
    .param p1, "sound"    # I
    .param p2, "options"    # Lmiui/maml/SoundManager$SoundOptions;

    .prologue
    const/4 v9, 0x0

    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 226
    return v9

    .line 228
    :cond_0
    :try_start_1
    iget-boolean v0, p2, Lmiui/maml/SoundManager$SoundOptions;->mKeepCur:Z

    if-nez v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lmiui/maml/SoundManager;->stopAllPlaying()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :cond_1
    :try_start_2
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p2, Lmiui/maml/SoundManager$SoundOptions;->mVolume:F

    iget v3, p2, Lmiui/maml/SoundManager$SoundOptions;->mVolume:F

    iget-boolean v1, p2, Lmiui/maml/SoundManager$SoundOptions;->mLoop:Z

    if-eqz v1, :cond_2

    const/4 v5, -0x1

    :goto_0
    const/4 v4, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 234
    .local v7, "cur":I
    iget-object v0, p0, Lmiui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 235
    return v7

    .end local v7    # "cur":I
    :cond_2
    move v5, v9

    .line 233
    goto :goto_0

    .line 236
    :catch_0
    move-exception v8

    .line 237
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v0, "MamlSoundManager"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 239
    return v9

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 2
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    .line 256
    if-nez p3, :cond_0

    .line 257
    iget-object v0, p0, Lmiui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/SoundManager$SoundOptions;

    invoke-direct {p0, p2, v0}, Lmiui/maml/SoundManager;->playSoundImp(ILmiui/maml/SoundManager$SoundOptions;)I

    .line 259
    :cond_0
    iget-object v0, p0, Lmiui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 263
    invoke-virtual {p0}, Lmiui/maml/SoundManager;->stopAllPlaying()V

    .line 262
    return-void
.end method

.method public declared-synchronized playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)I
    .locals 13
    .param p1, "sound"    # Ljava/lang/String;
    .param p2, "options"    # Lmiui/maml/SoundManager$SoundOptions;

    .prologue
    const/4 v12, 0x0

    monitor-enter p0

    .line 152
    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/SoundManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0}, Lmiui/maml/SoundManager;->init()V

    .line 156
    :cond_0
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    .line 157
    return v12

    .line 159
    :cond_1
    :try_start_1
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 160
    .local v11, "sd":Ljava/lang/Integer;
    if-nez v11, :cond_8

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_4

    .line 162
    iget-object v0, p0, Lmiui/maml/SoundManager;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceManager;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v9

    .line 163
    .local v9, "file":Landroid/os/MemoryFile;
    if-nez v9, :cond_2

    .line 164
    const-string/jumbo v0, "MamlSoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the sound does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 165
    return v12

    .line 166
    :cond_2
    :try_start_2
    invoke-virtual {v9}, Landroid/os/MemoryFile;->length()I

    move-result v0

    const/high16 v1, 0x80000

    if-le v0, v1, :cond_3

    .line 168
    const-string/jumbo v0, "MamlSoundManager"

    const-string/jumbo v1, "the sound file is larger than %d KB: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 169
    return v12

    .line 173
    :cond_3
    :try_start_3
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v9}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v9}, Landroid/os/MemoryFile;->length()I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 174
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {v9}, Landroid/os/MemoryFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    .end local v9    # "file":Landroid/os/MemoryFile;
    :goto_0
    :try_start_4
    iget-object v0, p0, Lmiui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-virtual {v0, v11, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 204
    return v12

    .line 176
    .restart local v9    # "file":Landroid/os/MemoryFile;
    :catch_0
    move-exception v7

    .line 177
    .local v7, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v0, "MamlSoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fail to load sound. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "file":Landroid/os/MemoryFile;
    .end local v11    # "sd":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 180
    .restart local v11    # "sd":Ljava/lang/Integer;
    :cond_4
    :try_start_6
    new-instance v10, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_audio/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "advance/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 182
    const-string/jumbo v0, "MamlSoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the sound does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    .line 183
    return v12

    .line 184
    :cond_5
    :try_start_7
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x80000

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 186
    const-string/jumbo v0, "MamlSoundManager"

    const-string/jumbo v1, "the sound file is larger than %d KB: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    .line 187
    return v12

    .line 189
    :cond_6
    const/4 v8, 0x0

    .line 192
    .local v8, "fd":Landroid/os/ParcelFileDescriptor;
    const/high16 v0, 0x10000000

    .line 191
    :try_start_8
    invoke-static {v10, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 193
    .local v8, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v8, :cond_7

    .line 194
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 195
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 200
    :cond_7
    :try_start_9
    invoke-static {v8}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 197
    .end local v8    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v7

    .line 198
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_a
    const-string/jumbo v0, "MamlSoundManager"

    const-string/jumbo v1, "fail to load sound. "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 200
    :try_start_b
    invoke-static {v8}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 199
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    .line 200
    invoke-static {v8}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 199
    throw v0

    .line 207
    .end local v10    # "file":Ljava/io/File;
    :cond_8
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lmiui/maml/SoundManager;->playSoundImp(ILmiui/maml/SoundManager$SoundOptions;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized playSound(ILmiui/maml/SoundManager$Command;)V
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "command"    # Lmiui/maml/SoundManager$Command;

    .prologue
    monitor-enter p0

    .line 129
    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/SoundManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0}, Lmiui/maml/SoundManager;->init()V

    .line 132
    :cond_0
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    if-gtz p1, :cond_2

    :cond_1
    monitor-exit p0

    .line 133
    return-void

    .line 135
    :cond_2
    :try_start_1
    invoke-static {}, Lmiui/maml/SoundManager;->-getmiui-maml-SoundManager$CommandSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    monitor-exit p0

    .line 128
    return-void

    .line 139
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->pause(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 142
    :pswitch_2
    :try_start_3
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->resume(I)V

    goto :goto_0

    .line 145
    :pswitch_3
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->stop(I)V

    .line 146
    iget-object v0, p0, Lmiui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 211
    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/SoundManager;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 212
    return-void

    .line 214
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lmiui/maml/SoundManager;->stopAllPlaying()V

    .line 215
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 217
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 218
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 221
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/SoundManager;->mInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 210
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected stopAllPlaying()V
    .locals 4

    .prologue
    .line 243
    iget-object v2, p0, Lmiui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    return-void

    .line 246
    :cond_0
    iget-object v2, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v2, :cond_1

    .line 247
    iget-object v2, p0, Lmiui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sd$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 248
    .local v0, "sd":Ljava/lang/Integer;
    iget-object v2, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_0

    .line 251
    .end local v0    # "sd":Ljava/lang/Integer;
    .end local v1    # "sd$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lmiui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 242
    return-void
.end method
