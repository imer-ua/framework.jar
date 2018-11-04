.class public Lmiui/app/ToggleManagerCompatibility;
.super Ljava/lang/Object;
.source "ToggleManagerCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/ToggleManagerCompatibility$1;,
        Lmiui/app/ToggleManagerCompatibility$2;,
        Lmiui/app/ToggleManagerCompatibility$3;,
        Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;,
        Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;,
        Lmiui/app/ToggleManagerCompatibility$Point;
    }
.end annotation


# static fields
.field public static final CUSTOM_BASE_ID:I = 0x2710

.field private static final PROCESS_NAME_SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"

.field public static final TAG:Ljava/lang/String; = "ToggleManagerCompatibility"

.field private static mCustomIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mCustomToggleComponentNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCustomToggleImages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static mCustomToggleLabelNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCustomToggleOffColor:I

.field private static mCustomToggleOnColor:I

.field private static mCustomToggleStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static mEnableCustom:Z

.field private static mIsSystemUI:Z

.field private static mObjectLock:Ljava/lang/Object;

.field private static mToggleManager:Lmiui/app/ToggleManager;

.field private static mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;


# instance fields
.field private mBgHandler:Landroid/os/Handler;

.field private mBgThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field private mCustomToggleChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomToggleQueryRunnable:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

.field private final mDevelopmentObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mTogglOrderObserver:Landroid/database/ContentObserver;

.field private mToggleChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/app/ToggleManager$OnToggleChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mToggleOrderChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/app/ToggleManager$OnToggleOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/app/ToggleManagerCompatibility;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get4()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get5()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get6()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get7()Z
    .locals 1

    sget-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    return v0
.end method

.method static synthetic -get8()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get9(Lmiui/app/ToggleManagerCompatibility;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mEnableCustom:Z

    .line 69
    sput-object v1, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    .line 70
    sput-object v1, Lmiui/app/ToggleManagerCompatibility;->mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    invoke-direct {v0, p0}, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;-><init>(Lmiui/app/ToggleManagerCompatibility;)V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleQueryRunnable:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    .line 124
    new-instance v0, Lmiui/app/ToggleManagerCompatibility$1;

    invoke-direct {v0, p0}, Lmiui/app/ToggleManagerCompatibility$1;-><init>(Lmiui/app/ToggleManagerCompatibility;)V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    new-instance v0, Lmiui/app/ToggleManagerCompatibility$2;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lmiui/app/ToggleManagerCompatibility$2;-><init>(Lmiui/app/ToggleManagerCompatibility;Landroid/os/Handler;)V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mDevelopmentObserver:Landroid/database/ContentObserver;

    .line 681
    new-instance v0, Lmiui/app/ToggleManagerCompatibility$3;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lmiui/app/ToggleManagerCompatibility$3;-><init>(Lmiui/app/ToggleManagerCompatibility;Landroid/os/Handler;)V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mTogglOrderObserver:Landroid/database/ContentObserver;

    .line 103
    iput-object p1, p0, Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;

    .line 104
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    if-nez v0, :cond_0

    .line 105
    invoke-static {p1}, Lmiui/app/ToggleManager;->createInstance(Landroid/content/Context;)Lmiui/app/ToggleManager;

    move-result-object v0

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    .line 107
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ToggleManagerCompatibility"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgThread:Landroid/os/HandlerThread;

    .line 108
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 109
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    .line 111
    const-string/jumbo v0, "com.android.systemui"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOnColor:I

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x11070000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOffColor:I

    .line 117
    sget-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    invoke-direct {p0, v0}, Lmiui/app/ToggleManagerCompatibility;->registerListener(Z)V

    .line 102
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lmiui/app/ToggleManagerCompatibility;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lmiui/app/ToggleManagerCompatibility;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/ToggleManagerCompatibility;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;

    .line 99
    :cond_0
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;

    return-object v0
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 822
    instance-of v5, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    .line 823
    nop

    nop

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5

    .line 825
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 826
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 827
    .local v3, "height":I
    if-eqz v4, :cond_1

    if-nez v3, :cond_2

    :cond_1
    const/4 v5, 0x0

    return-object v5

    .line 828
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 829
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 830
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 831
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 832
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 833
    return-object v0

    .line 828
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "config":Landroid/graphics/Bitmap$Config;
    :cond_3
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static getCustomToggleIds(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v0, "customIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getToggleList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, "toggleList":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 264
    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, "toggles":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_1

    .line 267
    :try_start_0
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 268
    .local v3, "id":I
    const/16 v6, 0x2710

    if-lt v3, v6, :cond_0

    .line 269
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    .end local v3    # "id":I
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 273
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 278
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v5    # "toggles":[Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getCustomToggleTileSpecById(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # Ljava/lang/Integer;

    .prologue
    .line 385
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 386
    :try_start_0
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getCustomToggleTileSpecs(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    sget-object v5, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v5

    .line 375
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "id$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 377
    .local v0, "id":Ljava/lang/Integer;
    sget-object v4, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 378
    .local v3, "spec":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 374
    .end local v0    # "id":Ljava/lang/Integer;
    .end local v1    # "id$iterator":Ljava/util/Iterator;
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "spec":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "id$iterator":Ljava/util/Iterator;
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    monitor-exit v5

    .line 380
    return-object v2
.end method

.method public static getImageDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 542
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManagerCompatibility;->getImageDrawable(ILandroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getImageDrawable(ILandroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I

    .prologue
    .line 552
    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getStatus(I)Z

    move-result v1

    sget v4, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOnColor:I

    sget v5, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOffColor:I

    move v0, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lmiui/app/ToggleManagerCompatibility;->getImageDrawable(IZLandroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getImageDrawable(IZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "id"    # I
    .param p1, "isOpen"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 556
    sget v4, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOnColor:I

    sget v5, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOffColor:I

    const/4 v3, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmiui/app/ToggleManagerCompatibility;->getImageDrawable(IZLandroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getImageDrawable(IZLandroid/content/Context;III)Landroid/graphics/drawable/Drawable;
    .locals 14
    .param p0, "id"    # I
    .param p1, "isOpen"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "color"    # I
    .param p4, "customToggleOnColor"    # I
    .param p5, "customToggleOffColor"    # I

    .prologue
    .line 560
    sget-object v9, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v9

    .line 562
    const/16 v8, 0x2710

    if-lt p0, v8, :cond_3

    .line 563
    :try_start_0
    sget-object v8, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 564
    sget-object v8, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 571
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-nez p1, :cond_4

    .line 572
    const/16 v8, 0x2710

    if-lt p0, v8, :cond_1

    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x110200b9

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 574
    .local v2, "bgDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 575
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 574
    invoke-static {v8, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 576
    .local v4, "combined":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 577
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12, v8, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 578
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 579
    new-instance v7, Lmiui/app/ToggleManagerCompatibility$Point;

    invoke-direct {v7}, Lmiui/app/ToggleManagerCompatibility$Point;-><init>()V

    .line 580
    .local v7, "point":Lmiui/app/ToggleManagerCompatibility$Point;
    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lmiui/app/ToggleManagerCompatibility;->getTargetDrawableSize(Landroid/content/Context;Lmiui/app/ToggleManagerCompatibility$Point;)V

    .line 581
    iget v8, v7, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    int-to-double v10, v8

    const-wide/high16 v12, 0x4004000000000000L    # 2.5

    div-double/2addr v10, v12

    double-to-int v8, v10

    iget v10, v7, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x4004000000000000L    # 2.5

    div-double/2addr v10, v12

    double-to-int v10, v10

    move-object/from16 v0, p2

    invoke-static {v0, v5, v8, v10}, Lmiui/app/ToggleManagerCompatibility;->zoomDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 582
    if-eqz v5, :cond_1

    .line 583
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    sub-int/2addr v8, v10

    div-int/lit8 v6, v8, 0x2

    .line 585
    .local v6, "margin":I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    sub-int/2addr v10, v6

    .line 584
    invoke-virtual {v5, v6, v6, v8, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 586
    if-eqz v5, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    if-nez v8, :cond_0

    .line 587
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p5

    invoke-virtual {v5, v0, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 589
    :cond_0
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 590
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v5, v8, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "combined":Landroid/graphics/Bitmap;
    .end local v6    # "margin":I
    .end local v7    # "point":Lmiui/app/ToggleManagerCompatibility$Point;
    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    monitor-exit v9

    .line 618
    return-object v5

    .line 561
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v8, 0x0

    monitor-exit v9

    .line 566
    return-object v8

    .line 569
    :cond_3
    :try_start_1
    sget-object v8, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-static/range {p0 .. p2}, Lmiui/app/ToggleManager;->getImageDrawable(IZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 594
    :cond_4
    const/16 v8, 0x2710

    if-lt p0, v8, :cond_1

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x110200ba

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 596
    .restart local v2    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 597
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 596
    invoke-static {v8, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 598
    .restart local v4    # "combined":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 599
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12, v8, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 600
    if-eqz v2, :cond_5

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    if-eqz v8, :cond_5

    .line 601
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p3

    invoke-virtual {v2, v0, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 603
    :cond_5
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 605
    new-instance v7, Lmiui/app/ToggleManagerCompatibility$Point;

    invoke-direct {v7}, Lmiui/app/ToggleManagerCompatibility$Point;-><init>()V

    .line 606
    .restart local v7    # "point":Lmiui/app/ToggleManagerCompatibility$Point;
    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lmiui/app/ToggleManagerCompatibility;->getTargetDrawableSize(Landroid/content/Context;Lmiui/app/ToggleManagerCompatibility$Point;)V

    .line 607
    iget v8, v7, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    int-to-double v10, v8

    const-wide/high16 v12, 0x4004000000000000L    # 2.5

    div-double/2addr v10, v12

    double-to-int v8, v10

    iget v10, v7, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x4004000000000000L    # 2.5

    div-double/2addr v10, v12

    double-to-int v10, v10

    move-object/from16 v0, p2

    invoke-static {v0, v5, v8, v10}, Lmiui/app/ToggleManagerCompatibility;->zoomDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 608
    if-eqz v5, :cond_1

    .line 609
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    sub-int/2addr v8, v10

    div-int/lit8 v6, v8, 0x2

    .line 611
    .restart local v6    # "margin":I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    sub-int/2addr v10, v6

    .line 610
    invoke-virtual {v5, v6, v6, v8, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 612
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p4

    invoke-virtual {v5, v0, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 613
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 614
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v5, v8, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 560
    .end local v2    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "combined":Landroid/graphics/Bitmap;
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "margin":I
    .end local v7    # "point":Lmiui/app/ToggleManagerCompatibility$Point;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method private static getMd5Num(Ljava/lang/String;)I
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 723
    :try_start_0
    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 724
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 725
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 726
    .local v1, "hashInt":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 727
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "hashInt":Ljava/math/BigInteger;
    :catch_0
    move-exception v2

    .line 728
    .local v2, "lException":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getStatus(I)Z
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 501
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 502
    const/16 v1, 0x2710

    if-lt p0, v1, :cond_0

    .line 504
    :try_start_0
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 509
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-static {p0}, Lmiui/app/ToggleManager;->getStatus(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 501
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 489
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 490
    :try_start_0
    const-string/jumbo v0, ""

    .line 491
    .local v0, "statusName":Ljava/lang/String;
    const/16 v1, 0x2710

    if-lt p0, v1, :cond_0

    .line 492
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "statusName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v0    # "statusName":Ljava/lang/String;
    :goto_0
    monitor-exit v2

    .line 496
    return-object v0

    .line 494
    :cond_0
    :try_start_1
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 489
    .end local v0    # "statusName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getTargetDrawableSize(Landroid/content/Context;Lmiui/app/ToggleManagerCompatibility$Point;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "point"    # Lmiui/app/ToggleManagerCompatibility$Point;

    .prologue
    const/16 v5, 0x96

    const/16 v4, 0x5e

    const/16 v3, 0x82

    .line 623
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 624
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 625
    .local v0, "densityDPI":I
    sparse-switch v0, :sswitch_data_0

    .line 639
    iput v3, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    .line 640
    iput v3, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    .line 622
    :goto_0
    return-void

    .line 627
    :sswitch_0
    iput v4, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    .line 628
    iput v4, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    goto :goto_0

    .line 631
    :sswitch_1
    iput v3, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    .line 632
    iput v3, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    goto :goto_0

    .line 635
    :sswitch_2
    iput v5, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    .line 636
    iput v5, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    goto :goto_0

    .line 625
    nop

    :sswitch_data_0
    .sparse-switch
        0x140 -> :sswitch_0
        0x1e0 -> :sswitch_1
        0x280 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getToggleList(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 251
    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v3

    .line 252
    .local v3, "userId":I
    invoke-static {p0, v3}, Lmiui/app/ToggleManagerCompatibility;->isListStyle(Landroid/content/Context;I)Z

    move-result v0

    .line 253
    .local v0, "listStyle":Z
    if-eqz v0, :cond_0

    const-string/jumbo v1, "status_bar_toggle_list_order_new"

    .line 256
    .local v1, "settingId":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 255
    invoke-static {v4, v1, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "toggleList":Ljava/lang/String;
    return-object v2

    .line 254
    .end local v1    # "settingId":Ljava/lang/String;
    .end local v2    # "toggleList":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "status_bar_toggle_page_order"

    .restart local v1    # "settingId":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getUserId(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 325
    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 326
    .local v0, "isSystemUI":Z
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    goto :goto_0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManagerCompatibility;->getUserSelectedToggleOrder(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    invoke-static {p0, p1}, Lmiui/app/ToggleManagerCompatibility;->isListStyle(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {p0, v0, p1}, Lmiui/app/ToggleManagerCompatibility;->getUserSelectedToggleOrder(Landroid/content/Context;ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listStyle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManagerCompatibility;->getUserSelectedToggleOrder(Landroid/content/Context;ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;ZI)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listStyle"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    sget-object v8, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v8

    .line 345
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_1

    const-string/jumbo v4, "status_bar_toggle_list_order_new"

    .line 347
    .local v4, "settingID":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v4, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 348
    .local v5, "toggleList":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 349
    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 350
    .local v6, "toggles":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v1, v7, :cond_3

    .line 352
    :try_start_1
    aget-object v7, v6, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 353
    .local v2, "id":I
    const/16 v7, 0x2710

    if-lt v2, v7, :cond_2

    .line 354
    sget-object v7, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 355
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 346
    .end local v1    # "i":I
    .end local v2    # "id":I
    .end local v4    # "settingID":Ljava/lang/String;
    .end local v5    # "toggleList":Ljava/lang/String;
    .end local v6    # "toggles":[Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string/jumbo v4, "status_bar_toggle_page_order"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v4    # "settingID":Ljava/lang/String;
    goto :goto_0

    .line 357
    .restart local v1    # "i":I
    .restart local v2    # "id":I
    .restart local v5    # "toggleList":Ljava/lang/String;
    .restart local v6    # "toggles":[Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-static {v2}, Lmiui/app/ToggleManager;->getName(I)I

    move-result v7

    if-eqz v7, :cond_0

    .line 358
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 360
    .end local v2    # "id":I
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 362
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 367
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v6    # "toggles":[Ljava/lang/String;
    :cond_3
    sget-object v7, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v7

    invoke-static {p0, v7}, Lmiui/app/ToggleManagerCompatibility;->isListStyle(Landroid/content/Context;I)Z

    move-result v7

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v9

    invoke-static {p0, v3, v7, v9}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;ZI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v8

    .line 368
    return-object v3

    .line 344
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "settingID":Ljava/lang/String;
    .end local v5    # "toggleList":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static initDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "id"    # I
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 717
    return-void
.end method

.method public static isDisabled(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 516
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    .line 517
    const/4 v0, 0x0

    return v0

    .line 519
    :cond_0
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-static {p0}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v0

    return v0
.end method

.method public static isInternationalBuilder()Z
    .locals 1

    .prologue
    .line 810
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    return v0
.end method

.method public static isListStyle(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 319
    const-string/jumbo v2, "status_bar_style_type"

    .line 318
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isValid(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 192
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    .line 194
    :try_start_0
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 196
    :cond_0
    :try_start_1
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->isValid(Landroid/content/Context;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static onCustomTileChanged(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 4
    .param p0, "componentNames"    # Ljava/lang/String;
    .param p1, "add"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    sget-object v3, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v3

    .line 203
    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v3

    .line 201
    return-void

    .line 206
    :cond_1
    :try_start_0
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "id$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 208
    .local v0, "id":Ljava/lang/Integer;
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 210
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static {p2}, Lmiui/app/ToggleManagerCompatibility;->updateUserSelectedToggleOrder(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 202
    .end local v0    # "id":Ljava/lang/Integer;
    .end local v1    # "id$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private queryCustomToggles(Z)V
    .locals 4
    .param p1, "delayMore"    # Z

    .prologue
    .line 148
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleQueryRunnable:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleQueryRunnable:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleQueryRunnable:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private registerListener(Z)V
    .locals 8
    .param p1, "isSystemUI"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 161
    if-eqz p1, :cond_0

    const/4 v6, -0x1

    .line 162
    .local v6, "userId":I
    :goto_0
    sget-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    if-eqz v0, :cond_1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 163
    .local v2, "user":Landroid/os/UserHandle;
    :goto_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 169
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    .line 170
    const-string/jumbo v1, "development_settings_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 172
    iget-object v4, p0, Lmiui/app/ToggleManagerCompatibility;->mDevelopmentObserver:Landroid/database/ContentObserver;

    .line 169
    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 173
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    .line 174
    const-string/jumbo v1, "status_bar_toggle_page_order"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 176
    iget-object v4, p0, Lmiui/app/ToggleManagerCompatibility;->mTogglOrderObserver:Landroid/database/ContentObserver;

    .line 173
    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 177
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    .line 178
    const-string/jumbo v1, "status_bar_toggle_list_order_new"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 180
    iget-object v4, p0, Lmiui/app/ToggleManagerCompatibility;->mTogglOrderObserver:Landroid/database/ContentObserver;

    .line 177
    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 160
    return-void

    .line 161
    .end local v2    # "user":Landroid/os/UserHandle;
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    .end local v6    # "userId":I
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .restart local v6    # "userId":I
    goto :goto_0

    .line 162
    :cond_1
    new-instance v2, Landroid/os/UserHandle;

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-direct {v2, v0}, Landroid/os/UserHandle;-><init>(I)V

    .restart local v2    # "user":Landroid/os/UserHandle;
    goto :goto_1
.end method

.method public static resetInstance()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;

    .line 120
    return-void
.end method

.method public static toSpec(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "custom("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateImageView(ILandroid/widget/ImageView;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 665
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManagerCompatibility;->updateImageView(ILandroid/widget/ImageView;I)V

    .line 664
    return-void
.end method

.method public static updateImageView(ILandroid/widget/ImageView;I)V
    .locals 3
    .param p0, "id"    # I
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "color"    # I

    .prologue
    const/16 v2, 0x2710

    .line 669
    if-eqz p1, :cond_1

    .line 670
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lmiui/app/ToggleManagerCompatibility;->getImageDrawable(ILandroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 671
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-ge p0, v2, :cond_2

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 672
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 677
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 668
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void

    .line 673
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    if-lt p0, v2, :cond_0

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getStatus(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 674
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public static updateTextView(ILandroid/widget/TextView;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 546
    if-eqz p1, :cond_0

    .line 547
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManagerCompatibility;->getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    :cond_0
    return-void
.end method

.method protected static updateToggleStatus(IZ)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "isOpen"    # Z

    .prologue
    .line 524
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 525
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    .line 526
    :try_start_0
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 523
    return-void

    .line 528
    :cond_0
    :try_start_1
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, p0, p1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static updateUserSelectedToggleOrder(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 282
    const/4 v10, 0x0

    .line 283
    .local v10, "updateChange":Z
    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v11

    .line 284
    .local v11, "userId":I
    invoke-static {p0, v11}, Lmiui/app/ToggleManagerCompatibility;->isListStyle(Landroid/content/Context;I)Z

    move-result v5

    .line 285
    .local v5, "listStyle":Z
    if-eqz v5, :cond_1

    const-string/jumbo v7, "status_bar_toggle_list_order_new"

    .line 287
    .local v7, "settingId":Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getToggleList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 288
    .local v8, "toggleList":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 290
    const-string/jumbo v12, " "

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 291
    .local v9, "toggles":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v12, v9

    if-ge v1, v12, :cond_2

    .line 293
    :try_start_0
    aget-object v12, v9, v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 294
    .local v2, "id":I
    const/16 v12, 0x2710

    if-lt v2, v12, :cond_0

    .line 295
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 286
    .end local v1    # "i":I
    .end local v2    # "id":I
    .end local v6    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "settingId":Ljava/lang/String;
    .end local v8    # "toggleList":Ljava/lang/String;
    .end local v9    # "toggles":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "status_bar_toggle_page_order"

    .restart local v7    # "settingId":Ljava/lang/String;
    goto :goto_0

    .line 297
    .restart local v1    # "i":I
    .restart local v6    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "toggleList":Ljava/lang/String;
    .restart local v9    # "toggles":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 299
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 305
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v9    # "toggles":[Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "id$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 306
    .local v3, "id":Ljava/lang/Integer;
    sget-object v12, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 307
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, ""

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 308
    const/4 v10, 0x1

    goto :goto_2

    .line 311
    .end local v3    # "id":Ljava/lang/Integer;
    :cond_4
    if-nez v10, :cond_5

    return-void

    .line 312
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 313
    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v13

    .line 312
    invoke-static {v12, v7, v8, v13}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 281
    return-void
.end method

.method public static zoomDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 651
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 652
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 653
    .local v4, "height":I
    invoke-static {p1}, Lmiui/app/ToggleManagerCompatibility;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 654
    .local v0, "oldbmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    return-object v2

    .line 655
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 656
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v2, p2

    int-to-float v6, v3

    div-float v9, v2, v6

    .line 657
    .local v9, "scaleWidth":F
    int-to-float v2, p3

    int-to-float v6, v4

    div-float v8, v2, v6

    .line 658
    .local v8, "scaleHeight":F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 660
    const/4 v6, 0x1

    move v2, v1

    .line 659
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 661
    .local v7, "newbmp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method


# virtual methods
.method public onDestroy()V
    .locals 4

    .prologue
    .line 439
    :try_start_0
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/app/ToggleManagerCompatibility;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 440
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lmiui/app/ToggleManagerCompatibility;->mDevelopmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 441
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lmiui/app/ToggleManagerCompatibility;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 442
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    if-eqz v2, :cond_0

    .line 443
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v2}, Lmiui/app/ToggleManager;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 445
    :try_start_1
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "sToggleManager"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 446
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 447
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 452
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 453
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 455
    :cond_1
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 456
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 458
    :cond_2
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 459
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 461
    :cond_3
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    if-eqz v2, :cond_4

    .line 462
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 464
    :cond_4
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    .line 465
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 467
    :cond_5
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    if-eqz v2, :cond_6

    .line 468
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 470
    :cond_6
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    if-eqz v2, :cond_7

    .line 471
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 473
    :cond_7
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mBgThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_8

    .line 474
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 476
    :cond_8
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    if-eqz v2, :cond_9

    .line 477
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 479
    :cond_9
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_a

    .line 480
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 482
    :cond_a
    const/4 v2, 0x0

    sput-object v2, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    .line 483
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->resetInstance()V

    .line 437
    :goto_1
    return-void

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 484
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public performToggle(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 710
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    .line 711
    const/4 v0, 0x1

    return v0

    .line 713
    :cond_0
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->performToggle(I)Z

    move-result v0

    return v0
.end method

.method public queryCustomToggles()V
    .locals 1

    .prologue
    .line 138
    sget-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mEnableCustom:Z

    if-eqz v0, :cond_0

    .line 139
    sget-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    if-eqz v0, :cond_1

    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/app/ToggleManagerCompatibility;->queryCustomToggles(Z)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/app/ToggleManagerCompatibility;->queryCustomToggles(Z)V

    goto :goto_0
.end method

.method public removeCustomToggleChangeListener(Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;)V
    .locals 1
    .param p1, "l"    # Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;

    .prologue
    .line 432
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 431
    :cond_0
    return-void
.end method

.method public removeToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V
    .locals 1
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleChangedListener;

    .prologue
    .line 414
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 417
    :cond_0
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    if-eqz v0, :cond_1

    .line 418
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->removeToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V

    .line 413
    :cond_1
    return-void
.end method

.method public removeToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V
    .locals 1
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    .prologue
    .line 423
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 426
    :cond_0
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    if-eqz v0, :cond_1

    .line 427
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->removeToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V

    .line 422
    :cond_1
    return-void
.end method

.method public setOnCustomToggleChangeListener(Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;)V
    .locals 1
    .param p1, "l"    # Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;

    .prologue
    .line 408
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_0
    return-void
.end method

.method public setOnToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V
    .locals 2
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleChangedListener;

    .prologue
    .line 400
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    if-eqz v0, :cond_0

    .line 402
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->setOnToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V

    .line 399
    :cond_0
    return-void
.end method

.method public setOnToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V
    .locals 1
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    .prologue
    .line 391
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_0
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    if-eqz v0, :cond_1

    .line 395
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->setOnToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V

    .line 390
    :cond_1
    return-void
.end method

.method public setUserSelectedToggleOrder(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 806
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->setUserSelectedToggleOrder(Ljava/util/ArrayList;)V

    .line 805
    return-void
.end method

.method public updateCustomToggleImageAndText(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "labelName"    # Ljava/lang/String;
    .param p5, "toggleStatus"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p4, "toggleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v7, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v7

    .line 224
    :try_start_0
    invoke-static {p1}, Lmiui/app/ToggleManagerCompatibility;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "customToggleSpec":Ljava/lang/String;
    sget-object v6, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 226
    sget-object v6, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "id$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 227
    .local v2, "id":Ljava/lang/Integer;
    sget-object v6, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 228
    if-eqz p4, :cond_2

    invoke-interface {p4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 229
    sget-object v6, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    invoke-virtual {v6, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v6, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    invoke-virtual {v6, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, p5}, Lmiui/app/ToggleManagerCompatibility;->updateToggleStatus(IZ)V

    .line 232
    iget-object v6, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 233
    iget-object v6, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 234
    iget-object v6, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 235
    .local v4, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/app/ToggleManager$OnToggleChangedListener;

    .line 236
    .local v5, "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    if-nez v5, :cond_1

    .line 237
    iget-object v6, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 233
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Lmiui/app/ToggleManager$OnToggleChangedListener;->OnToggleChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 223
    .end local v0    # "customToggleSpec":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "id":Ljava/lang/Integer;
    .end local v3    # "id$iterator":Ljava/util/Iterator;
    .end local v4    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    .end local v5    # "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .restart local v0    # "customToggleSpec":Ljava/lang/String;
    :cond_2
    monitor-exit v7

    .line 222
    return-void
.end method

.method protected updateToggleDisabled(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 534
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    .line 535
    return-void

    .line 537
    :cond_0
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, p1, p2}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    .line 533
    return-void
.end method
