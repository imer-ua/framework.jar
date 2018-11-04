.class public Lcom/miui/whetstone/app/WhetstoneAppManager;
.super Ljava/lang/Object;
.source "WhetstoneAppManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WhetstoneAppManager"

.field private static final UNINIT:I = -0x2

.field private static _sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

.field private static final sMutex:Ljava/lang/Object;

.field private static sPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/whetstone/strategy/WhetstonePackageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplicationThread:Landroid/os/IBinder;

.field private mContex:Landroid/content/Context;

.field public mEnable:Z

.field public mHasInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->sPackages:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->sMutex:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/miui/whetstone/app/WhetstoneApplicationThread;

    invoke-direct {v0}, Lcom/miui/whetstone/app/WhetstoneApplicationThread;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mApplicationThread:Landroid/os/IBinder;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mHasInit:Z

    .line 36
    invoke-direct {p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;->checkInit()V

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/app/WhetstoneAppManager;->attach(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public static addBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 86
    return-void
.end method

.method public static addBitmapDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .param p0, "dr"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 79
    return-void
.end method

.method public static addDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 83
    return-void
.end method

.method private checkInit()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/whetstone/app/WhetstoneAppManager;
    .locals 2

    .prologue
    const-class v1, Lcom/miui/whetstone/app/WhetstoneAppManager;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/miui/whetstone/app/WhetstoneAppManager;

    invoke-direct {v0}, Lcom/miui/whetstone/app/WhetstoneAppManager;-><init>()V

    sput-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    .line 64
    :cond_0
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/whetstone/app/WhetstoneAppManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/miui/whetstone/app/WhetstoneAppManager;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/miui/whetstone/app/WhetstoneAppManager;

    invoke-direct {v0, p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    .line 71
    :cond_0
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getLeakCanaryWorksProperty()Z
    .locals 2

    .prologue
    .line 57
    const-string/jumbo v0, "persist.sys.mem_leak_debug"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static handleTrimMemory(I)Z
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public static isEnable()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public static restoreDirectBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 89
    return-void
.end method

.method public static setHardwareRendererIfNeeded()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public static setWhetstonePackageRecordInfo(Ljava/util/List;Z)V
    .locals 0
    .param p1, "isAppend"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/whetstone/strategy/WhetstonePackageInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/whetstone/strategy/WhetstonePackageInfo;>;"
    return-void
.end method

.method public static trimHeapSizeIfNeeded(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 103
    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 0
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 50
    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 53
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    return-void
.end method
