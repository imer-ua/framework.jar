.class public Lmiui/maml/util/AppIconsHelper;
.super Ljava/lang/Object;
.source "AppIconsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/AppIconsHelper$1;
    }
.end annotation


# static fields
.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field public static final TIME_MIN:I = 0xea60

.field private static mAnimatingIconsResourceManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/maml/ResourceManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mOnCreateRootCallback:Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;

.field private static mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

.field private static mThemeChanged:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/maml/util/AppIconsHelper;->mAnimatingIconsResourceManagers:Ljava/util/HashMap;

    .line 43
    new-instance v0, Lmiui/maml/util/AppIconsHelper$1;

    invoke-direct {v0}, Lmiui/maml/util/AppIconsHelper$1;-><init>()V

    sput-object v0, Lmiui/maml/util/AppIconsHelper;->mOnCreateRootCallback:Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkVersion(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 173
    .local v0, "con":Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget v1, v2, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 174
    .local v1, "version":I
    sget v2, Lmiui/maml/util/AppIconsHelper;->mThemeChanged:I

    if-le v1, v2, :cond_0

    .line 175
    invoke-static {}, Lmiui/maml/util/AppIconsHelper;->clearCache()V

    .line 176
    sput v1, Lmiui/maml/util/AppIconsHelper;->mThemeChanged:I

    .line 171
    :cond_0
    return-void
.end method

.method public static cleanUp()V
    .locals 0

    .prologue
    .line 56
    invoke-static {}, Lmiui/maml/RenderThread;->globalThreadStop()V

    .line 55
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    invoke-virtual {v0}, Lmiui/maml/util/RendererCoreCache;->clear()V

    .line 184
    :cond_0
    sget-object v0, Lmiui/maml/util/AppIconsHelper;->mAnimatingIconsResourceManagers:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 185
    sget-object v0, Lmiui/maml/util/AppIconsHelper;->mAnimatingIconsResourceManagers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 180
    :cond_1
    return-void
.end method

.method public static getFancyIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "cacheTime"    # J
    .param p5, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 111
    .local v1, "info":Landroid/content/pm/PackageItemInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 112
    .local v9, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 115
    .end local v1    # "info":Landroid/content/pm/PackageItemInfo;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v7}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 113
    .restart local v1    # "info":Landroid/content/pm/PackageItemInfo;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 69
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "cacheTime"    # J

    .prologue
    .line 73
    new-instance v6, Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "cacheTime"    # J
    .param p5, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 77
    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 84
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 85
    .local v3, "activityName":Ljava/lang/String;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_0

    instance-of v0, p1, Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .end local v3    # "activityName":Ljava/lang/String;
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    move-object v6, p5

    .line 88
    invoke-static/range {v0 .. v6}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 89
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_1

    .line 90
    return-object v7

    .line 86
    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "activityName":Ljava/lang/String;
    :cond_0
    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .local v3, "activityName":Ljava/lang/String;
    goto :goto_0

    .line 91
    .end local v3    # "activityName":Ljava/lang/String;
    .restart local v7    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "cacheTime"    # J

    .prologue
    .line 119
    new-instance v6, Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "cacheTime"    # J
    .param p6, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 123
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;Z)Landroid/graphics/drawable/Drawable;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "cacheTime"    # J
    .param p6, "user"    # Landroid/os/UserHandle;
    .param p7, "onlyMatchFancy"    # Z

    .prologue
    .line 129
    sget-object v6, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    if-nez v6, :cond_0

    .line 130
    new-instance v6, Lmiui/maml/util/RendererCoreCache;

    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v6, v7}, Lmiui/maml/util/RendererCoreCache;-><init>(Landroid/os/Handler;)V

    sput-object v6, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    .line 134
    :cond_0
    :try_start_0
    invoke-static/range {p0 .. p0}, Lmiui/maml/util/AppIconsHelper;->checkVersion(Landroid/content/Context;)V

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 136
    .local v19, "key":Ljava/lang/String;
    const/4 v15, 0x0

    .line 138
    .local v15, "dr":Landroid/graphics/drawable/Drawable;
    invoke-static/range {p1 .. p3}, Lmiui/content/res/IconCustomizer;->getAnimatingIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 139
    .local v14, "animatingIconRelativePath":Ljava/lang/String;
    if-eqz v14, :cond_1

    if-eqz p7, :cond_4

    .line 152
    :cond_1
    sget-object v6, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    move-object/from16 v0, v19

    move-wide/from16 v1, p4

    invoke-virtual {v6, v0, v1, v2}, Lmiui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;J)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v21

    .line 153
    .local v21, "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    if-nez v21, :cond_2

    .line 154
    if-eqz v14, :cond_7

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "fancy/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 157
    .local v17, "fancyIconRelativePath":Ljava/lang/String;
    :goto_0
    sget-object v7, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    new-instance v12, Lmiui/maml/util/FancyIconResourceLoader;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lmiui/maml/util/FancyIconResourceLoader;-><init>(Ljava/lang/String;)V

    sget-object v13, Lmiui/maml/util/AppIconsHelper;->mOnCreateRootCallback:Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;

    move-object/from16 v8, v19

    move-object/from16 v9, p0

    move-wide/from16 v10, p4

    invoke-virtual/range {v7 .. v13}, Lmiui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLmiui/maml/ResourceLoader;Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v21

    .line 159
    .end local v17    # "fancyIconRelativePath":Ljava/lang/String;
    :cond_2
    if-eqz v21, :cond_8

    move-object/from16 v0, v21

    iget-object v6, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lmiui/maml/RendererCore;

    if-eqz v6, :cond_8

    new-instance v5, Lmiui/maml/FancyDrawable;

    move-object/from16 v0, v21

    iget-object v6, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lmiui/maml/RendererCore;

    invoke-direct {v5, v6}, Lmiui/maml/FancyDrawable;-><init>(Lmiui/maml/RendererCore;)V

    .line 161
    .end local v15    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v21    # "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :goto_1
    if-eqz v5, :cond_3

    .line 162
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-static {v0, v5, v1}, Lmiui/maml/util/PortableUtils;->getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    .line 164
    :cond_3
    return-object v5

    .line 140
    .restart local v15    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_4
    sget-object v6, Lmiui/maml/util/AppIconsHelper;->mAnimatingIconsResourceManagers:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/ref/WeakReference;

    .line 141
    .local v20, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/maml/ResourceManager;>;"
    if-nez v20, :cond_6

    const/4 v4, 0x0

    .line 142
    .local v4, "rm":Lmiui/maml/ResourceManager;
    :goto_2
    if-nez v4, :cond_5

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "quiet/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 144
    .local v18, "fileDir":Ljava/lang/String;
    new-instance v4, Lmiui/maml/LifecycleResourceManager;

    .end local v4    # "rm":Lmiui/maml/ResourceManager;
    new-instance v5, Lmiui/maml/util/FancyIconResourceLoader;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lmiui/maml/util/FancyIconResourceLoader;-><init>(Ljava/lang/String;)V

    .line 145
    const-wide/32 v6, 0x36ee80

    const-wide/32 v8, 0x57e40

    .line 144
    invoke-direct/range {v4 .. v9}, Lmiui/maml/LifecycleResourceManager;-><init>(Lmiui/maml/ResourceLoader;JJ)V

    .line 146
    .restart local v4    # "rm":Lmiui/maml/ResourceManager;
    sget-object v6, Lmiui/maml/util/AppIconsHelper;->mAnimatingIconsResourceManagers:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .end local v18    # "fileDir":Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_9

    .line 149
    new-instance v5, Lmiui/maml/AnimatingDrawable;

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object v9, v4

    move-object/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Lmiui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/ResourceManager;Landroid/os/UserHandle;)V

    .local v5, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 141
    .end local v4    # "rm":Lmiui/maml/ResourceManager;
    .end local v5    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/ResourceManager;

    move-object v4, v6

    goto :goto_2

    .line 156
    .end local v20    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/maml/ResourceManager;>;"
    .restart local v21    # "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :cond_7
    invoke-static/range {p1 .. p3}, Lmiui/content/res/IconCustomizer;->getFancyIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .restart local v17    # "fancyIconRelativePath":Ljava/lang/String;
    goto/16 :goto_0

    .line 159
    .end local v17    # "fancyIconRelativePath":Ljava/lang/String;
    :cond_8
    const/4 v5, 0x0

    .end local v15    # "dr":Landroid/graphics/drawable/Drawable;
    .local v5, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 165
    .end local v5    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v14    # "animatingIconRelativePath":Ljava/lang/String;
    .end local v19    # "key":Ljava/lang/String;
    .end local v21    # "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :catch_0
    move-exception v16

    .line 166
    .local v16, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "MAML AppIconsHelper"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v6, 0x0

    return-object v6

    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v4    # "rm":Lmiui/maml/ResourceManager;
    .restart local v14    # "animatingIconRelativePath":Ljava/lang/String;
    .restart local v15    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v19    # "key":Ljava/lang/String;
    .restart local v20    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/maml/ResourceManager;>;"
    :cond_9
    move-object v5, v15

    .local v5, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 60
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "cacheTime"    # J

    .prologue
    .line 64
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 65
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    :goto_0
    invoke-static {p0, v0, p2, p3, p4}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 64
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "cacheTime"    # J

    .prologue
    .line 95
    new-instance v6, Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "cacheTime"    # J
    .param p5, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 101
    .local v1, "info":Landroid/content/pm/PackageItemInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 102
    .local v8, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v1    # "info":Landroid/content/pm/PackageItemInfo;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 105
    invoke-static/range {v0 .. v6}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 103
    .restart local v1    # "info":Landroid/content/pm/PackageItemInfo;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
