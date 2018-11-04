.class public Lmiui/util/CustomizeUtil;
.super Ljava/lang/Object;
.source "CustomizeUtil.java"


# static fields
.field public static final ADJUST:Ljava/lang/String; = "adjust"

.field public static final ANDROID_MAX_ASPECT:Ljava/lang/String; = "android.max_aspect"

.field private static final CUST_VARIANT:Ljava/lang/String; = "cust_variant"

.field private static final CUST_VARIANT_FILE:Ljava/io/File;

.field private static final DATA_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

.field public static final ENABLE_CONFIG:Ljava/lang/String; = "enable_config"

.field public static final EXTRA_PRIVATE_FLAG_SPECIAL_MODE:I = 0x80

.field public static final HAS_NOTCH:Z

.field public static final MAX_ASPECT_RATIO:F = 3.0f

.field private static final MIUI_APP_DIR:Ljava/io/File;

.field private static final MIUI_CUSTOMIZED_APP_DIR:Ljava/io/File;

.field private static final MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

.field private static final MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

.field private static final MIUI_CUST_DIR:Ljava/io/File;

.field public static final NEED_ADJUST:Ljava/lang/String; = "need_adjust"

.field public static final NOTCH_CONFIG:Ljava/lang/String; = "notch.config"

.field public static final PACKAGE:Ljava/lang/String; = "pkg"

.field public static final RESTRICT_ASPECT_RATIO:F

.field private static final SYSTEM_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_METADATA:I = 0x1

.field public static final TYPE_OTHER:I = 0x5

.field public static final TYPE_RESIZEABLE:I = 0x2

.field public static final TYPE_RESTRICT:I = 0x4

.field public static final TYPE_SUGGEST:I = 0x3

.field public static final UPDATE_SPECIAL_MODE:Ljava/lang/String; = "upate_specail_mode"

.field private static sCustVariant:Ljava/lang/String;

.field private static sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/miui/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

    .line 29
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/cust/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustomizedDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "cust"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUST_DIR:Ljava/io/File;

    .line 33
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/miui/app/noncustomized"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->DATA_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    .line 35
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/data-app/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->SYSTEM_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    .line 37
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustomizedDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "app"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_APP_DIR:Ljava/io/File;

    .line 39
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiAppDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "customized"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_APP_DIR:Ljava/io/File;

    .line 41
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantFile()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lmiui/util/CustomizeUtil;->CUST_VARIANT_FILE:Ljava/io/File;

    .line 45
    const-string/jumbo v0, ""

    sput-object v0, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "lithium"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3fe38e39

    :goto_0
    sput v0, Lmiui/util/CustomizeUtil;->RESTRICT_ASPECT_RATIO:F

    .line 51
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "ro.miui.notch"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    .line 68
    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.keyguard"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    return-void

    .line 47
    :cond_0
    const v0, 0x3fea9fbe    # 1.833f

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDisplay(Landroid/view/DisplayInfo;ILjava/lang/String;)Landroid/view/DisplayInfo;
    .locals 11
    .param p0, "info"    # Landroid/view/DisplayInfo;
    .param p1, "callingUid"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;

    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    .line 185
    move-object v2, p0

    .line 187
    .local v2, "localDisplayInfo":Landroid/view/DisplayInfo;
    const/16 v8, 0x3e8

    if-eq p1, v8, :cond_0

    if-eqz p1, :cond_0

    .line 188
    move-object v6, p2

    .line 189
    .local v6, "pkg":Ljava/lang/String;
    :try_start_0
    invoke-static {p2}, Lmiui/os/MiuiInit;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 190
    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3, p0}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v2    # "localDisplayInfo":Landroid/view/DisplayInfo;
    .local v3, "localDisplayInfo":Landroid/view/DisplayInfo;
    :try_start_1
    iget v7, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 192
    .local v7, "width":I
    iget v1, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 193
    .local v1, "height":I
    if-ge v7, v1, :cond_1

    .line 194
    iget v8, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v8, v8

    sget v9, Lmiui/util/CustomizeUtil;->RESTRICT_ASPECT_RATIO:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v10

    float-to-int v4, v8

    .line 195
    .local v4, "maxHeight":I
    iget v8, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 197
    iget v8, v3, Landroid/view/DisplayInfo;->appWidth:I

    int-to-float v8, v8

    sget v9, Lmiui/util/CustomizeUtil;->RESTRICT_ASPECT_RATIO:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v10

    float-to-int v4, v8

    .line 198
    iget v8, v3, Landroid/view/DisplayInfo;->appHeight:I

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v3, Landroid/view/DisplayInfo;->appHeight:I

    move-object v2, v3

    .line 211
    .end local v1    # "height":I
    .end local v3    # "localDisplayInfo":Landroid/view/DisplayInfo;
    .end local v4    # "maxHeight":I
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "width":I
    .restart local v2    # "localDisplayInfo":Landroid/view/DisplayInfo;
    :cond_0
    :goto_0
    return-object v2

    .line 200
    .end local v2    # "localDisplayInfo":Landroid/view/DisplayInfo;
    .restart local v1    # "height":I
    .restart local v3    # "localDisplayInfo":Landroid/view/DisplayInfo;
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v7    # "width":I
    :cond_1
    iget v8, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v8, v8

    sget v9, Lmiui/util/CustomizeUtil;->RESTRICT_ASPECT_RATIO:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v10

    float-to-int v5, v8

    .line 201
    .local v5, "maxWidth":I
    iget v8, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 203
    iget v8, v3, Landroid/view/DisplayInfo;->appHeight:I

    int-to-float v8, v8

    sget v9, Lmiui/util/CustomizeUtil;->RESTRICT_ASPECT_RATIO:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v10

    float-to-int v5, v8

    .line 204
    iget v8, v3, Landroid/view/DisplayInfo;->appWidth:I

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v3, Landroid/view/DisplayInfo;->appWidth:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .end local v3    # "localDisplayInfo":Landroid/view/DisplayInfo;
    .restart local v2    # "localDisplayInfo":Landroid/view/DisplayInfo;
    goto :goto_0

    .line 208
    .end local v1    # "height":I
    .end local v5    # "maxWidth":I
    .end local v7    # "width":I
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v8, "CustomizeUtil"

    const-string/jumbo v9, "ajsustDisplay failed."

    invoke-static {v8, v9, v0}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 208
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "localDisplayInfo":Landroid/view/DisplayInfo;
    .restart local v3    # "localDisplayInfo":Landroid/view/DisplayInfo;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "localDisplayInfo":Landroid/view/DisplayInfo;
    .restart local v2    # "localDisplayInfo":Landroid/view/DisplayInfo;
    goto :goto_1
.end method

.method public static forceLayoutHideNavigation(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 153
    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static getCallingUidPackage(I)Ljava/lang/String;
    .locals 5
    .param p0, "callingUid"    # I

    .prologue
    const/4 v4, 0x0

    .line 171
    if-lez p0, :cond_0

    .line 173
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 175
    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 177
    .end local v1    # "packages":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CustomizeUtil"

    const-string/jumbo v3, "getCallingUidPackage failed."

    invoke-static {v2, v3, v0}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method public static getMiuiAppDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_APP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiCustDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUST_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiCustVariantDir()Ljava/io/File;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 100
    sget-boolean v8, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v8, :cond_0

    sget-object v8, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 103
    :cond_0
    sget-object v8, Lmiui/util/CustomizeUtil;->CUST_VARIANT_FILE:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 104
    const/4 v6, 0x0

    .line 105
    .local v6, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 107
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    sget-object v8, Lmiui/util/CustomizeUtil;->CUST_VARIANT_FILE:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .end local v6    # "fr":Ljava/io/FileReader;
    .local v7, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .end local v0    # "br":Ljava/io/BufferedReader;
    move-result-object v2

    .line 110
    .local v2, "cust_variant":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 111
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\n"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 112
    new-instance v8, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 122
    if-eqz v7, :cond_1

    .line 123
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 125
    :cond_1
    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 112
    :cond_2
    :goto_0
    return-object v8

    .line 101
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "cust_variant":Ljava/lang/String;
    .end local v7    # "fr":Ljava/io/FileReader;
    :cond_3
    new-instance v8, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustDir()Ljava/io/File;

    move-result-object v9

    sget-object v10, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v8

    .line 128
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "cust_variant":Ljava/lang/String;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :catch_0
    move-exception v5

    .line 129
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "CustomizeUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getMiuiCustVariantDir finally Exception e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    if-eqz v7, :cond_5

    .line 123
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 125
    :cond_5
    if-eqz v1, :cond_6

    .line 126
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 114
    :cond_6
    :goto_1
    return-object v11

    .line 128
    :catch_1
    move-exception v5

    .line 129
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "CustomizeUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getMiuiCustVariantDir finally Exception e:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 118
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "cust_variant":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_2
    move-exception v4

    .line 119
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fr":Ljava/io/FileReader;
    .local v4, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 122
    if-eqz v6, :cond_7

    .line 123
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 125
    :cond_7
    if-eqz v0, :cond_8

    .line 126
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 133
    :cond_8
    :goto_3
    return-object v11

    .line 128
    :catch_3
    move-exception v5

    .line 129
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "CustomizeUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getMiuiCustVariantDir finally Exception e:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 116
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_4
    move-exception v3

    .line 117
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fr":Ljava/io/FileReader;
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 122
    if-eqz v6, :cond_9

    .line 123
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 125
    :cond_9
    if-eqz v0, :cond_8

    .line 126
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    .line 128
    :catch_5
    move-exception v5

    .line 129
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "CustomizeUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getMiuiCustVariantDir finally Exception e:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 120
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 122
    :goto_5
    if-eqz v6, :cond_a

    .line 123
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 125
    :cond_a
    if-eqz v0, :cond_b

    .line 126
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 120
    :cond_b
    :goto_6
    throw v8

    .line 128
    :catch_6
    move-exception v5

    .line 129
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "CustomizeUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getMiuiCustVariantDir finally Exception e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 120
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .line 116
    .end local v6    # "fr":Ljava/io/FileReader;
    .local v0, "br":Ljava/io/BufferedReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v3

    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    move-object v6, v7

    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v3

    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .line 118
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "fr":Ljava/io/FileReader;
    .local v0, "br":Ljava/io/BufferedReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :catch_9
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fr":Ljava/io/FileReader;
    :catch_a
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    goto/16 :goto_2
.end method

.method public static getMiuiCustVariantFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 141
    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

    const-string/jumbo v2, "cust_variant"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 144
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

    const-string/jumbo v2, "cust_variant"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getMiuiCustomizedAppDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_APP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiCustomizedDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

    return-object v0

    .line 77
    :cond_0
    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiNoCustomizedAppDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lmiui/util/CustomizeUtil;->SYSTEM_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    return-object v0

    .line 84
    :cond_0
    sget-object v0, Lmiui/util/CustomizeUtil;->DATA_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 7
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outPoint"    # Landroid/graphics/Point;

    .prologue
    .line 158
    :try_start_0
    const-class v2, Landroid/view/Display;

    const-string/jumbo v3, "getRealSize"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Point;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 159
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CustomizeUtil"

    const-string/jumbo v3, "no getRealSize hack method"

    invoke-static {v2, v3}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public static isRestrict(F)Z
    .locals 2
    .param p0, "maxAspect"    # F

    .prologue
    const/4 v0, 0x0

    .line 167
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v1, p0, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static needChangeSize()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public static setMiuiCustVariatDir(Ljava/lang/String;)V
    .locals 0
    .param p0, "custVariant"    # Ljava/lang/String;

    .prologue
    .line 137
    sput-object p0, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    .line 136
    return-void
.end method
