.class public Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;
.super Ljava/lang/Object;
.source "EgretRuntimeLibrary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "EgretRuntimeLibrary"


# instance fields
.field private cacheRoot:Ljava/io/File;

.field private downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;

.field private volatile isCancelling:Z

.field private library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

.field private root:Ljava/io/File;

.field private sdRoot:Ljava/io/File;


# direct methods
.method static synthetic -get0(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;
    .locals 1

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;

    return-object v0
.end method

.method static synthetic -get1(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->isCancelling:Z

    return v0
.end method

.method static synthetic -get2(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;
    .locals 1

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)Z
    .locals 1

    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->doMove()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)V
    .locals 0

    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->doUnzip()V

    return-void
.end method

.method public constructor <init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p1, "library"    # Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;
    .param p2, "root"    # Ljava/io/File;
    .param p3, "cacheRoot"    # Ljava/io/File;
    .param p4, "sdRoot"    # Ljava/io/File;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    .line 33
    iput-object p2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->root:Ljava/io/File;

    .line 34
    iput-object p3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->cacheRoot:Ljava/io/File;

    .line 35
    iput-object p4, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->sdRoot:Ljava/io/File;

    .line 31
    return-void
.end method

.method private doDownload()V
    .locals 5

    .prologue
    .line 54
    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->sdRoot:Ljava/io/File;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->sdRoot:Ljava/io/File;

    .line 55
    .local v2, "targetRoot":Ljava/io/File;
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-virtual {v3}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .local v1, "target":Ljava/io/File;
    new-instance v0, Lorg/egret/plugin/mi/android/util/launcher/NetClass;

    invoke-direct {v0}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;-><init>()V

    .line 57
    .local v0, "net":Lorg/egret/plugin/mi/android/util/launcher/NetClass;
    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-virtual {v3}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 58
    new-instance v4, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$1;

    invoke-direct {v4, p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$1;-><init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)V

    .line 57
    invoke-virtual {v0, v3, v1, v4}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->writeResponseToFile(Ljava/lang/String;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    .line 53
    return-void

    .line 54
    .end local v0    # "net":Lorg/egret/plugin/mi/android/util/launcher/NetClass;
    .end local v1    # "target":Ljava/io/File;
    .end local v2    # "targetRoot":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->cacheRoot:Ljava/io/File;

    .restart local v2    # "targetRoot":Ljava/io/File;
    goto :goto_0
.end method

.method private doMove()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 82
    iget-boolean v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->isCancelling:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;

    const-string/jumbo v1, "thread is cancelling"

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;->onError(Ljava/lang/String;)V

    .line 84
    return v4

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->sdRoot:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 87
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->sdRoot:Ljava/io/File;

    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-virtual {v2}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->cacheRoot:Ljava/io/File;

    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-virtual {v3}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    invoke-static {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/FileUtil;->Copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 89
    :cond_2
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;

    const-string/jumbo v1, "copy file error"

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;->onError(Ljava/lang/String;)V

    .line 90
    return v4
.end method

.method private doUnzip()V
    .locals 5

    .prologue
    .line 96
    iget-boolean v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->isCancelling:Z

    if-eqz v3, :cond_0

    .line 97
    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;

    const-string/jumbo v4, "thread is cancelling"

    invoke-interface {v3, v4}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;->onError(Ljava/lang/String;)V

    .line 99
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->cacheRoot:Ljava/io/File;

    iget-object v4, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-virtual {v4}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    .local v0, "cache":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->root:Ljava/io/File;

    iget-object v4, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-virtual {v4}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getLibraryName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .local v1, "target":Ljava/io/File;
    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-virtual {v3}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getZipCheckSum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/egret/plugin/mi/android/util/launcher/Md5Util;->checkMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;

    const-string/jumbo v4, "cache file md5 error"

    invoke-interface {v3, v4}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;->onError(Ljava/lang/String;)V

    .line 104
    :cond_1
    new-instance v2, Lorg/egret/plugin/mi/android/util/launcher/ZipClass;

    invoke-direct {v2}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass;-><init>()V

    .line 105
    .local v2, "zip":Lorg/egret/plugin/mi/android/util/launcher/ZipClass;
    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->root:Ljava/io/File;

    new-instance v4, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$2;

    invoke-direct {v4, p0, v0, v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$2;-><init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v2, v0, v3, v4}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass;->unzip(Ljava/io/File;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;)V

    .line 95
    return-void
.end method


# virtual methods
.method public download(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->library:Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->root:Ljava/io/File;

    if-nez v0, :cond_1

    .line 41
    :cond_0
    const-string/jumbo v0, "libray, root, cacheRoot, listener may be null"

    invoke-interface {p1, v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;->onError(Ljava/lang/String;)V

    .line 42
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->cacheRoot:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 40
    if-eqz p1, :cond_0

    .line 44
    iput-object p1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->downloadListener:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;

    .line 38
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->isCancelling:Z

    .line 50
    invoke-direct {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->doDownload()V

    .line 48
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->isCancelling:Z

    .line 136
    return-void
.end method
