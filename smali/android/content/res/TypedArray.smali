.class public Landroid/content/res/TypedArray;
.super Ljava/lang/Object;
.source "TypedArray.java"


# instance fields
.field private mAssets:Landroid/content/res/AssetManager;

.field mData:[I

.field mIndices:[I

.field mLength:I

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private mRecycled:Z

.field private final mResources:Landroid/content/res/Resources;

.field mTheme:Landroid/content/res/Resources$Theme;

.field mValue:Landroid/util/TypedValue;

.field mXml:Landroid/content/res/XmlBlock$Parser;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;[I[II)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "data"    # [I
    .param p3, "indices"    # [I
    .param p4, "len"    # I

    .prologue
    .line 1222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1223
    iput-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 1224
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 1225
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 1226
    iput-object p2, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1227
    iput-object p3, p0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 1228
    iput p4, p0, Landroid/content/res/TypedArray;->mLength:I

    .line 1222
    return-void
.end method

.method private getValueAt(ILandroid/util/TypedValue;)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .prologue
    const/4 v3, 0x0

    .line 1193
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1194
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 1195
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 1196
    return v3

    .line 1198
    :cond_0
    iput v1, p2, Landroid/util/TypedValue;->type:I

    .line 1199
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->data:I

    .line 1200
    add-int/lit8 v2, p1, 0x2

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 1201
    add-int/lit8 v2, p1, 0x3

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 1203
    add-int/lit8 v2, p1, 0x4

    aget v2, v0, v2

    .line 1202
    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v2

    iput v2, p2, Landroid/util/TypedValue;->changingConfigurations:I

    .line 1204
    add-int/lit8 v2, p1, 0x5

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->density:I

    .line 1205
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_0
    iput-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 1206
    const/4 v2, 0x1

    return v2

    .line 1205
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadStringValueAt(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 1210
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1211
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x2

    aget v0, v1, v2

    .line 1212
    .local v0, "cookie":I
    if-gez v0, :cond_1

    .line 1213
    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v2, :cond_0

    .line 1214
    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1215
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    .line 1214
    invoke-virtual {v2, v3}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 1217
    :cond_0
    return-object v3

    .line 1219
    :cond_1
    iget-object v2, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method static obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "len"    # I

    .prologue
    .line 47
    iget-object v2, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v2}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/TypedArray;

    .line 48
    .local v0, "attrs":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1

    .line 49
    iput p1, v0, Landroid/content/res/TypedArray;->mLength:I

    .line 50
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 54
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iput-object v2, v0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 56
    mul-int/lit8 v1, p1, 0x6

    .line 57
    .local v1, "fullLen":I
    iget-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    array-length v2, v2

    if-lt v2, v1, :cond_0

    .line 58
    return-object v0

    .line 61
    :cond_0
    new-array v2, v1, [I

    iput-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    .line 62
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [I

    iput-object v2, v0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 63
    return-object v0

    .line 68
    .end local v1    # "fullLen":I
    :cond_1
    new-instance v2, Landroid/content/res/MiuiTypedArray;

    .line 69
    mul-int/lit8 v3, p1, 0x6

    new-array v3, v3, [I

    .line 70
    add-int/lit8 v4, p1, 0x1

    new-array v4, v4, [I

    .line 68
    invoke-direct {v2, p0, v3, v4, p1}, Landroid/content/res/MiuiTypedArray;-><init>(Landroid/content/res/Resources;[I[II)V

    return-object v2
.end method


# virtual methods
.method public extractThemeAttrs()[I
    .locals 1

    .prologue
    .line 1114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v0

    return-object v0
.end method

.method public extractThemeAttrs([I)[I
    .locals 9
    .param p1, "scrap"    # [I

    .prologue
    const/4 v8, 0x0

    .line 1122
    iget-boolean v6, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v6, :cond_0

    .line 1123
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Cannot make calls to a recycled instance!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1126
    :cond_0
    const/4 v2, 0x0

    .line 1128
    .local v2, "attrs":[I
    iget-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1129
    .local v3, "data":[I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 1130
    .local v0, "N":I
    const/4 v4, 0x0

    .end local v2    # "attrs":[I
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_5

    .line 1131
    mul-int/lit8 v5, v4, 0x6

    .line 1132
    .local v5, "index":I
    add-int/lit8 v6, v5, 0x0

    aget v6, v3, v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 1130
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1138
    :cond_2
    add-int/lit8 v6, v5, 0x0

    aput v8, v3, v6

    .line 1140
    add-int/lit8 v6, v5, 0x1

    aget v1, v3, v6

    .line 1141
    .local v1, "attr":I
    if-eqz v1, :cond_1

    .line 1147
    if-nez v2, :cond_3

    .line 1148
    if-eqz p1, :cond_4

    array-length v6, p1

    if-ne v6, v0, :cond_4

    .line 1149
    move-object v2, p1

    .line 1150
    .local v2, "attrs":[I
    invoke-static {p1, v8}, Ljava/util/Arrays;->fill([II)V

    .line 1156
    .end local v2    # "attrs":[I
    :cond_3
    :goto_2
    aput v1, v2, v4

    goto :goto_1

    .line 1152
    :cond_4
    new-array v2, v0, [I

    .restart local v2    # "attrs":[I
    goto :goto_2

    .line 1159
    .end local v1    # "attr":I
    .end local v2    # "attrs":[I
    .end local v5    # "index":I
    :cond_5
    return-object v2
.end method

.method public getBoolean(IZ)Z
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # Z

    .prologue
    const/4 v3, 0x0

    .line 311
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_0

    .line 312
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 315
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 316
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 317
    .local v0, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v1, v0, v4

    .line 318
    .local v1, "type":I
    if-nez v1, :cond_1

    .line 319
    return p2

    .line 320
    :cond_1
    const/16 v4, 0x10

    if-lt v1, v4, :cond_3

    .line 321
    const/16 v4, 0x1f

    if-gt v1, v4, :cond_3

    .line 322
    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3

    .line 325
    :cond_3
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 326
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 327
    invoke-static {v2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 328
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v3

    return v3

    .line 332
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getBoolean of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getChangingConfigurations()I
    .locals 8

    .prologue
    .line 1172
    iget-boolean v6, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v6, :cond_0

    .line 1173
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Cannot make calls to a recycled instance!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1176
    :cond_0
    const/4 v1, 0x0

    .line 1178
    .local v1, "changingConfig":I
    iget-object v2, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1179
    .local v2, "data":[I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 1180
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1181
    mul-int/lit8 v4, v3, 0x6

    .line 1182
    .local v4, "index":I
    add-int/lit8 v6, v4, 0x0

    aget v5, v2, v6

    .line 1183
    .local v5, "type":I
    if-nez v5, :cond_1

    .line 1180
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1187
    :cond_1
    add-int/lit8 v6, v4, 0x4

    aget v6, v2, v6

    .line 1186
    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v6

    or-int/2addr v1, v6

    goto :goto_1

    .line 1189
    .end local v4    # "index":I
    .end local v5    # "type":I
    :cond_2
    return v1
.end method

.method public getColor(II)I
    .locals 8
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 436
    iget-boolean v5, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v5, :cond_0

    .line 437
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Cannot make calls to a recycled instance!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 440
    :cond_0
    move v0, p1

    .line 441
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    .line 443
    iget-object v2, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 444
    .local v2, "data":[I
    add-int/lit8 v5, p1, 0x0

    aget v3, v2, v5

    .line 445
    .local v3, "type":I
    if-nez v3, :cond_1

    .line 446
    return p2

    .line 447
    :cond_1
    const/16 v5, 0x10

    if-lt v3, v5, :cond_2

    .line 448
    const/16 v5, 0x1f

    if-gt v3, v5, :cond_2

    .line 449
    add-int/lit8 v5, p1, 0x1

    aget v5, v2, v5

    return v5

    .line 450
    :cond_2
    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    .line 451
    iget-object v4, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 452
    .local v4, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v4}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 453
    iget-object v5, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 454
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    iget-object v7, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 453
    invoke-virtual {v5, v4, v6, v7}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 455
    .local v1, "csl":Landroid/content/res/ColorStateList;
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    return v5

    .line 457
    .end local v1    # "csl":Landroid/content/res/ColorStateList;
    :cond_3
    return p2

    .line 458
    .end local v4    # "value":Landroid/util/TypedValue;
    :cond_4
    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    .line 459
    iget-object v4, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 460
    .restart local v4    # "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v4}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 461
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    .line 462
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to resolve attribute at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 461
    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 465
    .end local v4    # "value":Landroid/util/TypedValue;
    :cond_5
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t convert value at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 466
    const-string/jumbo v7, " to color: type=0x"

    .line 465
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 466
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 465
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 523
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_0

    .line 524
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 527
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 528
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 529
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 530
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 530
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :cond_1
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    .line 535
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getComplexColor(I)Landroid/content/res/ComplexColor;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 488
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_0

    .line 489
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 493
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 494
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 495
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 495
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 498
    :cond_1
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->loadComplexColor(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v1

    return-object v1

    .line 500
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDimension(IF)F
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .prologue
    .line 602
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_0

    .line 603
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 606
    :cond_0
    move v0, p1

    .line 607
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    .line 609
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 610
    .local v1, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    .line 611
    .local v2, "type":I
    if-nez v2, :cond_1

    .line 612
    return p2

    .line 613
    :cond_1
    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    .line 615
    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 614
    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v4

    return v4

    .line 616
    :cond_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 617
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 618
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 619
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .line 620
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 619
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 623
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 624
    const-string/jumbo v6, " to dimension: type=0x"

    .line 623
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 624
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 623
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getDimensionPixelOffset(II)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 651
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_0

    .line 652
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 655
    :cond_0
    move v0, p1

    .line 656
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    .line 658
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 659
    .local v1, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    .line 660
    .local v2, "type":I
    if-nez v2, :cond_1

    .line 661
    return p2

    .line 662
    :cond_1
    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    .line 664
    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 663
    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v4

    return v4

    .line 665
    :cond_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 666
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 667
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 668
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .line 669
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 668
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 672
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 673
    const-string/jumbo v6, " to dimension: type=0x"

    .line 672
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 673
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 672
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getDimensionPixelSize(II)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 701
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_0

    .line 702
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 705
    :cond_0
    move v0, p1

    .line 706
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    .line 708
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 709
    .local v1, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    .line 710
    .local v2, "type":I
    if-nez v2, :cond_1

    .line 711
    return p2

    .line 712
    :cond_1
    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    .line 714
    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 713
    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    return v4

    .line 715
    :cond_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 716
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 717
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 718
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .line 719
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 718
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 722
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 723
    const-string/jumbo v6, " to dimension: type=0x"

    .line 722
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 723
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 722
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 920
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_0

    .line 921
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 924
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 925
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 926
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 927
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 928
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 927
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 930
    :cond_1
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 932
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFloat(IF)F
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .prologue
    .line 387
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_0

    .line 388
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 391
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 392
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 393
    .local v0, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v0, v4

    .line 394
    .local v2, "type":I
    if-nez v2, :cond_1

    .line 395
    return p2

    .line 396
    :cond_1
    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 397
    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    return v4

    .line 398
    :cond_2
    const/16 v4, 0x10

    if-lt v2, v4, :cond_3

    .line 399
    const/16 v4, 0x1f

    if-gt v2, v4, :cond_3

    .line 400
    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    int-to-float v4, v4

    return v4

    .line 403
    :cond_3
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 404
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 405
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 406
    .local v1, "str":Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    .line 407
    invoke-static {v3}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 408
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    return v4

    .line 413
    .end local v1    # "str":Ljava/lang/CharSequence;
    :cond_4
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getFloat of bad type: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getFraction(IIIF)F
    .locals 7
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I
    .param p4, "defValue"    # F

    .prologue
    .line 823
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_0

    .line 824
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 827
    :cond_0
    move v0, p1

    .line 828
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    .line 830
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 831
    .local v1, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    .line 832
    .local v2, "type":I
    if-nez v2, :cond_1

    .line 833
    return p4

    .line 834
    :cond_1
    const/4 v4, 0x6

    if-ne v2, v4, :cond_2

    .line 836
    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    int-to-float v5, p2

    int-to-float v6, p3

    .line 835
    invoke-static {v4, v5, v6}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v4

    return v4

    .line 837
    :cond_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 838
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 839
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 840
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .line 841
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 840
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 844
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 845
    const-string/jumbo v6, " to fraction: type=0x"

    .line 844
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 845
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 844
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getIndex(I)I
    .locals 2
    .param p1, "at"    # I

    .prologue
    .line 123
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getIndexCount()I
    .locals 2

    .prologue
    .line 105
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getInt(II)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 350
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_0

    .line 351
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 354
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 355
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 356
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 357
    .local v1, "type":I
    if-nez v1, :cond_1

    .line 358
    return p2

    .line 359
    :cond_1
    const/16 v3, 0x10

    if-lt v1, v3, :cond_2

    .line 360
    const/16 v3, 0x1f

    if-gt v1, v3, :cond_2

    .line 361
    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    return v3

    .line 364
    :cond_2
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 365
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 366
    invoke-static {v2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 367
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v3

    return v3

    .line 371
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getInt of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getInteger(II)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 554
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_0

    .line 555
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 558
    :cond_0
    move v0, p1

    .line 559
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    .line 561
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 562
    .local v1, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    .line 563
    .local v2, "type":I
    if-nez v2, :cond_1

    .line 564
    return p2

    .line 565
    :cond_1
    const/16 v4, 0x10

    if-lt v2, v4, :cond_2

    .line 566
    const/16 v4, 0x1f

    if-gt v2, v4, :cond_2

    .line 567
    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    return v4

    .line 568
    :cond_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 569
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 570
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 571
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .line 572
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 571
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 575
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 576
    const-string/jumbo v6, " to integer: type=0x"

    .line 575
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 576
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 575
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getLayoutDimension(II)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 786
    iget-boolean v2, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v2, :cond_0

    .line 787
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 790
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 791
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 792
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 793
    .local v1, "type":I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 794
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_1

    .line 795
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    return v2

    .line 796
    :cond_1
    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 798
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 797
    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    return v2

    .line 801
    :cond_2
    return p2
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 745
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_0

    .line 746
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 749
    :cond_0
    move v0, p1

    .line 750
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    .line 752
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 753
    .local v1, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    .line 754
    .local v2, "type":I
    const/16 v4, 0x10

    if-lt v2, v4, :cond_1

    .line 755
    const/16 v4, 0x1f

    if-gt v2, v4, :cond_1

    .line 756
    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    return v4

    .line 757
    :cond_1
    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    .line 759
    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 758
    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    return v4

    .line 760
    :cond_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 761
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 762
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 763
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .line 764
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 763
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 767
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 768
    const-string/jumbo v6, ": You must supply a "

    .line 767
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 768
    const-string/jumbo v6, " attribute."

    .line 767
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getNonConfigurationString(II)Ljava/lang/String;
    .locals 8
    .param p1, "index"    # I
    .param p2, "allowedChangingConfigs"    # I

    .prologue
    const/4 v5, 0x0

    .line 265
    iget-boolean v6, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v6, :cond_0

    .line 266
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Cannot make calls to a recycled instance!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 269
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 270
    iget-object v2, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 271
    .local v2, "data":[I
    add-int/lit8 v6, p1, 0x0

    aget v3, v2, v6

    .line 273
    .local v3, "type":I
    add-int/lit8 v6, p1, 0x4

    aget v6, v2, v6

    .line 272
    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v0

    .line 274
    .local v0, "changingConfigs":I
    not-int v6, p2

    and-int/2addr v6, v0

    if-eqz v6, :cond_1

    .line 275
    return-object v5

    .line 277
    :cond_1
    if-nez v3, :cond_2

    .line 278
    return-object v5

    .line 279
    :cond_2
    const/4 v6, 0x3

    if-ne v3, v6, :cond_3

    .line 280
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 283
    :cond_3
    iget-object v4, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 284
    .local v4, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v4}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 285
    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 286
    .local v1, "cs":Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    return-object v5

    .line 290
    .end local v1    # "cs":Ljava/lang/CharSequence;
    :cond_5
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getNonConfigurationString of bad type: 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 291
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 290
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 233
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_0

    .line 234
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 237
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 238
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 239
    .local v1, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v2, v1, v3

    .line 240
    .local v2, "type":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 241
    add-int/lit8 v3, p1, 0x2

    aget v0, v1, v3

    .line 242
    .local v0, "cookie":I
    if-gez v0, :cond_1

    .line 243
    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 244
    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    .line 243
    invoke-virtual {v3, v4}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 247
    .end local v0    # "cookie":I
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1072
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 1073
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1076
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    invoke-virtual {v0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "<internal>"

    goto :goto_0
.end method

.method public getResourceId(II)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 865
    iget-boolean v2, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v2, :cond_0

    .line 866
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 869
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 870
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 871
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v0, v2

    if-eqz v2, :cond_1

    .line 872
    add-int/lit8 v2, p1, 0x3

    aget v1, v0, v2

    .line 873
    .local v1, "resid":I
    if-eqz v1, :cond_1

    .line 874
    return v1

    .line 877
    .end local v1    # "resid":I
    :cond_1
    return p2
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 136
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 194
    iget-boolean v5, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v5, :cond_0

    .line 195
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 198
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 199
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 200
    .local v1, "data":[I
    add-int/lit8 v5, p1, 0x0

    aget v2, v1, v5

    .line 201
    .local v2, "type":I
    if-nez v2, :cond_1

    .line 202
    return-object v4

    .line 203
    :cond_1
    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 204
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 207
    :cond_2
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 208
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 209
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 210
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    return-object v4

    .line 214
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_4
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getString of bad type: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 157
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_0

    .line 158
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 161
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 162
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 163
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 164
    .local v1, "type":I
    if-nez v1, :cond_1

    .line 165
    const/4 v3, 0x0

    return-object v3

    .line 166
    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 167
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 170
    :cond_2
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 171
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 172
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 176
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getText of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 951
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_0

    .line 952
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 955
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 956
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 957
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 959
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getThemeAttributeId(II)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 893
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_0

    .line 894
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 897
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 898
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 899
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 900
    add-int/lit8 v1, p1, 0x1

    aget v1, v0, v1

    return v1

    .line 902
    :cond_1
    return p2
.end method

.method public getType(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 989
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 990
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 993
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 994
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getValue(ILandroid/util/TypedValue;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .prologue
    .line 973
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 974
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 977
    :cond_0
    mul-int/lit8 v0, p1, 0x6

    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v0

    return v0
.end method

.method public hasValue(I)Z
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 1009
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_0

    .line 1010
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1013
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 1014
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1015
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 1016
    .local v1, "type":I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public hasValueOrEmpty(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1030
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_0

    .line 1031
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1034
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 1035
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1036
    .local v0, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v1, v0, v4

    .line 1037
    .local v1, "type":I
    if-nez v1, :cond_1

    .line 1038
    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    if-ne v4, v2, :cond_2

    .line 1037
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    .line 1038
    goto :goto_0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 92
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iget v0, p0, Landroid/content/res/TypedArray;->mLength:I

    return v0
.end method

.method public peekValue(I)Landroid/util/TypedValue;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1054
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_0

    .line 1055
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1058
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1059
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1060
    return-object v0

    .line 1062
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1086
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 1087
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " recycled twice!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1090
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 1093
    iput-object v1, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1094
    iput-object v1, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1095
    iput-object v1, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 1097
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 1085
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
