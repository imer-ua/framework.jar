.class public Lmiui/util/NotificationFilterHelper;
.super Ljava/lang/Object;
.source "NotificationFilterHelper.java"


# static fields
.field private static final APP_NOTIFICATION:Ljava/lang/String; = "app_notification"

.field private static final CHANNEL_FLAG:Ljava/lang/String; = "_channel_flag"

.field private static final CHANNEL_IMPORTANCE_BACKUP:Ljava/lang/String; = "_channel_importance_backup"

.field public static final DISABLE_ALL:I = 0x3

.field public static final DISABLE_FLOATING:I = 0x1

.field public static final ENABLE:I = 0x2

.field public static final IMPORTANCE:Ljava/lang/String; = "_importance"

.field public static final IMPORTANCE_DEFAULT:I = 0x0

.field public static final IMPORTANCE_HIGH:I = 0x1

.field public static final IMPORTANCE_LOW:I = -0x1

.field public static final KEYGUARD:Ljava/lang/String; = "_keyguard"

.field private static final KEY_FLOAT_VERSION:Ljava/lang/String; = "sysui_float_version"

.field public static final KEY_FLOAT_WHITELIST:Ljava/lang/String; = "float_whitelist"

.field private static final KEY_KEYGUARD_VERSION:Ljava/lang/String; = "sysui_keyguard_version"

.field public static final KEY_KEYGUARD_WHITELIST:Ljava/lang/String; = "keyguard_whitelist"

.field public static final LED:Ljava/lang/String; = "_led"

.field public static final MESSAGE:Ljava/lang/String; = "_message"

.field public static final NONE:I = 0x0

.field public static final SOUND:Ljava/lang/String; = "_sound"

.field private static final SYSTEMUI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "NotificationFilterHelper"

.field public static final VIBRATE:Ljava/lang/String; = "_vibrate"

.field private static nm:Landroid/app/INotificationManager;

.field private static sFloatVersionCode:J

.field private static sFloatWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsSystemApp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sKeyguardVersionCode:J

.field private static sKeyguardWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNotificationCanBeBlockedList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNotificationCannotSetImportanceList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNotificationForcedEnabledChannelList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sNotificationForcedEnabledPkgList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lmiui/util/NotificationFilterHelper;->sFloatWhiteList:Ljava/util/ArrayList;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lmiui/util/NotificationFilterHelper;->sKeyguardWhiteList:Ljava/util/ArrayList;

    .line 41
    sput-wide v2, Lmiui/util/NotificationFilterHelper;->sFloatVersionCode:J

    .line 42
    sput-wide v2, Lmiui/util/NotificationFilterHelper;->sKeyguardVersionCode:J

    .line 75
    const-string/jumbo v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 74
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    sput-object v1, Lmiui/util/NotificationFilterHelper;->nm:Landroid/app/INotificationManager;

    .line 272
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/util/NotificationFilterHelper;->sIsSystemApp:Ljava/util/HashMap;

    .line 320
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationCanBeBlockedList:Ljava/util/HashSet;

    .line 321
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    .line 322
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledChannelList:Ljava/util/HashMap;

    .line 323
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationCannotSetImportanceList:Ljava/util/HashSet;

    .line 326
    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationCanBeBlockedList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.miui.fm"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationCanBeBlockedList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.miui.antispam"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationCanBeBlockedList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.miui.securitycenter"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.xiaomi.xmsfdisable"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.android.incallui"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.android.deskclock"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.android.mms"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.android.bluetooth"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 336
    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.android.updater"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.android.providers.downloads"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.miui.hybrid"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 341
    .local v0, "channelList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledChannelList:Ljava/util/HashMap;

    const-string/jumbo v2, "com.miui.securitycenter"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationCannotSetImportanceList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.android.incallui"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lmiui/util/NotificationFilterHelper;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "appUid"    # I

    .prologue
    .line 207
    const/4 v0, 0x1

    .line 209
    .local v0, "enabledNotice":Z
    :try_start_0
    sget-object v2, Lmiui/util/NotificationFilterHelper;->nm:Landroid/app/INotificationManager;

    invoke-interface {v2, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 212
    .end local v0    # "enabledNotice":Z
    :goto_0
    return v0

    .line 210
    .restart local v0    # "enabledNotice":Z
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static canNotificationSetImportance(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 356
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationCannotSetImportanceList:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static canSendNotifications(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 98
    invoke-static {p0, p1, v0}, Lmiui/util/NotificationFilterHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canSystemNotificationBeBlocked(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method private static containNonBlockableChannel(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 311
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledChannelList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static enableNotifications(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "appUid"    # I
    .param p3, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 220
    if-nez p3, :cond_0

    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->isNotificationForcedFor(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    return-void

    .line 224
    :cond_0
    :try_start_0
    invoke-static {p2}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 225
    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-static {p0, v4, p1, p3}, Lmiui/util/NotificationFilterHelper;->resolveAssociatedUid(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Z)V

    .line 230
    :cond_1
    :goto_0
    sget-object v4, Lmiui/util/NotificationFilterHelper;->nm:Landroid/app/INotificationManager;

    invoke-interface {v4, p1, p2, p3}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :try_start_1
    sget-boolean v4, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v4, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_3

    .line 235
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 236
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_3

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_3

    .line 237
    if-eqz p3, :cond_5

    :goto_1
    const/16 v4, 0xb

    invoke-static {p0, v4, p1, v3}, Landroid/miui/AppOpsUtils;->setMode(Landroid/content/Context;ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    :goto_2
    return-void

    .line 226
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    if-nez v4, :cond_1

    .line 227
    invoke-static {p0, p1}, Lmiui/securityspace/XSpaceUserHandle;->isAppInXSpace(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 226
    if-eqz v4, :cond_1

    .line 228
    new-instance v4, Landroid/os/UserHandle;

    const/16 v5, 0x3e7

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {p0, v4, p1, p3}, Lmiui/util/NotificationFilterHelper;->resolveAssociatedUid(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_2

    .line 238
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    .line 241
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2
.end method

.method public static enableNotifications(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 216
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lmiui/util/NotificationFilterHelper;->enableNotifications(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 215
    return-void
.end method

.method private static enableStatusIcon(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 269
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 268
    return-void
.end method

.method public static enableStatusIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 265
    const-string/jumbo v2, "%s_%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v1

    const-string/jumbo v4, "_channel_flag"

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_0

    :goto_0
    invoke-static {p0, v2, v0}, Lmiui/util/NotificationFilterHelper;->enableStatusIcon(Landroid/content/Context;Ljava/lang/String;I)V

    .line 264
    return-void

    :cond_0
    move v0, v1

    .line 265
    goto :goto_0
.end method

.method public static enableStatusIcon(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 261
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {p0, p1, v0}, Lmiui/util/NotificationFilterHelper;->enableStatusIcon(Landroid/content/Context;Ljava/lang/String;I)V

    .line 260
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getAppFlag(Landroid/content/Context;Ljava/lang/String;IZ)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "checkSystemSetting"    # Z

    .prologue
    const/4 v3, 0x0

    .line 106
    if-eqz p3, :cond_2

    invoke-static {p0, p1, p2}, Lmiui/util/NotificationFilterHelper;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    .line 107
    .local v0, "enabledNotice":Z
    :goto_0
    const/4 v1, 0x0

    .line 108
    .local v1, "flag":I
    if-eqz v0, :cond_3

    .line 109
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 110
    if-nez v1, :cond_0

    .line 112
    invoke-static {p0, p1, v3}, Lmiui/util/NotificationFilterHelper;->getDefaultFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    .line 114
    :cond_0
    if-nez v1, :cond_1

    .line 115
    const/4 v1, 0x1

    .line 121
    :cond_1
    :goto_1
    return v1

    .line 106
    .end local v0    # "enabledNotice":Z
    .end local v1    # "flag":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 119
    .restart local v0    # "enabledNotice":Z
    .restart local v1    # "flag":I
    :cond_3
    const/4 v1, 0x3

    goto :goto_1
.end method

.method public static getAppFlag(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "checkSystemSetting"    # Z

    .prologue
    .line 102
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lmiui/util/NotificationFilterHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method private static getAppUid(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 360
    const/4 v2, 0x0

    .line 361
    .local v2, "uid":I
    const/4 v1, 0x0

    .line 363
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 364
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 365
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static getBackupChannelImportance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 446
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "_channel_importance_backup"

    invoke-static {p1, p2, v1}, Lmiui/util/NotificationFilterHelper;->getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getChannelFlag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channel"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "checkSystemSetting"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 125
    if-eqz p4, :cond_2

    invoke-static {p0, p1, p3}, Lmiui/util/NotificationFilterHelper;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    .line 126
    .local v0, "enabledNotice":Z
    :goto_0
    const/4 v1, 0x0

    .line 127
    .local v1, "flag":I
    if-eqz v0, :cond_3

    .line 128
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "%s_%s%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v7

    aput-object p2, v5, v2

    const-string/jumbo v2, "_channel_flag"

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 129
    if-nez v1, :cond_0

    .line 131
    invoke-static {p0, p1, v7}, Lmiui/util/NotificationFilterHelper;->getDefaultFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    .line 133
    :cond_0
    if-nez v1, :cond_1

    .line 134
    const/4 v1, 0x1

    .line 140
    :cond_1
    :goto_1
    return v1

    .end local v0    # "enabledNotice":Z
    .end local v1    # "flag":I
    :cond_2
    move v0, v2

    .line 125
    goto :goto_0

    .line 138
    .restart local v0    # "enabledNotice":Z
    .restart local v1    # "flag":I
    :cond_3
    const/4 v1, 0x3

    goto :goto_1
.end method

.method private static getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 454
    const-string/jumbo v0, "%s_%s%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomSoundUri(Landroid/content/Context;Landroid/net/Uri;Landroid/service/notification/StatusBarNotification;)Landroid/net/Uri;
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "soundUri"    # Landroid/net/Uri;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 372
    return-object p1
.end method

.method private static getDefaultFlag(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "isInKeyguardMode"    # Z

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 144
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->initFilterList(Landroid/content/Context;)V

    .line 145
    if-nez p2, :cond_1

    .line 146
    sget-object v2, Lmiui/util/NotificationFilterHelper;->sFloatWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 148
    :cond_1
    sget-object v2, Lmiui/util/NotificationFilterHelper;->sKeyguardWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static getImportance(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 430
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_importance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getImportance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 438
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "_importance"

    invoke-static {p1, p2, v1}, Lmiui/util/NotificationFilterHelper;->getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNotificationForcedEnabledList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    return-object v0
.end method

.method private static getRealPackageName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 1
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 376
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v0}, Landroid/app/MiuiNotification;->getTargetPkg()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    :goto_0
    return-object v0

    .line 378
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v0}, Landroid/app/MiuiNotification;->getTargetPkg()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    :try_start_0
    const-string/jumbo v1, "com.android.systemui"

    .line 82
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v3, 0x2

    .line 81
    invoke-virtual {p0, v1, v3, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 87
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    :try_start_1
    const-string/jumbo v1, "com.android.systemui"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p0

    .line 94
    :cond_1
    :goto_1
    const-string/jumbo v1, "app_notification"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, "NotificationFilterHelper"

    const-string/jumbo v2, "Can\'t find pkg: com.android.systemui"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 90
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 91
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private static getWhiteListFromCache(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    const/4 v1, 0x0

    .line 185
    .local v1, "whiteList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 189
    .end local v1    # "whiteList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 186
    .restart local v1    # "whiteList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "NotificationFilterHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "error get whiteList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static initFilterList(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v10, -0x1

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "sysui_float_version"

    invoke-static {v7, v8, v10, v11}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 154
    .local v4, "latestVersion":J
    sget-object v7, Lmiui/util/NotificationFilterHelper;->sFloatWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    sget-wide v8, Lmiui/util/NotificationFilterHelper;->sFloatVersionCode:J

    cmp-long v7, v4, v8

    if-eqz v7, :cond_2

    .line 155
    :cond_0
    sput-wide v4, Lmiui/util/NotificationFilterHelper;->sFloatVersionCode:J

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v1, "floatWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v7, "float_whitelist"

    invoke-static {p0, v7}, Lmiui/util/NotificationFilterHelper;->getWhiteListFromCache(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 158
    .local v0, "floatSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 161
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1106000e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, "whitelist":[Ljava/lang/String;
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 164
    .end local v6    # "whitelist":[Ljava/lang/String;
    :goto_0
    sput-object v1, Lmiui/util/NotificationFilterHelper;->sFloatWhiteList:Ljava/util/ArrayList;

    .line 167
    .end local v0    # "floatSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "floatWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "sysui_keyguard_version"

    invoke-static {v7, v8, v10, v11}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 168
    sget-object v7, Lmiui/util/NotificationFilterHelper;->sKeyguardWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    sget-wide v8, Lmiui/util/NotificationFilterHelper;->sKeyguardVersionCode:J

    cmp-long v7, v4, v8

    if-eqz v7, :cond_5

    .line 169
    :cond_3
    sput-wide v4, Lmiui/util/NotificationFilterHelper;->sKeyguardVersionCode:J

    .line 170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v3, "keyguardWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v7, "keyguard_whitelist"

    invoke-static {p0, v7}, Lmiui/util/NotificationFilterHelper;->getWhiteListFromCache(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 172
    .local v2, "keyguardSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 175
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1106000f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 176
    .restart local v6    # "whitelist":[Ljava/lang/String;
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 178
    .end local v6    # "whitelist":[Ljava/lang/String;
    :goto_1
    sput-object v3, Lmiui/util/NotificationFilterHelper;->sKeyguardWhiteList:Ljava/util/ArrayList;

    .line 152
    .end local v2    # "keyguardSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "keyguardWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    return-void

    .line 159
    .restart local v0    # "floatSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "floatWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 173
    .end local v0    # "floatSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "floatWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "keyguardSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "keyguardWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public static isAllowed(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 382
    invoke-static {p1}, Lmiui/util/NotificationInjector;->getChannelId(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "channelId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "_message"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    :cond_0
    invoke-static {p1}, Lmiui/util/NotificationFilterHelper;->getRealPackageName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 384
    :cond_1
    invoke-static {p1}, Lmiui/util/NotificationFilterHelper;->getRealPackageName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0, p2}, Lmiui/util/NotificationFilterHelper;->isAllowedWithChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 391
    const-string/jumbo v4, "_keyguard"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "_sound"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 392
    :cond_0
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 394
    :cond_1
    const-string/jumbo v4, "_led"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 395
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 400
    :cond_2
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 401
    .local v1, "preferences":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_8

    .line 406
    :cond_3
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2

    .line 393
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_4
    invoke-static {p0, p1, v2}, Lmiui/util/NotificationFilterHelper;->getDefaultFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v4

    if-ne v4, v6, :cond_5

    :goto_0
    return v2

    :cond_5
    move v2, v3

    goto :goto_0

    .line 396
    :cond_6
    invoke-static {p0, p1, v3}, Lmiui/util/NotificationFilterHelper;->getDefaultFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v4

    if-ne v4, v6, :cond_7

    :goto_1
    return v2

    :cond_7
    move v2, v3

    goto :goto_1

    .line 403
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_8
    const-string/jumbo v3, "NotificationFilterHelper"

    const-string/jumbo v4, "got non boolean values, return true"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return v2
.end method

.method public static isAllowedWithChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 411
    const-string/jumbo v2, "_keyguard"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "_sound"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 412
    :cond_0
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {p1, p2, p3}, Lmiui/util/NotificationFilterHelper;->getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 414
    :cond_1
    const-string/jumbo v2, "_led"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 415
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {p1, p2, p3}, Lmiui/util/NotificationFilterHelper;->getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 418
    :cond_2
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {p1, p2, p3}, Lmiui/util/NotificationFilterHelper;->getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 413
    :cond_3
    invoke-static {p0, p1, v0}, Lmiui/util/NotificationFilterHelper;->getDefaultFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v2

    if-ne v2, v4, :cond_4

    :goto_0
    return v0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 416
    :cond_5
    invoke-static {p0, p1, v1}, Lmiui/util/NotificationFilterHelper;->getDefaultFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v2

    if-ne v2, v4, :cond_6

    :goto_1
    return v0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private static isNotificationForcedEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 295
    sget-object v2, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    return v4

    .line 297
    :cond_0
    invoke-static {p1}, Lmiui/util/NotificationFilterHelper;->canSystemNotificationBeBlocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    return v3

    .line 300
    :cond_1
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 301
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 302
    .local v0, "appId":I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_2

    .line 303
    const/16 v2, 0x3e9

    if-ne v0, v2, :cond_3

    .line 305
    :cond_2
    return v4

    .line 304
    :cond_3
    if-eqz v0, :cond_2

    .line 307
    return v3
.end method

.method public static isNotificationForcedEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->isNotificationForcedEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledChannelList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 317
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledChannelList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 315
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 316
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotificationForcedFor(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static isSystemApp(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v3, 0x0

    .line 274
    sget-object v4, Lmiui/util/NotificationFilterHelper;->sIsSystemApp:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 275
    .local v2, "isSystemApp":Ljava/lang/Boolean;
    if-nez v2, :cond_1

    .line 276
    const/4 v1, 0x0

    .line 278
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 281
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v1, :cond_0

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 282
    sget-object v3, Lmiui/util/NotificationFilterHelper;->sIsSystemApp:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 279
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private static resolveAssociatedUid(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .prologue
    .line 250
    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {p0, p2, v4, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 251
    .local v2, "targetContext":Landroid/content/Context;
    invoke-static {v2, p2}, Lmiui/util/NotificationFilterHelper;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 252
    .local v3, "uid":I
    sget-object v4, Lmiui/util/NotificationFilterHelper;->nm:Landroid/app/INotificationManager;

    invoke-interface {v4, p2, v3, p3}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v2    # "targetContext":Landroid/content/Context;
    .end local v3    # "uid":I
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "NotificationFilterHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t find pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 253
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 254
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "NotificationFilterHelper"

    const-string/jumbo v5, "Can\'t talk to NotificationManagerService"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static saveBackupChannelImportance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "importance"    # I

    .prologue
    .line 450
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "_channel_importance_backup"

    invoke-static {p1, p2, v1}, Lmiui/util/NotificationFilterHelper;->getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 449
    return-void
.end method

.method public static setAllow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "allow"    # Z

    .prologue
    .line 434
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lmiui/util/NotificationFilterHelper;->getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 433
    return-void
.end method

.method public static setAllow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "allow"    # Z

    .prologue
    .line 422
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 421
    return-void
.end method

.method public static setImportance(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "importance"    # I

    .prologue
    .line 426
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_importance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 425
    return-void
.end method

.method public static setImportance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "importance"    # I

    .prologue
    .line 442
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "_importance"

    invoke-static {p1, p2, v1}, Lmiui/util/NotificationFilterHelper;->getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 441
    return-void
.end method

.method public static updateFloatWhiteList(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sysui_float_version"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 194
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "float_whitelist"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 192
    return-void
.end method

.method public static updateKeyguardWhitelist(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sysui_keyguard_version"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 199
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "keyguard_whitelist"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 197
    return-void
.end method
