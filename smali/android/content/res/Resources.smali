.class public Landroid/content/res/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Resources$NotFoundException;,
        Landroid/content/res/Resources$Theme;,
        Landroid/content/res/Resources$ThemeKey;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "Resources"

.field static mSystem:Landroid/content/res/Resources;

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field public mCacheBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field final mClassLoader:Ljava/lang/ClassLoader;

.field private mDrawableInflater:Landroid/graphics/drawable/DrawableInflater;

.field public mIsNeedLuckyCached:Z

.field private mResourcesImpl:Landroid/content/res/ResourcesImpl;

.field private final mThemeRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources$Theme;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTmpValue:Landroid/util/TypedValue;

.field private final mTmpValueLock:Ljava/lang/Object;

.field final mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/content/res/TypedArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    .line 101
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 95
    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    .line 248
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    .line 250
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 251
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 253
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 254
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 257
    new-instance v2, Landroid/content/res/MiuiResourcesImpl;

    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Landroid/view/DisplayAdjustments;

    invoke-direct {v4}, Landroid/view/DisplayAdjustments;-><init>()V

    invoke-direct {v2, v3, v1, v0, v4}, Landroid/content/res/MiuiResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    iput-object v2, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 247
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    .line 226
    new-instance v0, Landroid/content/res/MiuiResourcesImpl;

    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/content/res/MiuiResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 223
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValueLock:Ljava/lang/Object;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mCacheBitmaps:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/Resources;->mIsNeedLuckyCached:Z

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    .line 239
    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    :cond_0
    iput-object p1, p0, Landroid/content/res/Resources;->mClassLoader:Ljava/lang/ClassLoader;

    .line 238
    return-void
.end method

.method static clearPreloadedCache()V
    .locals 0

    .prologue
    .line 2209
    invoke-static {}, Landroid/content/res/ResourcesImpl;->clearPreloadedCache()V

    .line 2208
    return-void
.end method

.method public static getSystem()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 177
    sget-object v2, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 178
    :try_start_0
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 179
    .local v0, "ret":Landroid/content/res/Resources;
    if-nez v0, :cond_0

    .line 182
    new-instance v0, Landroid/content/res/MiuiResources;

    .end local v0    # "ret":Landroid/content/res/Resources;
    invoke-direct {v0}, Landroid/content/res/MiuiResources;-><init>()V

    .line 183
    .restart local v0    # "ret":Landroid/content/res/Resources;
    sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 186
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/miui/ResourcesManager;->initMiuiResource(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 188
    return-object v0

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I

    .prologue
    const/4 v0, 0x0

    .line 2175
    if-nez p1, :cond_0

    .line 2176
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0

    .line 2178
    :cond_0
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private obtainTempTypedValue()Landroid/util/TypedValue;
    .locals 3

    .prologue
    .line 1215
    const/4 v0, 0x0

    .line 1216
    .local v0, "tmpValue":Landroid/util/TypedValue;
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1217
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-eqz v1, :cond_0

    .line 1218
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1219
    .local v0, "tmpValue":Landroid/util/TypedValue;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "tmpValue":Landroid/util/TypedValue;
    :cond_0
    monitor-exit v2

    .line 1222
    if-nez v0, :cond_1

    .line 1223
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    return-object v1

    .line 1216
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1225
    :cond_1
    return-object v0
.end method

.method private releaseTempTypedValue(Landroid/util/TypedValue;)V
    .locals 2
    .param p1, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 1235
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1236
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    .line 1237
    iput-object p1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1234
    return-void

    .line 1235
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static resourceHasPackage(I)Z
    .locals 2
    .param p0, "resid"    # I

    .prologue
    const/4 v0, 0x0

    .line 1911
    ushr-int/lit8 v1, p0, 0x18

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static selectDefaultTheme(II)I
    .locals 6
    .param p0, "curTheme"    # I
    .param p1, "targetSdkVersion"    # I

    .prologue
    .line 146
    const v2, 0x1030005

    .line 147
    const v3, 0x103006b

    .line 148
    const v4, 0x1030128

    .line 149
    const v5, 0x103013f

    move v0, p0

    move v1, p1

    .line 145
    invoke-static/range {v0 .. v5}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    move-result v0

    return v0
.end method

.method public static selectSystemTheme(IIIIII)I
    .locals 1
    .param p0, "curTheme"    # I
    .param p1, "targetSdkVersion"    # I
    .param p2, "orig"    # I
    .param p3, "holo"    # I
    .param p4, "dark"    # I
    .param p5, "deviceDefault"    # I

    .prologue
    .line 155
    if-eqz p0, :cond_0

    .line 156
    return p0

    .line 158
    :cond_0
    const/16 v0, 0xb

    if-ge p1, v0, :cond_1

    .line 159
    return p2

    .line 161
    :cond_1
    const/16 v0, 0xe

    if-ge p1, v0, :cond_2

    .line 162
    return p3

    .line 164
    :cond_2
    const/16 v0, 0x18

    if-ge p1, v0, :cond_3

    .line 165
    return p4

    .line 167
    :cond_3
    return p5
.end method

.method public static updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 1822
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 1823
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1821
    :cond_0
    return-void
.end method


# virtual methods
.method public calcConfigChanges(Landroid/content/res/Configuration;)I
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 2164
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->calcConfigChanges(Landroid/content/res/Configuration;)I

    move-result v0

    return v0
.end method

.method public final finishPreloading()V
    .locals 1

    .prologue
    .line 2106
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->finishPreloading()V

    .line 2105
    return-void
.end method

.method public final flushLayoutCache()V
    .locals 1

    .prologue
    .line 2089
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 2088
    return-void
.end method

.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1157
    const-string/jumbo v0, "anim"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v0

    return-object v0
.end method

.method public final getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 2080
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1045
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 1047
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v3, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v0, v4}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1048
    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    .line 1049
    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_1

    .line 1050
    iget v3, v0, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 1055
    :goto_0
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1050
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 1052
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1053
    const-string/jumbo v3, " type #0x"

    .line 1052
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1053
    iget v3, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1052
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1053
    const-string/jumbo v3, " is not valid"

    .line 1052
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1054
    :catchall_0
    move-exception v1

    .line 1055
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1054
    throw v1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Landroid/content/res/Resources;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getColor(I)I
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 916
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method public getColor(ILandroid/content/res/Resources$Theme;)I
    .locals 6
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 937
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v2

    .line 939
    .local v2, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 940
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 941
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 942
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_0

    .line 943
    iget v3, v2, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    invoke-direct {p0, v2}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 943
    return v3

    .line 944
    :cond_0
    :try_start_1
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 945
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 946
    const-string/jumbo v5, " type #0x"

    .line 945
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 946
    iget v5, v2, Landroid/util/TypedValue;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 945
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 946
    const-string/jumbo v5, " is not valid"

    .line 945
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 951
    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v3

    .line 952
    invoke-direct {p0, v2}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 951
    throw v3

    .line 949
    .restart local v1    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_1
    :try_start_2
    invoke-virtual {v1, p0, v2, p1, p2}, Landroid/content/res/ResourcesImpl;->loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 950
    .local v0, "csl":Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .line 952
    invoke-direct {p0, v2}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 950
    return v3
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 976
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 977
    .local v0, "csl":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 978
    const-string/jumbo v1, "Resources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ColorStateList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 979
    const-string/jumbo v3, "unresolved theme attributes! Consider using "

    .line 978
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 980
    const-string/jumbo v3, "Resources.getColorStateList(int, Theme) or "

    .line 978
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 981
    const-string/jumbo v3, "Context.getColorStateList(int)."

    .line 978
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 981
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    .line 978
    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 983
    :cond_0
    return-object v0
.end method

.method public getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 3
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1007
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v1

    .line 1009
    .local v1, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 1010
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1011
    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/content/res/ResourcesImpl;->loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1013
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1011
    return-object v2

    .line 1012
    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v2

    .line 1013
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1012
    throw v2
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    .prologue
    .line 1867
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 1851
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getDimension(I)F
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 612
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v1

    .line 614
    .local v1, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 615
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 616
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 617
    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 622
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 617
    return v2

    .line 619
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 620
    const-string/jumbo v4, " type #0x"

    .line 619
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 620
    iget v4, v1, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 619
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 620
    const-string/jumbo v4, " is not valid"

    .line 619
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 621
    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v2

    .line 622
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 621
    throw v2
.end method

.method public getDimensionPixelOffset(I)I
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 646
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v1

    .line 648
    .local v1, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 649
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 650
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 651
    iget v2, v1, Landroid/util/TypedValue;->data:I

    .line 652
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 651
    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 657
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 651
    return v2

    .line 654
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 655
    const-string/jumbo v4, " type #0x"

    .line 654
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 655
    iget v4, v1, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 654
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 655
    const-string/jumbo v4, " is not valid"

    .line 654
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 656
    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v2

    .line 657
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 656
    throw v2
.end method

.method public getDimensionPixelSize(I)I
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 682
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v1

    .line 684
    .local v1, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 685
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 686
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 687
    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 692
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 687
    return v2

    .line 689
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 690
    const-string/jumbo v4, " type #0x"

    .line 689
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 690
    iget v4, v1, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 689
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 690
    const-string/jumbo v4, " is not valid"

    .line 689
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 691
    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v2

    .line 692
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 691
    throw v2
.end method

.method public getDisplayAdjustments()Landroid/view/DisplayAdjustments;
    .locals 1

    .prologue
    .line 1841
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 1836
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 760
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 761
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    const-string/jumbo v1, "Resources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Drawable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has unresolved theme "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 763
    const-string/jumbo v3, "attributes! Consider using Resources.getDrawable(int, Theme) or "

    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 764
    const-string/jumbo v3, "Context.getDrawable(int)."

    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 764
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    .line 762
    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 766
    :cond_0
    return-object v0
.end method

.method public getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 785
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v2

    .line 787
    .local v2, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 788
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 789
    const/4 v5, 0x1

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/ResourcesImpl;->loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 791
    invoke-direct {p0, v2}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 789
    return-object v1

    .line 790
    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v1

    .line 791
    invoke-direct {p0, v2}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 790
    throw v1
.end method

.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .param p2, "density"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 824
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 842
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v2

    .line 844
    .local v2, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 845
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/content/res/ResourcesImpl;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 850
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 851
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v2, Landroid/util/TypedValue;->density:I

    iget v3, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v1, v3, :cond_1

    const/4 v5, 0x1

    .line 860
    .local v5, "useCache":Z
    :goto_0
    iget v1, v2, Landroid/util/TypedValue;->density:I

    if-lez v1, :cond_0

    iget v1, v2, Landroid/util/TypedValue;->density:I

    const v3, 0xffff

    if-eq v1, v3, :cond_0

    .line 861
    iget v1, v2, Landroid/util/TypedValue;->density:I

    if-ne v1, p2, :cond_2

    .line 862
    iget v1, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v2, Landroid/util/TypedValue;->density:I

    :cond_0
    :goto_1
    move-object v1, p0

    move v3, p1

    move-object v4, p3

    .line 867
    invoke-virtual/range {v0 .. v5}, Landroid/content/res/ResourcesImpl;->loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 869
    invoke-direct {p0, v2}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 867
    return-object v1

    .line 851
    .end local v5    # "useCache":Z
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "useCache":Z
    goto :goto_0

    .line 864
    :cond_2
    :try_start_1
    iget v1, v2, Landroid/util/TypedValue;->density:I

    iget v3, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v1, v3

    div-int/2addr v1, p2

    iput v1, v2, Landroid/util/TypedValue;->density:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 868
    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v5    # "useCache":Z
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    :catchall_0
    move-exception v1

    .line 869
    invoke-direct {p0, v2}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 868
    throw v1
.end method

.method public final getDrawableInflater()Landroid/graphics/drawable/DrawableInflater;
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Landroid/content/res/Resources;->mDrawableInflater:Landroid/graphics/drawable/DrawableInflater;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Landroid/graphics/drawable/DrawableInflater;

    iget-object v1, p0, Landroid/content/res/Resources;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/DrawableInflater;-><init>(Landroid/content/res/Resources;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mDrawableInflater:Landroid/graphics/drawable/DrawableInflater;

    .line 310
    :cond_0
    iget-object v0, p0, Landroid/content/res/Resources;->mDrawableInflater:Landroid/graphics/drawable/DrawableInflater;

    return-object v0
.end method

.method public getFloat(I)F
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1099
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 1101
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1102
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1103
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1108
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1103
    return v1

    .line 1105
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1106
    const-string/jumbo v3, " type #0x"

    .line 1105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1106
    iget v3, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1106
    const-string/jumbo v3, " is not valid"

    .line 1105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1107
    :catchall_0
    move-exception v1

    .line 1108
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1107
    throw v1
.end method

.method public getFraction(III)F
    .locals 4
    .param p1, "id"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I

    .prologue
    .line 714
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 716
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 717
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 718
    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->complexToFraction(IFF)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 723
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 718
    return v1

    .line 720
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 721
    const-string/jumbo v3, " type #0x"

    .line 720
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 721
    iget v3, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 720
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 721
    const-string/jumbo v3, " is not valid"

    .line 720
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 722
    :catchall_0
    move-exception v1

    .line 723
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 722
    throw v1
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .prologue
    .line 1902
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getImpl()Landroid/content/res/ResourcesImpl;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    return-object v0
.end method

.method public getIntArray(I)[I
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 557
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getArrayIntResource(I)[I

    move-result-object v0

    .line 558
    .local v0, "res":[I
    if-eqz v0, :cond_0

    .line 559
    return-object v0

    .line 561
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Int array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInteger(I)I
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1071
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 1073
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1074
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 1075
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 1076
    iget v1, v0, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1076
    return v1

    .line 1078
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1079
    const-string/jumbo v3, " type #0x"

    .line 1078
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1079
    iget v3, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1078
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1079
    const-string/jumbo v3, " is not valid"

    .line 1078
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1080
    :catchall_0
    move-exception v1

    .line 1081
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1080
    throw v1
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1133
    const-string/jumbo v0, "layout"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public getMovie(I)Landroid/graphics/Movie;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 888
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 889
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v2

    .line 891
    .local v2, "movie":Landroid/graphics/Movie;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :goto_0
    return-object v2

    .line 892
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public getPreloadedDrawables()Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2113
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 481
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .param p3, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "raw":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ResourcesImpl;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .locals 1
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1977
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceName(I)Ljava/lang/String;
    .locals 1
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1929
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourcePackageName(I)Ljava/lang/String;
    .locals 1
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1945
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1961
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSizeConfigurations()[Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 1856
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getSizeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "raw":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 537
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "res":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 539
    return-object v0

    .line 541
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "String array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 348
    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 349
    return-object v0

    .line 351
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "String resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 352
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 351
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 499
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 500
    .local v0, "res":Ljava/lang/CharSequence;
    :cond_0
    if-eqz v0, :cond_1

    .end local v0    # "res":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0    # "res":Ljava/lang/CharSequence;
    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 516
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 517
    .local v0, "res":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 518
    return-object v0

    .line 520
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Text array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1308
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1307
    return-void
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1351
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    .line 1350
    return-void
.end method

.method public getValueForDensity(IILandroid/util/TypedValue;Z)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "outValue"    # Landroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1326
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/ResourcesImpl;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 1325
    return-void
.end method

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1182
    const-string/jumbo v0, "xml"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method isPreloadOverlayed(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 2227
    const/4 v0, 0x0

    return v0
.end method

.method isPreloading()Z
    .locals 1

    .prologue
    .line 2218
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->isPreloading()Z

    move-result v0

    return v0
.end method

.method loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1020
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public loadComplexColor(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 1
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1028
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->loadComplexColor(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v0

    return-object v0
.end method

.method loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 876
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/ResourcesImpl;->loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    .line 2186
    const/4 v0, 0x0

    return-object v0
.end method

.method loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 0
    .param p1, "array"    # Landroid/content/res/TypedArray;

    .prologue
    .line 2201
    return-object p1
.end method

.method loadOverlayValue(Landroid/util/TypedValue;I)V
    .locals 0
    .param p1, "outValue"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    .line 2193
    return-void
.end method

.method loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 5
    .param p1, "id"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2127
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v1

    .line 2129
    .local v1, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 2130
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2131
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 2132
    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2133
    iget v3, v1, Landroid/util/TypedValue;->assetCookie:I

    .line 2132
    invoke-virtual {v0, v2, p1, v3, p2}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2138
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 2132
    return-object v2

    .line 2135
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2136
    const-string/jumbo v4, " type #0x"

    .line 2135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2136
    iget v4, v1, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 2135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2136
    const-string/jumbo v4, " is not valid"

    .line 2135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2137
    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v2

    .line 2138
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 2137
    throw v2
.end method

.method loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "assetCookie"    # I
    .param p4, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2155
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public final newTheme()Landroid/content/res/Resources$Theme;
    .locals 3

    .prologue
    .line 1759
    new-instance v0, Landroid/content/res/Resources$Theme;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/res/Resources$Theme;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 1760
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->newThemeImpl()Landroid/content/res/ResourcesImpl$ThemeImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->setImpl(Landroid/content/res/ResourcesImpl$ThemeImpl;)V

    .line 1761
    iget-object v1, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1762
    return-object v0
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 9
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    .prologue
    .line 1778
    array-length v7, p2

    .line 1779
    .local v7, "len":I
    invoke-static {p0, v7}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "array":Landroid/content/res/TypedArray;
    move-object v8, p1

    .line 1785
    check-cast v8, Landroid/content/res/XmlBlock$Parser;

    .line 1786
    .local v8, "parser":Landroid/content/res/XmlBlock$Parser;
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-wide v2, v8, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    .line 1787
    iget-object v5, v0, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v0, Landroid/content/res/TypedArray;->mIndices:[I

    move-object v4, p2

    .line 1786
    invoke-virtual/range {v1 .. v6}, Landroid/content/res/AssetManager;->retrieveAttributes(J[I[I[I)Z

    .line 1789
    iput-object v8, v0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1792
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1793
    return-object v0
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 579
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 580
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->getArraySize(I)I

    move-result v2

    .line 581
    .local v2, "len":I
    if-gez v2, :cond_0

    .line 582
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Array resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 585
    :cond_0
    invoke-static {p0, v2}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 586
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iget-object v4, v0, Landroid/content/res/TypedArray;->mData:[I

    invoke-virtual {v3, p1, v4}, Landroid/content/res/AssetManager;->retrieveArray(I[I)I

    move-result v3

    iput v3, v0, Landroid/content/res/TypedArray;->mLength:I

    .line 587
    iget-object v3, v0, Landroid/content/res/TypedArray;->mIndices:[I

    aput v5, v3, v5

    .line 591
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v3

    return-object v3
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1200
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 1202
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1204
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1202
    return-object v1

    .line 1203
    :catchall_0
    move-exception v1

    .line 1204
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1203
    throw v1
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1257
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ResourcesImpl;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1283
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 1285
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/ResourcesImpl;->openRawResourceFd(ILandroid/util/TypedValue;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1287
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1285
    return-object v1

    .line 1286
    :catchall_0
    move-exception v1

    .line 1287
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1286
    throw v1
.end method

.method public parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "outBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2036
    sget-object v6, Lcom/android/internal/R$styleable;->Extra:[I

    .line 2035
    invoke-virtual {p0, p2, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2038
    .local v2, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2040
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2041
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2042
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2043
    const-string/jumbo v6, "> requires an android:name attribute at "

    .line 2042
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2044
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 2042
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2047
    :cond_0
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 2049
    .local v3, "v":Landroid/util/TypedValue;
    if-eqz v3, :cond_6

    .line 2050
    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 2051
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2052
    .local v0, "cs":Ljava/lang/CharSequence;
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2073
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2034
    return-void

    .line 2053
    :cond_1
    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_3

    .line 2054
    iget v6, v3, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_2

    :goto_1
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 2055
    :cond_3
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_4

    .line 2056
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_4

    .line 2057
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2058
    :cond_4
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 2059
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 2061
    :cond_5
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2062
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2063
    const-string/jumbo v6, "> only supports string, integer, float, color, and boolean at "

    .line 2062
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2064
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 2062
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2067
    :cond_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2068
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2069
    const-string/jumbo v6, "> requires an android:value or android:resource attribute at "

    .line 2068
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2070
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 2068
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "outBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 1993
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 1995
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 1996
    if-ne v2, v4, :cond_1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_3

    .line 1997
    :cond_1
    if-eq v2, v4, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 2001
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2002
    .local v0, "nodeName":Ljava/lang/String;
    const-string/jumbo v3, "extra"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2003
    const-string/jumbo v3, "extra"

    invoke-virtual {p0, v3, p1, p2}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2004
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2007
    :cond_2
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1992
    .end local v0    # "nodeName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .param p1, "ci"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    const/4 v1, 0x0

    .line 1876
    if-eqz p1, :cond_0

    .line 1877
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, v1, v1, p1}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1875
    :cond_0
    return-void
.end method

.method public setImpl(Landroid/content/res/ResourcesImpl;)V
    .locals 7
    .param p1, "impl"    # Landroid/content/res/ResourcesImpl;

    .prologue
    .line 269
    iget-object v4, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    if-ne p1, v4, :cond_0

    .line 270
    return-void

    .line 273
    :cond_0
    iput-object p1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 276
    iget-object v5, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    monitor-enter v5

    .line 277
    :try_start_0
    iget-object v4, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 278
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 279
    iget-object v4, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 280
    .local v3, "weakThemeRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources$Theme;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources$Theme;

    .line 281
    :goto_1
    if-eqz v2, :cond_1

    .line 282
    iget-object v4, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v2}, Landroid/content/res/Resources$Theme;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/res/ResourcesImpl;->newThemeImpl(Landroid/content/res/Resources$ThemeKey;)Landroid/content/res/ResourcesImpl$ThemeImpl;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources$Theme;->setImpl(Landroid/content/res/ResourcesImpl$ThemeImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_2
    const/4 v2, 0x0

    .local v2, "theme":Landroid/content/res/Resources$Theme;
    goto :goto_1

    .end local v2    # "theme":Landroid/content/res/Resources$Theme;
    .end local v3    # "weakThemeRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources$Theme;>;"
    :cond_3
    monitor-exit v5

    .line 268
    return-void

    .line 276
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public final startPreloading()V
    .locals 1

    .prologue
    .line 2098
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->startPreloading()V

    .line 2097
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1803
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1802
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 1811
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1810
    return-void
.end method
