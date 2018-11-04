.class public Lmiui/securityspace/CrossUserUtils;
.super Ljava/lang/Object;
.source "CrossUserUtils.java"


# static fields
.field public static final ACTION_XSPACE_RESOLVER_ACTIVITY:Ljava/lang/String; = "miui.intent.action.ACTION_XSPACE_RESOLVER_ACTIVITY"

.field public static final EXTRA_PICKED_USER_ID:Ljava/lang/String; = "android.intent.extra.picked_user_id"

.field public static final EXTRA_XSPACE_RESOLVER_ACTIVITY_AIM_PACKAGE:Ljava/lang/String; = "android.intent.extra.xspace_resolver_activity_aim_package"

.field public static final EXTRA_XSPACE_RESOLVER_ACTIVITY_ORIGINAL_INTENT:Ljava/lang/String; = "android.intent.extra.xspace_resolver_activity_original_intent"

.field private static noCheckContentProviderPermissionPkg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sBitmapCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sISecurityManager:Lmiui/security/ISecurityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-object v0, Lmiui/securityspace/CrossUserUtils;->sISecurityManager:Lmiui/security/ISecurityManager;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/securityspace/CrossUserUtils;->noCheckContentProviderPermissionPkg:Ljava/util/Map;

    .line 138
    sget-object v0, Lmiui/securityspace/CrossUserUtils;->noCheckContentProviderPermissionPkg:Ljava/util/Map;

    const-string/jumbo v1, "com.android.incallui"

    const-string/jumbo v2, "contacts;com.android.contacts"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lmiui/securityspace/CrossUserUtils;->sBitmapCache:Landroid/util/ArrayMap;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addUserIdForUri(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .prologue
    .line 57
    invoke-static {p0, p1}, Lmiui/securityspace/CrossUserUtilsCompat;->addUserIdForUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addUserIdForUri(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    invoke-static {p0, p1, p2, p3}, Lmiui/securityspace/CrossUserUtilsCompat;->addUserIdForUri(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static checkCrossPermission(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "callingPkg"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 157
    if-eqz p0, :cond_0

    sget-object v0, Lmiui/securityspace/CrossUserUtils;->noCheckContentProviderPermissionPkg:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 158
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_0
    return v1
.end method

.method public static checkUidPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p0, p1}, Lmiui/securityspace/CrossUserUtilsCompat;->checkUidPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static createDrawableWithCache(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 182
    sget-object v3, Lmiui/securityspace/CrossUserUtils;->sBitmapCache:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 183
    :try_start_0
    sget-object v2, Lmiui/securityspace/CrossUserUtils;->sBitmapCache:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 184
    .local v0, "cachedRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 187
    :cond_0
    if-eqz v0, :cond_1

    .line 188
    :try_start_1
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->recycleCacheMap()V

    .line 190
    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 190
    invoke-direct {v1, v2, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 192
    .local v1, "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v2, Lmiui/securityspace/CrossUserUtils;->sBitmapCache:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 193
    return-object v1

    .line 182
    .end local v0    # "cachedRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    .end local v1    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getComponentStringWithUserId(Landroid/content/ComponentName;I)Ljava/lang/String;
    .locals 2
    .param p0, "component"    # Landroid/content/ComponentName;
    .param p1, "userId"    # I

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getComponentStringWithUserIdAndTaskId(Landroid/content/ComponentName;II)Ljava/lang/String;
    .locals 2
    .param p0, "component"    # Landroid/content/ComponentName;
    .param p1, "userId"    # I
    .param p2, "taskId"    # I

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentUserId()I
    .locals 2

    .prologue
    .line 95
    :try_start_0
    sget-object v1, Lmiui/securityspace/CrossUserUtils;->sISecurityManager:Lmiui/security/ISecurityManager;

    if-nez v1, :cond_0

    .line 96
    const-string/jumbo v1, "security"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmiui/security/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;

    move-result-object v1

    sput-object v1, Lmiui/securityspace/CrossUserUtils;->sISecurityManager:Lmiui/security/ISecurityManager;

    .line 98
    :cond_0
    sget-object v1, Lmiui/securityspace/CrossUserUtils;->sISecurityManager:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->getCurrentUserId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    const/4 v1, 0x0

    return v1
.end method

.method public static getOriginalAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p0, p1}, Lmiui/securityspace/CrossUserUtilsCompat;->getOriginalAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getSecondSpaceId()I
    .locals 2

    .prologue
    .line 112
    :try_start_0
    sget-object v1, Lmiui/securityspace/CrossUserUtils;->sISecurityManager:Lmiui/security/ISecurityManager;

    if-nez v1, :cond_0

    .line 113
    const-string/jumbo v1, "security"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmiui/security/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;

    move-result-object v1

    sput-object v1, Lmiui/securityspace/CrossUserUtils;->sISecurityManager:Lmiui/security/ISecurityManager;

    .line 115
    :cond_0
    sget-object v1, Lmiui/securityspace/CrossUserUtils;->sISecurityManager:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->getSecondSpaceId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    const/16 v1, -0x2710

    return v1
.end method

.method public static hasAirSpace(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public static hasSecondSpace(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    invoke-static {p0}, Lmiui/securityspace/CrossUserUtilsCompat;->hasSecondSpace(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static hasXSpaceUser(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    invoke-static {p0}, Lmiui/securityspace/CrossUserUtilsCompat;->hasXSpaceUser(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isAirSpace(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public static needCheckUser(Landroid/content/pm/ProviderInfo;Ljava/lang/String;IZ)Z
    .locals 3
    .param p0, "cpi"    # Landroid/content/pm/ProviderInfo;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "checkUser"    # Z

    .prologue
    const/4 v2, 0x0

    .line 143
    if-nez p2, :cond_0

    invoke-static {}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserCalling()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    return v2

    .line 147
    :cond_0
    if-eqz p3, :cond_1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 148
    sget-object v1, Lmiui/securityspace/CrossUserUtils;->noCheckContentProviderPermissionPkg:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    .local v0, "authority":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    return v2

    .line 153
    .end local v0    # "authority":Ljava/lang/String;
    :cond_1
    return p3
.end method

.method private static recycleCacheMap()V
    .locals 4

    .prologue
    .line 199
    sget-object v3, Lmiui/securityspace/CrossUserUtils;->sBitmapCache:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 200
    :try_start_0
    sget-object v2, Lmiui/securityspace/CrossUserUtils;->sBitmapCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 201
    .local v1, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 203
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 199
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    .line 198
    return-void
.end method
