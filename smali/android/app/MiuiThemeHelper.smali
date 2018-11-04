.class public Landroid/app/MiuiThemeHelper;
.super Ljava/lang/Object;
.source "MiuiThemeHelper.java"


# static fields
.field private static final ICON_THEME:Ljava/lang/String; = "/data/system/theme/icons"

.field public static final MIUI_RES_PATH:Ljava/lang/String; = "/system/framework/framework-miui-res.apk"

.field private static final MIUI_SCREENSHOT_MODE_RES_PATH:Ljava/lang/String; = "/data/system/themeScreenshotMode"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExtraAssetPaths(Landroid/content/res/AssetManager;)V
    .locals 1
    .param p0, "am"    # Landroid/content/res/AssetManager;

    .prologue
    .line 88
    const-string/jumbo v0, "/system/framework/framework-miui-res.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public static canKeepActivityAlive(Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "changes"    # I
    .param p2, "oldConfig"    # Landroid/content/res/Configuration;
    .param p3, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    const/high16 v4, -0x80000000

    if-ne p1, v4, :cond_1

    .line 131
    iget-object v1, p2, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    .line 132
    .local v1, "oldThemeConfig":Landroid/content/res/MiuiConfiguration;
    iget-object v0, p3, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    .line 133
    .local v0, "newThemeConfig":Landroid/content/res/MiuiConfiguration;
    iget v4, v0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iget v5, v1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    sub-int/2addr v4, v5

    if-ne v4, v3, :cond_1

    .line 134
    iget-wide v4, v0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    invoke-static {p0, v4, v5}, Landroid/content/res/MiuiConfiguration;->needRestartActivity(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 137
    .end local v0    # "newThemeConfig":Landroid/content/res/MiuiConfiguration;
    .end local v1    # "oldThemeConfig":Landroid/content/res/MiuiConfiguration;
    :cond_1
    return v2
.end method

.method public static copyExtraConfigurations(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "srcConfig"    # Landroid/content/res/Configuration;
    .param p1, "desConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 95
    iget-object v0, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget v1, v1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iput v1, v0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 94
    return-void
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageItemName"    # Ljava/lang/String;
    .param p3, "resid"    # I
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 49
    :cond_0
    const/4 v7, 0x0

    .line 51
    .local v7, "apm":Landroid/app/ApplicationPackageManager;
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/app/ApplicationPackageManager;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .local v7, "apm":Landroid/app/ApplicationPackageManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-gt v1, v2, :cond_4

    .line 63
    if-nez p2, :cond_3

    const/4 v6, 0x1

    .line 71
    :goto_0
    if-nez v6, :cond_7

    move-object v3, p2

    .line 72
    :goto_1
    invoke-static {p1, v3}, Lmiui/content/res/IconCustomizer;->getCustomizedIconFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    .line 73
    .local v8, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v8, :cond_1

    .line 74
    instance-of v1, p0, Landroid/app/ApplicationPackageManager;

    if-eqz v1, :cond_1

    .line 76
    nop

    nop

    .end local p0    # "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getContext()Landroid/app/ContextImpl;

    move-result-object v1

    move-object v2, p1

    move v4, p3

    move-object v5, p4

    .line 75
    invoke-static/range {v1 .. v6}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    .line 81
    :cond_1
    return-object v8

    .line 52
    .end local v8    # "dr":Landroid/graphics/drawable/Drawable;
    .local v7, "apm":Landroid/app/ApplicationPackageManager;
    .restart local p0    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v9

    .line 53
    .local v9, "e":Ljava/lang/ClassCastException;
    if-eqz p3, :cond_2

    invoke-virtual {p0, p1, p3, p4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    return-object v1

    .line 63
    .end local v9    # "e":Ljava/lang/ClassCastException;
    .local v7, "apm":Landroid/app/ApplicationPackageManager;
    :cond_3
    const/4 v6, 0x0

    .local v6, "isPackageIcon":Z
    goto :goto_0

    .line 65
    .end local v6    # "isPackageIcon":Z
    :cond_4
    if-eqz p2, :cond_5

    if-eqz p4, :cond_6

    iget-object v1, p4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .local v6, "isPackageIcon":Z
    goto :goto_0

    .end local v6    # "isPackageIcon":Z
    :cond_5
    const/4 v6, 0x1

    .local v6, "isPackageIcon":Z
    goto :goto_0

    .end local v6    # "isPackageIcon":Z
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "isPackageIcon":Z
    goto :goto_0

    .line 71
    .end local v6    # "isPackageIcon":Z
    :cond_7
    const/4 v3, 0x0

    .local v3, "className":Ljava/lang/String;
    goto :goto_1
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V
    .locals 6
    .param p0, "changes"    # I
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const-wide/16 v4, 0x0

    .line 102
    const/high16 v2, -0x80000000

    and-int/2addr v2, p0

    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget-wide v0, v2, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    .line 105
    .local v0, "flag":J
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 106
    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 107
    invoke-static {p1}, Lmiui/content/res/ThemeFontChangeHelper;->quitProcessIfNeed(Landroid/content/res/Configuration;)V

    .line 108
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 109
    invoke-static {}, Landroid/view/ExtraGLES20Canvas;->freeCaches()V

    .line 111
    :cond_0
    const-wide/16 v2, 0x8

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 112
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 101
    .end local v0    # "flag":J
    :cond_1
    return-void
.end method

.method public static handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V
    .locals 1
    .param p0, "changes"    # I
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 121
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {p0, p1}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V

    .line 120
    :cond_0
    return-void
.end method

.method public static isInternationalBuildWithDefaultTheme()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/data/system/theme/icons"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isScreenshotMode()Z
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/themeScreenshotMode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static parseDimension(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 26
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v15, -0x4

    .line 142
    .local v15, "intPos":I
    const/4 v6, -0x3

    .line 143
    .local v6, "dotPos":I
    const/4 v13, -0x2

    .line 144
    .local v13, "fractionPos":I
    const/16 v19, -0x1

    .line 145
    .local v19, "unitPos":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v14, v0, :cond_3

    .line 146
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 147
    .local v4, "c":C
    const/16 v21, -0x4

    move/from16 v0, v21

    if-ne v15, v0, :cond_0

    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v4, v0, :cond_0

    const/16 v21, 0x39

    move/from16 v0, v21

    if-gt v4, v0, :cond_0

    .line 148
    move v15, v14

    .line 150
    :cond_0
    const/16 v21, -0x3

    move/from16 v0, v21

    if-ne v6, v0, :cond_1

    const/16 v21, 0x2e

    move/from16 v0, v21

    if-ne v4, v0, :cond_1

    .line 151
    move v6, v14

    .line 153
    :cond_1
    const/16 v21, -0x3

    move/from16 v0, v21

    if-eq v6, v0, :cond_2

    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v4, v0, :cond_2

    const/16 v21, 0x39

    move/from16 v0, v21

    if-gt v4, v0, :cond_2

    .line 154
    move v13, v14

    .line 156
    :cond_2
    const/16 v21, 0x61

    move/from16 v0, v21

    if-lt v4, v0, :cond_4

    const/16 v21, 0x7a

    move/from16 v0, v21

    if-gt v4, v0, :cond_4

    .line 157
    move/from16 v19, v14

    .line 161
    .end local v4    # "c":C
    :cond_3
    const/4 v8, 0x0

    .line 162
    .local v8, "f":F
    const/4 v12, 0x0

    .line 163
    .local v12, "fraction":I
    const/16 v20, 0x0

    .line 164
    .local v20, "unitType":I
    const/16 v16, 0x0

    .line 166
    .local v16, "mantissaShift":I
    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_12

    if-ge v6, v13, :cond_12

    move/from16 v0, v19

    if-ge v13, v0, :cond_12

    .line 168
    const/16 v21, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 172
    const/16 v21, -0x3

    move/from16 v0, v21

    if-eq v6, v0, :cond_6

    const/16 v21, -0x2

    move/from16 v0, v21

    if-eq v13, v0, :cond_6

    .line 174
    const/4 v10, 0x4

    .line 175
    .local v10, "fracMaxDigits":I
    add-int/lit8 v11, v6, 0x1

    .line 176
    .local v11, "fracStart":I
    sub-int v21, v13, v6

    const/16 v22, 0x4

    :try_start_1
    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    add-int v9, v11, v21

    .line 177
    .local v9, "fracEnd":I
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .local v17, "tmp":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 179
    const/16 v21, 0x30

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 182
    .end local v9    # "fracEnd":I
    .end local v17    # "tmp":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v7

    .line 183
    .local v7, "e":Ljava/lang/NumberFormatException;
    const/16 v21, 0x0

    return-object v21

    .line 145
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "f":F
    .end local v10    # "fracMaxDigits":I
    .end local v11    # "fracStart":I
    .end local v12    # "fraction":I
    .end local v16    # "mantissaShift":I
    .end local v20    # "unitType":I
    .restart local v4    # "c":C
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 169
    .end local v4    # "c":C
    .restart local v8    # "f":F
    .restart local v12    # "fraction":I
    .restart local v16    # "mantissaShift":I
    .restart local v20    # "unitType":I
    :catch_1
    move-exception v7

    .line 170
    .restart local v7    # "e":Ljava/lang/NumberFormatException;
    const/16 v21, 0x0

    return-object v21

    .line 181
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "fracEnd":I
    .restart local v10    # "fracMaxDigits":I
    .restart local v11    # "fracStart":I
    .restart local v17    # "tmp":Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    .line 187
    .end local v9    # "fracEnd":I
    .end local v10    # "fracMaxDigits":I
    .end local v11    # "fracStart":I
    .end local v17    # "tmp":Ljava/lang/StringBuilder;
    :cond_6
    const/16 v21, 0x100

    move/from16 v0, v21

    if-ge v12, v0, :cond_8

    .line 188
    const/high16 v21, 0x43800000    # 256.0f

    mul-float v8, v8, v21

    .line 199
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 200
    .local v18, "unit":Ljava/lang/String;
    const-string/jumbo v21, "px"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 201
    const/16 v20, 0x0

    .line 216
    :goto_3
    float-to-int v0, v8

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 217
    .local v5, "complex":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, -0x100

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 218
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v21

    shl-int/lit8 v22, v16, 0x4

    or-int v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 219
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v21

    or-int v21, v21, v20

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 223
    return-object v5

    .line 189
    .end local v5    # "complex":Ljava/lang/Integer;
    .end local v18    # "unit":Ljava/lang/String;
    :cond_8
    const v21, 0x8000

    move/from16 v0, v21

    if-ge v12, v0, :cond_9

    .line 190
    const/high16 v21, 0x47000000    # 32768.0f

    mul-float v8, v8, v21

    .line 191
    const/16 v16, 0x1

    goto :goto_2

    .line 192
    :cond_9
    const/high16 v21, 0x800000

    move/from16 v0, v21

    if-ge v12, v0, :cond_a

    .line 193
    const/high16 v21, 0x4b000000    # 8388608.0f

    mul-float v8, v8, v21

    .line 194
    const/16 v16, 0x2

    goto :goto_2

    .line 195
    :cond_a
    int-to-long v0, v12

    move-wide/from16 v22, v0

    const-wide v24, 0x80000000L

    cmp-long v21, v22, v24

    if-gez v21, :cond_7

    .line 196
    const/high16 v21, 0x4f000000

    mul-float v8, v8, v21

    .line 197
    const/16 v16, 0x3

    goto :goto_2

    .line 202
    .restart local v18    # "unit":Ljava/lang/String;
    :cond_b
    const-string/jumbo v21, "dp"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_c

    const-string/jumbo v21, "dip"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 203
    :cond_c
    const/16 v20, 0x1

    goto :goto_3

    .line 204
    :cond_d
    const-string/jumbo v21, "sp"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 205
    const/16 v20, 0x2

    goto/16 :goto_3

    .line 206
    :cond_e
    const-string/jumbo v21, "pt"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 207
    const/16 v20, 0x3

    goto/16 :goto_3

    .line 208
    :cond_f
    const-string/jumbo v21, "in"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 209
    const/16 v20, 0x4

    goto/16 :goto_3

    .line 210
    :cond_10
    const-string/jumbo v21, "mm"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 211
    const/16 v20, 0x5

    goto/16 :goto_3

    .line 213
    :cond_11
    const/16 v21, 0x0

    return-object v21

    .line 221
    .end local v18    # "unit":Ljava/lang/String;
    :cond_12
    const/16 v21, 0x0

    return-object v21
.end method
