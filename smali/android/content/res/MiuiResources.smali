.class public final Landroid/content/res/MiuiResources;
.super Landroid/content/res/Resources;
.source "MiuiResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    }
.end annotation


# instance fields
.field private mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

.field private mPackage:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    .line 50
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->updateMiuiImpl()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 66
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->updateMiuiImpl()V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    .line 58
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->updateMiuiImpl()V

    .line 56
    return-void
.end method

.method public static isPreloadedCacheEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-static {}, Landroid/content/res/MiuiResources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateMiuiImpl()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 226
    invoke-virtual {p0}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    .line 227
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/res/MiuiResourcesImpl;

    if-eqz v1, :cond_1

    .line 228
    nop

    nop

    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    iput-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    .line 229
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    iget-object v2, p0, Landroid/content/res/MiuiResources;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Landroid/content/res/MiuiResourcesImpl;->init(Landroid/content/res/MiuiResources;Ljava/lang/String;)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 233
    .restart local v0    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_1
    iput-object v2, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    goto :goto_0
.end method


# virtual methods
.method public getIntArray(I)[I
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    invoke-virtual {v1, p1}, Landroid/content/res/MiuiResourcesImpl;->getIntArray(I)[I

    move-result-object v0

    .line 128
    .local v0, "array":[I
    if-eqz v0, :cond_0

    .line 129
    return-object v0

    .line 132
    .end local v0    # "array":[I
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    return-object v1
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    invoke-virtual {v1, p1}, Landroid/content/res/MiuiResourcesImpl;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "array":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 157
    return-object v0

    .line 160
    .end local v0    # "array":[Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    invoke-virtual {v1, p1}, Landroid/content/res/MiuiResourcesImpl;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 93
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 94
    return-object v0

    .line 97
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;

    .prologue
    .line 105
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/MiuiResourcesImpl;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 107
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 108
    return-object v0

    .line 111
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    invoke-virtual {v1, p1}, Landroid/content/res/MiuiResourcesImpl;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 142
    .local v0, "array":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 143
    return-object v0

    .line 146
    .end local v0    # "array":[Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method getThemeString(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 221
    :cond_0
    return-object v1
.end method

.method public init(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_0

    .line 197
    iput-object p1, p0, Landroid/content/res/MiuiResources;->mPackage:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    invoke-virtual {v0, p0, p1}, Landroid/content/res/MiuiResourcesImpl;->init(Landroid/content/res/MiuiResources;Ljava/lang/String;)V

    .line 195
    :cond_0
    return-void
.end method

.method isPreloadOverlayed(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 183
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    invoke-virtual {v1, p1}, Landroid/content/res/MiuiResourcesImpl;->isPreloadOverlayed(I)Ljava/lang/Boolean;

    move-result-object v0

    .line 185
    .local v0, "isPreload":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 189
    .end local v0    # "isPreload":Ljava/lang/Boolean;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->isPreloadOverlayed(I)Z

    move-result v1

    return v1
.end method

.method loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    .line 165
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    invoke-virtual {v1, p0, p1, p2}, Landroid/content/res/MiuiResourcesImpl;->loadOverlayDrawable(Landroid/content/res/MiuiResources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 167
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 168
    return-object v0

    .line 171
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 2
    .param p1, "array"    # Landroid/content/res/TypedArray;

    .prologue
    .line 208
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    invoke-virtual {v1, p1}, Landroid/content/res/MiuiResourcesImpl;->loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 210
    .local v0, "typeArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 211
    return-object v0

    .line 214
    .end local v0    # "typeArray":Landroid/content/res/TypedArray;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v1

    return-object v1
.end method

.method loadOverlayValue(Landroid/util/TypedValue;I)V
    .locals 1
    .param p1, "outValue"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    .line 116
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/MiuiResourcesImpl;->loadOverlayValue(Landroid/util/TypedValue;I)V

    .line 115
    :cond_0
    return-void
.end method

.method public setImpl(Landroid/content/res/ResourcesImpl;)V
    .locals 0
    .param p1, "impl"    # Landroid/content/res/ResourcesImpl;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 75
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->updateMiuiImpl()V

    .line 73
    return-void
.end method
