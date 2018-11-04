.class public Lmiui/contentcatcher/InterceptorFactory;
.super Ljava/lang/Object;
.source "InterceptorFactory.java"


# static fields
.field private static final CONTENT_CATCHER_PACKAGE_NAME:Ljava/lang/String; = "com.miui.contentcatcher"

.field private static final CONTENT_INJECTOR_CLASS_NAME:Ljava/lang/String; = "com.miui.contentcatcher.Interceptor"

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "InterceptorFactory"

.field private static volatile mPackageInfo:Landroid/content/pm/PackageInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPackageInfoLock"
    .end annotation
.end field

.field private static final mPackageInfoLock:Ljava/lang/Object;

.field private static volatile sInterceptorClazz:Ljava/lang/Class;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "InterceptorFactory.class"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    sput-boolean v0, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    .line 26
    sput-object v1, Lmiui/contentcatcher/InterceptorFactory;->sInterceptorClazz:Ljava/lang/Class;

    .line 29
    sput-object v1, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfoLock:Ljava/lang/Object;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInterceptor(Landroid/app/Activity;)Lcom/miui/internal/contentcatcher/IInterceptor;
    .locals 16
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v15, 0x0

    .line 38
    const/4 v2, 0x0

    .line 40
    .local v2, "contentInjector":Lcom/miui/internal/contentcatcher/IInterceptor;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 41
    .local v10, "start":J
    invoke-static {}, Lmiui/contentcatcher/InterceptorFactory;->initInterceptorClass()Ljava/lang/Class;

    move-result-object v8

    .line 42
    .local v8, "injectorClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v8, :cond_0

    .line 43
    return-object v15

    .line 45
    :cond_0
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const-class v13, Landroid/app/Activity;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v8, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 46
    .local v9, "injectorConstructor":Ljava/lang/reflect/Constructor;
    if-nez v9, :cond_1

    .line 47
    return-object v15

    .line 49
    :cond_1
    invoke-virtual {v9}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v12

    if-nez v12, :cond_2

    .line 50
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 52
    :cond_2
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    invoke-virtual {v9, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/miui/internal/contentcatcher/IInterceptor;

    move-object v2, v0

    .line 53
    .local v2, "contentInjector":Lcom/miui/internal/contentcatcher/IInterceptor;
    sget-boolean v12, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v12, :cond_3

    const-string/jumbo v12, "InterceptorFactory"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "createInterceptor took "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v2    # "contentInjector":Lcom/miui/internal/contentcatcher/IInterceptor;
    .end local v8    # "injectorClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "injectorConstructor":Ljava/lang/reflect/Constructor;
    .end local v10    # "start":J
    :cond_3
    :goto_0
    return-object v2

    .line 62
    :catch_0
    move-exception v3

    .line 63
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "InterceptorFactory"

    const-string/jumbo v13, "Exception"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 60
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 61
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v12, "InterceptorFactory"

    const-string/jumbo v13, "NoSuchMethodException"

    invoke-static {v12, v13, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 58
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v7

    .line 59
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v12, "InterceptorFactory"

    const-string/jumbo v13, "InvocationTargetException"

    invoke-static {v12, v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 56
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v4

    .line 57
    .local v4, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v12, "InterceptorFactory"

    const-string/jumbo v13, "IllegalAccessException"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 54
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v5

    .line 55
    .local v5, "e":Ljava/lang/InstantiationException;
    const-string/jumbo v12, "InterceptorFactory"

    const-string/jumbo v13, "InstantiationException"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getInterceptorPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 69
    sget-boolean v6, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "InterceptorFactory"

    const-string/jumbo v7, "getInterceptorPackageInfo"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    sget-object v6, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v6, :cond_3

    .line 71
    sget-object v7, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfoLock:Ljava/lang/Object;

    monitor-enter v7

    .line 72
    :try_start_0
    sget-object v6, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    .line 74
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 75
    .local v4, "start":J
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 76
    .local v0, "app":Landroid/app/Application;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 77
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-nez v3, :cond_1

    monitor-exit v7

    .line 78
    return-object v8

    .line 80
    :cond_1
    :try_start_2
    const-string/jumbo v6, "com.miui.contentcatcher"

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    sput-object v6, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 81
    sget-boolean v6, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "InterceptorFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getPackageInfo took "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "app":Landroid/app/Application;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :goto_0
    monitor-exit v7

    .line 90
    :cond_3
    sget-object v6, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v6

    .line 84
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e1":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v6, "InterceptorFactory"

    const-string/jumbo v8, "Exception"

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 71
    .end local v2    # "e1":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 82
    :catch_1
    move-exception v1

    .line 83
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string/jumbo v6, "InterceptorFactory"

    const-string/jumbo v8, "NameNotFoundException"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private static initInterceptorClass()Ljava/lang/Class;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 94
    sget-boolean v8, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "InterceptorFactory"

    const-string/jumbo v9, "initInterceptorClass"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    sget-object v8, Lmiui/contentcatcher/InterceptorFactory;->sInterceptorClazz:Ljava/lang/Class;

    if-nez v8, :cond_3

    .line 96
    const-class v9, Lmiui/contentcatcher/InterceptorFactory;

    monitor-enter v9

    .line 97
    :try_start_0
    sget-object v8, Lmiui/contentcatcher/InterceptorFactory;->sInterceptorClazz:Ljava/lang/Class;

    if-nez v8, :cond_2

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 99
    .local v6, "start":J
    invoke-static {}, Lmiui/contentcatcher/InterceptorFactory;->getInterceptorPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 100
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_2

    .line 101
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 103
    .local v4, "initialApplication":Landroid/app/Application;
    :try_start_1
    sget-boolean v8, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v8, :cond_1

    const-string/jumbo v8, "InterceptorFactory"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "packageInfo.packageName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_1
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 106
    const/4 v10, 0x3

    .line 104
    invoke-virtual {v4, v8, v10}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 107
    .local v0, "contentInjectorContext":Landroid/content/Context;
    const-string/jumbo v8, "com.miui.contentcatcher.Interceptor"

    .line 108
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 107
    const/4 v11, 0x1

    invoke-static {v8, v11, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lmiui/contentcatcher/InterceptorFactory;->sInterceptorClazz:Ljava/lang/Class;

    .line 109
    sget-boolean v8, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v8, :cond_2

    const-string/jumbo v8, "InterceptorFactory"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "initInterceptorClass took "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "contentInjectorContext":Landroid/content/Context;
    .end local v4    # "initialApplication":Landroid/app/Application;
    :cond_2
    :goto_0
    monitor-exit v9

    .line 121
    :cond_3
    sget-object v8, Lmiui/contentcatcher/InterceptorFactory;->sInterceptorClazz:Ljava/lang/Class;

    return-object v8

    .line 114
    .restart local v4    # "initialApplication":Landroid/app/Application;
    :catch_0
    move-exception v3

    .line 115
    .local v3, "error":Ljava/lang/Error;
    :try_start_2
    const-string/jumbo v8, "InterceptorFactory"

    const-string/jumbo v10, "Error "

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 96
    .end local v3    # "error":Ljava/lang/Error;
    .end local v4    # "initialApplication":Landroid/app/Application;
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 112
    .restart local v4    # "initialApplication":Landroid/app/Application;
    .restart local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v2

    .line 113
    .local v2, "e1":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v8, "InterceptorFactory"

    const-string/jumbo v10, "Exception "

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 110
    .end local v2    # "e1":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 111
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v8, "InterceptorFactory"

    const-string/jumbo v10, "NameNotFoundException"

    invoke-static {v8, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
