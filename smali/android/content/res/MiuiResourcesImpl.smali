.class public final Landroid/content/res/MiuiResourcesImpl;
.super Landroid/content/res/ResourcesImpl;
.source "MiuiResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;
    }
.end annotation


# static fields
.field private static final sMiuiThemeEnabled:Z

.field private static final sPreloadDrawableSources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;",
            ">;>;"
        }
    .end annotation
.end field

.field public static sUpdatedTimeSystem:Ljava/lang/Long;

.field private static final sUpdatedTimeSystemMutex:Ljava/lang/Object;


# instance fields
.field private mIsPreloadOverlayed:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mPreloadingIds:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

.field private mSkipFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeResources:Lmiui/content/res/ThemeResources;

.field private mThemeValues:Lmiui/content/res/ThemeValues;

.field private mUpdatedTime:J

.field private mValueLoadedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lmiui/content/res/ThemeCompatibility;->isThemeEnabled()Z

    move-result v0

    sput-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    .line 41
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystem:Ljava/lang/Long;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystemMutex:Ljava/lang/Object;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 54
    sput-object v0, Landroid/content/res/MiuiResourcesImpl;->sPreloadDrawableSources:Landroid/util/SparseArray;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V
    .locals 4
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .prologue
    const-wide/16 v2, -0x1

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    .line 57
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingIds:Ljava/util/Stack;

    .line 60
    sget-object v0, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    .line 61
    iput-wide v2, p0, Landroid/content/res/MiuiResourcesImpl;->mUpdatedTime:J

    .line 62
    iput-wide v2, p0, Landroid/content/res/MiuiResourcesImpl;->mValueLoadedTime:J

    .line 63
    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    .line 68
    return-void
.end method

.method private static delayGCAtlasPreloadedBitmaps()V
    .locals 2

    .prologue
    .line 262
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    .line 263
    .local v0, "preload":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 264
    invoke-static {}, Lmiui/content/res/ThemeNativeUtils;->terminateAtlas()V

    .line 265
    new-instance v1, Landroid/content/res/MiuiResourcesImpl$1;

    invoke-direct {v1, v0}, Landroid/content/res/MiuiResourcesImpl$1;-><init>(Landroid/util/LongSparseArray;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 260
    :cond_0
    return-void
.end method

.method private getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .locals 5
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "themeOverlay":Z
    iget-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const-string/jumbo v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v0

    .line 208
    .local v0, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    iget-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, ".xml"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v2, v3, v4

    .line 209
    .local v2, "withoutSuffixLength":I
    iget-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    .line 210
    const-string/jumbo v3, ".9.png"

    invoke-virtual {v0, v3}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 212
    iget-object v3, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v3, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v1

    .line 213
    .local v1, "themeOverlay":Z
    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v0, v2}, Lmiui/content/res/FixedSizeStringBuffer;->setLength(I)V

    .line 215
    const-string/jumbo v3, ".png"

    invoke-virtual {v0, v3}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 218
    :cond_0
    invoke-static {v0}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    .line 222
    .end local v0    # "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    .end local v2    # "withoutSuffixLength":I
    :goto_0
    return v1

    .line 220
    .local v1, "themeOverlay":Z
    :cond_1
    iget-object v3, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v3, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v1

    .local v1, "themeOverlay":Z
    goto :goto_0
.end method

.method private loadValues()V
    .locals 6

    .prologue
    .line 389
    iget-wide v2, p0, Landroid/content/res/MiuiResourcesImpl;->mValueLoadedTime:J

    iget-wide v4, p0, Landroid/content/res/MiuiResourcesImpl;->mUpdatedTime:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    return-void

    .line 391
    :cond_0
    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    .line 392
    .local v0, "tmp":Lmiui/content/res/ThemeValues;
    iget-object v1, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    iget-object v2, p0, Landroid/content/res/MiuiResourcesImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 394
    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/res/MiuiResourcesImpl;->mValueLoadedTime:J

    .line 388
    return-void
.end method

.method private resolveOverlayValue(ILandroid/util/TypedValue;)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .prologue
    .line 107
    sget-boolean v1, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_0

    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    if-gtz v1, :cond_1

    .line 108
    :cond_0
    return-void

    .line 111
    :cond_1
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_4

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_4

    .line 113
    :goto_0
    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    .line 114
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 115
    .local v0, "themeInteger":Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 116
    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v1}, Landroid/content/res/MiuiResourcesImpl;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 118
    :cond_2
    if-eqz v0, :cond_3

    .line 119
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/util/TypedValue;->data:I

    .line 106
    .end local v0    # "themeInteger":Ljava/lang/Integer;
    :cond_3
    return-void

    .line 112
    :cond_4
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    goto :goto_0
.end method


# virtual methods
.method public getIntArray(I)[I
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 125
    sget-boolean v1, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeIntArray(I)[I

    move-result-object v0

    .line 127
    .local v0, "array":[I
    if-eqz v0, :cond_0

    .line 128
    return-object v0

    .line 131
    .end local v0    # "array":[I
    :cond_0
    return-object v2
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 145
    sget-boolean v1, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "array":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 148
    return-object v0

    .line 151
    .end local v0    # "array":[Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 73
    sget-boolean v1, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 75
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 76
    return-object v0

    .line 79
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_0
    return-object v2
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 83
    sget-boolean v1, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 85
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 86
    return-object v0

    .line 89
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_0
    return-object v2
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 135
    sget-boolean v1, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "array":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 138
    return-object v0

    .line 141
    .end local v0    # "array":[Ljava/lang/CharSequence;
    :cond_0
    return-object v2
.end method

.method getThemeInt(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 399
    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    .line 400
    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method getThemeIntArray(I)[I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 409
    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    .line 410
    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method getThemeString(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 404
    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    .line 405
    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mStrings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method getThemeStringArray(I)[Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 414
    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    .line 415
    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mStringArrays:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/content/res/MiuiResourcesImpl;->resolveOverlayValue(ILandroid/util/TypedValue;)V

    .line 93
    return-void
.end method

.method public init(Landroid/content/res/MiuiResources;Ljava/lang/String;)V
    .locals 1
    .param p1, "wrapper"    # Landroid/content/res/MiuiResources;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 340
    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 341
    return-void

    .line 343
    :cond_0
    iput-object p2, p0, Landroid/content/res/MiuiResourcesImpl;->mPackageName:Ljava/lang/String;

    .line 344
    if-nez p2, :cond_1

    .line 345
    const-string/jumbo v0, "android"

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mPackageName:Ljava/lang/String;

    .line 346
    invoke-static {p1}, Lmiui/content/res/ThemeResources;->getSystem(Landroid/content/res/MiuiResources;)Lmiui/content/res/ThemeResources;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    .line 350
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/MiuiResourcesImpl;->reset()V

    .line 339
    return-void

    .line 348
    :cond_1
    invoke-static {p1, p2}, Lmiui/content/res/ThemeResourcesPackage;->getThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    goto :goto_0
.end method

.method isPreloadOverlayed(I)Ljava/lang/Boolean;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 278
    sget-boolean v5, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-nez v5, :cond_0

    .line 279
    return-object v6

    .line 282
    :cond_0
    iget-object v5, p0, Landroid/content/res/MiuiResourcesImpl;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 283
    .local v1, "isOverlayed":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    return-object v1

    .line 285
    :cond_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 286
    sget-object v5, Landroid/content/res/MiuiResourcesImpl;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 287
    .local v4, "sources":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;>;"
    if-eqz v4, :cond_3

    .line 288
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "source$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;

    .line 289
    .local v2, "source":Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;
    new-instance v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .line 290
    iget v5, v2, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->mCookie:I

    iget-object v6, v2, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->mResourcePath:Ljava/lang/String;

    .line 289
    invoke-direct {v0, v5, v6, v7}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(ILjava/lang/String;Z)V

    .line 291
    .local v0, "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    invoke-direct {p0, v0}, Landroid/content/res/MiuiResourcesImpl;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    .line 292
    iget-object v5, v2, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->mThemePath:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 293
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 298
    .end local v0    # "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .end local v2    # "source":Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;
    .end local v3    # "source$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v5, p0, Landroid/content/res/MiuiResourcesImpl;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 299
    return-object v1
.end method

.method loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .param p5, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 305
    sget-boolean v6, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-nez v6, :cond_0

    .line 306
    invoke-super/range {p0 .. p5}, Landroid/content/res/ResourcesImpl;->loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    return-object v6

    .line 309
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl;->isPreloading()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 310
    iget-object v6, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingIds:Ljava/util/Stack;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/content/res/ResourcesImpl;->loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 315
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl;->isPreloading()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 316
    iget v6, p2, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_2

    iget v6, p2, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1f

    if-le v6, v7, :cond_5

    .line 317
    :cond_2
    iget-object v6, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "file":Ljava/lang/String;
    new-instance v4, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;

    iget v6, p2, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {v4, p0, v6, v1, v8}, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;-><init>(Landroid/content/res/MiuiResourcesImpl;ILjava/lang/String;Ljava/lang/String;)V

    .line 319
    .local v4, "source":Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;
    iget-object v6, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    if-eqz v6, :cond_3

    .line 320
    iget-object v6, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    iget-object v6, v6, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    iput-object v6, v4, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->mThemePath:Ljava/lang/String;

    .line 321
    iput-object v8, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .line 324
    :cond_3
    iget-object v6, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingIds:Ljava/util/Stack;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "loadingId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 325
    .local v2, "loadingId":Ljava/lang/Integer;
    sget-object v6, Landroid/content/res/MiuiResourcesImpl;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 326
    .local v5, "sources":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;>;"
    if-nez v5, :cond_4

    .line 327
    new-instance v5, Ljava/util/HashSet;

    .end local v5    # "sources":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;>;"
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 328
    .restart local v5    # "sources":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;>;"
    sget-object v6, Landroid/content/res/MiuiResourcesImpl;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 330
    :cond_4
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    .end local v1    # "file":Ljava/lang/String;
    .end local v2    # "loadingId":Ljava/lang/Integer;
    .end local v3    # "loadingId$iterator":Ljava/util/Iterator;
    .end local v4    # "source":Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;
    .end local v5    # "sources":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;>;"
    :cond_5
    iget-object v6, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingIds:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 336
    :cond_6
    return-object v0
.end method

.method loadOverlayDrawable(Landroid/content/res/MiuiResources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "wrapper"    # Landroid/content/res/MiuiResources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 172
    sget-boolean v5, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 173
    :cond_0
    return-object v8

    .line 176
    :cond_1
    new-instance v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    invoke-direct {v2, p2, v7}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(Landroid/util/TypedValue;Z)V

    .line 177
    .local v2, "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl;->isPreloading()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 178
    iput-object v2, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .line 181
    :cond_2
    invoke-direct {p0, v2}, Landroid/content/res/MiuiResourcesImpl;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v4

    .line 183
    .local v4, "themeOverlay":Z
    if-eqz v4, :cond_4

    .line 185
    :try_start_0
    iget v5, v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    iput v5, p2, Landroid/util/TypedValue;->density:I

    .line 186
    iget-object v3, v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    .line 187
    .local v3, "is":Ljava/io/InputStream;
    iget-object v5, v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const-string/jumbo v6, ".9.png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 188
    invoke-static {v3}, Lmiui/content/res/SimulateNinePngUtil;->convertIntoNinePngStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    .line 190
    :cond_3
    iget-object v5, v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-static {p1, p2, v3, v5}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 194
    :try_start_1
    iget-object v6, v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 190
    :goto_0
    return-object v5

    .line 191
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    iget-object v5, v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 201
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :goto_1
    return-object v8

    .line 192
    :catchall_0
    move-exception v5

    .line 194
    :try_start_3
    iget-object v6, v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 192
    :goto_2
    throw v5

    .line 199
    :cond_4
    iget-object v5, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 195
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 7
    .param p1, "array"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v6, 0x0

    .line 364
    sget-boolean v5, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-nez v5, :cond_0

    .line 365
    return-object v6

    .line 368
    :cond_0
    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    .line 369
    iget-object v5, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v5, v5, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    return-object p1

    .line 371
    :cond_2
    iget-object v0, p1, Landroid/content/res/TypedArray;->mData:[I

    .line 372
    .local v0, "data":[I
    const/4 v2, 0x0

    .line 373
    .local v2, "index":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_5

    .line 374
    add-int/lit8 v5, v2, 0x0

    aget v4, v0, v5

    .line 375
    .local v4, "type":I
    add-int/lit8 v5, v2, 0x3

    aget v1, v0, v5

    .line 376
    .local v1, "id":I
    const/16 v5, 0x10

    if-lt v4, v5, :cond_4

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_4

    .line 378
    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/res/MiuiResourcesImpl;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v3

    .line 379
    .local v3, "themeInteger":Ljava/lang/Integer;
    if-eqz v3, :cond_3

    .line 380
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v5

    .line 383
    .end local v3    # "themeInteger":Ljava/lang/Integer;
    :cond_3
    add-int/lit8 v2, v2, 0x6

    goto :goto_0

    .line 377
    :cond_4
    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    goto :goto_1

    .line 385
    .end local v1    # "id":I
    .end local v4    # "type":I
    :cond_5
    return-object p1
.end method

.method loadOverlayValue(Landroid/util/TypedValue;I)V
    .locals 0
    .param p1, "outValue"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    .line 99
    invoke-direct {p0, p2, p1}, Landroid/content/res/MiuiResourcesImpl;->resolveOverlayValue(ILandroid/util/TypedValue;)V

    .line 98
    return-void
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 4
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;

    .prologue
    const/4 v3, 0x1

    .line 155
    sget-boolean v1, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 157
    invoke-super {p0, p1, p2, v3}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 158
    new-instance v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    invoke-direct {v0, p2, v3}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(Landroid/util/TypedValue;Z)V

    .line 159
    .local v0, "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    iget-object v1, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v1, v0}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    iget v1, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    iput v1, p2, Landroid/util/TypedValue;->density:I

    .line 161
    iget-object v1, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    return-object v1

    .line 164
    :cond_0
    iget-object v1, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .end local v0    # "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/content/res/ResourcesImpl;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method protected reset()V
    .locals 2

    .prologue
    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/MiuiResourcesImpl;->mUpdatedTime:J

    .line 355
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    .line 356
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    .line 353
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 8
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 228
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 229
    .local v0, "configChanges":I
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 231
    sget-boolean v1, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-nez v1, :cond_1

    return-void

    .line 228
    .end local v0    # "configChanges":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "configChanges":I
    goto :goto_0

    .line 233
    :cond_1
    iget-object v1, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    if-eqz v1, :cond_5

    .line 234
    iget-wide v2, p0, Landroid/content/res/MiuiResourcesImpl;->mUpdatedTime:J

    .line 236
    .local v2, "updatedTime":J
    invoke-static {v0}, Landroid/content/res/MiuiConfiguration;->needNewResources(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    sget-object v4, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystemMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 238
    :try_start_0
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/content/res/ThemeResourcesSystem;->checkUpdate()J

    move-result-wide v2

    .line 239
    sget-object v1, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystem:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-gez v1, :cond_2

    .line 240
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystem:Ljava/lang/Long;

    .line 241
    invoke-static {}, Landroid/content/res/MiuiResourcesImpl;->delayGCAtlasPreloadedBitmaps()V

    .line 242
    invoke-static {}, Landroid/content/res/Resources;->clearPreloadedCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v4

    .line 245
    iget-object v1, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v1}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 248
    :cond_3
    iget-wide v4, p0, Landroid/content/res/MiuiResourcesImpl;->mUpdatedTime:J

    cmp-long v1, v4, v2

    if-ltz v1, :cond_4

    .line 249
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    .line 251
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/content/res/MiuiResourcesImpl;->reset()V

    .line 227
    .end local v2    # "updatedTime":J
    :cond_5
    return-void

    .line 237
    .restart local v2    # "updatedTime":J
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    .line 250
    :cond_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    goto :goto_1
.end method
