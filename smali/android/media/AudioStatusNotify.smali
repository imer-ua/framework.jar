.class public Landroid/media/AudioStatusNotify;
.super Ljava/lang/Object;
.source "AudioStatusNotify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioStatusNotify$AppInfo;
    }
.end annotation


# static fields
.field public static final NOTIFY_ID:I = 0x2711

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Landroid/media/AudioStatusNotify;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioStatusNotify;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationInfo(Landroid/content/Context;IZ)Landroid/media/AudioStatusNotify$AppInfo;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "getIcon"    # Z

    .prologue
    .line 55
    const-string/jumbo v9, "activity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 56
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    .line 58
    .local v7, "l":Ljava/util/List;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 59
    .local v5, "i":Ljava/util/Iterator;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 61
    .local v8, "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 62
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 63
    .local v6, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v9, p1, :cond_0

    .line 68
    :try_start_0
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/16 v10, 0x80

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 69
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v1, Landroid/media/AudioStatusNotify$AppInfo;

    invoke-direct {v1}, Landroid/media/AudioStatusNotify$AppInfo;-><init>()V

    .line 70
    .local v1, "appInfo":Landroid/media/AudioStatusNotify$AppInfo;
    iput p1, v1, Landroid/media/AudioStatusNotify$AppInfo;->pid:I

    .line 71
    iget-object v9, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v9, v1, Landroid/media/AudioStatusNotify$AppInfo;->pkg:Ljava/lang/String;

    .line 72
    invoke-virtual {v8, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/media/AudioStatusNotify$AppInfo;->name:Ljava/lang/String;

    .line 73
    if-eqz p2, :cond_1

    .line 74
    invoke-virtual {v8, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v1, Landroid/media/AudioStatusNotify$AppInfo;->icon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_1
    return-object v1

    .line 79
    .end local v1    # "appInfo":Landroid/media/AudioStatusNotify$AppInfo;
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v4

    .line 80
    .local v4, "e":Ljava/lang/Exception;
    sget-object v9, Landroid/media/AudioStatusNotify;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "getApplicationInfo failed"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 77
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 78
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v9, Landroid/media/AudioStatusNotify;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "getApplicationInfo NameNotFoundException failed"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 83
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    const/4 v9, 0x0

    return-object v9
.end method

.method public static sendAudioStatusNotification(Landroid/content/Context;IZ)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "isSpeakerOn"    # Z

    .prologue
    const/4 v6, 0x1

    .line 27
    invoke-static {p0, p1, v6}, Landroid/media/AudioStatusNotify;->getApplicationInfo(Landroid/content/Context;IZ)Landroid/media/AudioStatusNotify$AppInfo;

    move-result-object v0

    .line 28
    .local v0, "appInfo":Landroid/media/AudioStatusNotify$AppInfo;
    if-nez v0, :cond_0

    .line 29
    const-string/jumbo v4, "AudioStatusHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "can not get app info for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void

    .line 33
    :cond_0
    const-string/jumbo v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 36
    .local v1, "manager":Landroid/app/NotificationManager;
    if-eqz p2, :cond_1

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040640

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "summary":Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    iget-object v5, v0, Landroid/media/AudioStatusNotify$AppInfo;->name:Ljava/lang/String;

    .line 42
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 45
    const v5, 0x1080093

    .line 42
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 46
    iget-object v5, v0, Landroid/media/AudioStatusNotify$AppInfo;->icon:Landroid/graphics/Bitmap;

    .line 42
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 48
    const/4 v5, 0x2

    .line 42
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 50
    .local v2, "notification":Landroid/app/Notification;
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 51
    const/16 v4, 0x2711

    invoke-virtual {v1, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 26
    return-void

    .line 39
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v3    # "summary":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104063f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "summary":Ljava/lang/String;
    goto :goto_0
.end method
