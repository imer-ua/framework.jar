.class public Lmiui/contentcatcher/InterceptorProxy;
.super Ljava/lang/Object;
.source "InterceptorProxy.java"

# interfaces
.implements Lcom/miui/internal/contentcatcher/IInterceptor;
.implements Lmiui/contentcatcher/IInterceptorContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/InterceptorProxy$H;
    }
.end annotation


# static fields
.field static final DBG:Z

.field static final INTERCEPTOR_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "InterceptorProxy"

.field private static mMiuiApplicationThread:Lmiui/process/IMiuiApplicationThread;

.field private static final sBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSpecialContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sUiHandler:Landroid/os/Handler;

.field private static volatile sWorkHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "InterceptorProxy.class"
    .end annotation
.end field

.field private static volatile sWorkerThread:Landroid/os/HandlerThread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "InterceptorProxy.class"
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;


# direct methods
.method static synthetic -get0(Lmiui/contentcatcher/InterceptorProxy;)Lcom/miui/internal/contentcatcher/IInterceptor;
    .locals 1

    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string/jumbo v0, "interceptor.debug.on"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    .line 36
    const-string/jumbo v0, "interceptor.enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->INTERCEPTOR_ENABLED:Z

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->sUiHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->sBlackList:Ljava/util/ArrayList;

    .line 47
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sBlackList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.home.launcher.Launcher"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sBlackList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.settings.FallbackHome"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sBlackList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.settings.CryptKeeper"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->sSpecialContexts:Ljava/util/ArrayList;

    .line 53
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sSpecialContexts:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.tbs.common.resources.PluginContextWrapper"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->mMiuiApplicationThread:Lmiui/process/IMiuiApplicationThread;

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InterceptorProxy"

    const-string/jumbo v1, "InterceptorProxy create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    new-instance v0, Lmiui/contentcatcher/InterceptorProxy$H;

    invoke-static {}, Lmiui/contentcatcher/InterceptorProxy;->getWorkThread()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lmiui/contentcatcher/InterceptorProxy$H;-><init>(Landroid/os/Looper;Landroid/app/Activity;Lmiui/contentcatcher/IInterceptorContainer;)V

    iput-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    .line 205
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 202
    return-void
.end method

.method public static addMiuiApplication()V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->mMiuiApplicationThread:Lmiui/process/IMiuiApplicationThread;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lmiui/process/MiuiApplicationThread;

    invoke-direct {v0}, Lmiui/process/MiuiApplicationThread;-><init>()V

    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->mMiuiApplicationThread:Lmiui/process/IMiuiApplicationThread;

    .line 78
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->mMiuiApplicationThread:Lmiui/process/IMiuiApplicationThread;

    invoke-static {v0}, Lmiui/process/ProcessManager;->addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;)V

    .line 75
    :cond_0
    return-void
.end method

.method public static checkAndInitWebView(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/contentcatcher/InterceptorProxy;->checkAndInitWebView(Landroid/view/View;Landroid/os/Looper;)Z

    move-result v0

    return v0
.end method

.method public static checkAndInitWebView(Landroid/view/View;Landroid/os/Looper;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 182
    :try_start_0
    invoke-static {p0}, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->isWebView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    new-instance v1, Lmiui/contentcatcher/InterceptorProxy$1;

    invoke-direct {v1, p0}, Lmiui/contentcatcher/InterceptorProxy$1;-><init>(Landroid/view/View;)V

    invoke-static {v1, p1}, Lmiui/contentcatcher/InterceptorProxy;->postToUiHandler(Ljava/lang/Runnable;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    const/4 v1, 0x1

    return v1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ContentCatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAndInitWebView-Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static create(Landroid/app/Activity;)Lmiui/contentcatcher/InterceptorProxy;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-static {}, Lmiui/contentcatcher/InterceptorProxy;->addMiuiApplication()V

    .line 61
    sget-boolean v1, Lmiui/contentcatcher/InterceptorProxy;->INTERCEPTOR_ENABLED:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1

    .line 71
    :cond_0
    return-object v3

    .line 61
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    sget-object v1, Lmiui/contentcatcher/InterceptorProxy;->sBlackList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-static {}, Lmiui/contentcatcher/InterceptorProxy;->getWorkThread()Landroid/os/HandlerThread;

    move-result-object v0

    .line 64
    .local v0, "workThread":Ljava/lang/Thread;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    new-instance v1, Lmiui/contentcatcher/InterceptorProxy;

    invoke-direct {v1, p0}, Lmiui/contentcatcher/InterceptorProxy;-><init>(Landroid/app/Activity;)V

    return-object v1

    .line 67
    :cond_2
    const-string/jumbo v1, "InterceptorProxy"

    const-string/jumbo v2, "Failed to create InterceptorProxy!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-object v3
.end method

.method public static getAttachedActivity(Landroid/view/View;)Landroid/app/Activity;
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 124
    if-nez p0, :cond_0

    .line 125
    return-object v5

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 128
    .local v3, "viewContext":Landroid/content/Context;
    :cond_1
    if-eqz v3, :cond_2

    instance-of v4, v3, Landroid/app/Activity;

    if-eqz v4, :cond_3

    .line 151
    :cond_2
    :goto_0
    if-eqz v3, :cond_6

    instance-of v4, v3, Landroid/app/Activity;

    if-eqz v4, :cond_6

    .line 152
    nop

    nop

    .end local v3    # "viewContext":Landroid/content/Context;
    return-object v3

    .line 129
    .restart local v3    # "viewContext":Landroid/content/Context;
    :cond_3
    instance-of v4, v3, Landroid/content/ContextWrapper;

    if-eqz v4, :cond_2

    .line 130
    move-object v2, v3

    .line 131
    .local v2, "preViewContext":Landroid/content/Context;
    nop

    nop

    .end local v3    # "viewContext":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    .line 132
    .restart local v3    # "viewContext":Landroid/content/Context;
    if-ne v2, v3, :cond_1

    .line 133
    sget-object v4, Lmiui/contentcatcher/InterceptorProxy;->sSpecialContexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 135
    const-string/jumbo v4, "mBase"

    const-class v6, Landroid/content/Context;

    .line 134
    invoke-static {v3, v4, v6}, Lmiui/util/ReflectionUtils;->tryGetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v1

    .line 136
    .local v1, "baseRef":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Landroid/content/Context;>;"
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    move-object v0, v4

    .line 137
    .local v0, "baseContext":Landroid/content/Context;
    :goto_1
    if-eqz v0, :cond_5

    if-eq v3, v0, :cond_5

    .line 138
    const-string/jumbo v4, "InterceptorProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Get New base context : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 139
    const-string/jumbo v7, " and Cur base context is:"

    .line 138
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 139
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 138
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    move-object v3, v0

    .line 142
    goto :goto_0

    .end local v0    # "baseContext":Landroid/content/Context;
    :cond_4
    move-object v0, v5

    .line 136
    goto :goto_1

    .line 145
    .end local v1    # "baseRef":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Landroid/content/Context;>;"
    :cond_5
    return-object v5

    .line 154
    .end local v2    # "preViewContext":Landroid/content/Context;
    :cond_6
    return-object v5
.end method

.method public static getWorkHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 96
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 97
    const-class v1, Lmiui/contentcatcher/InterceptorProxy;

    monitor-enter v1

    .line 98
    :try_start_0
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lmiui/contentcatcher/InterceptorProxy;->getWorkThread()Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->sWorkHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 103
    :cond_1
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sWorkHandler:Landroid/os/Handler;

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getWorkThread()Landroid/os/HandlerThread;
    .locals 4

    .prologue
    .line 83
    sget-object v1, Lmiui/contentcatcher/InterceptorProxy;->sWorkerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    .line 84
    const-class v2, Lmiui/contentcatcher/InterceptorProxy;

    monitor-enter v2

    .line 85
    :try_start_0
    sget-object v1, Lmiui/contentcatcher/InterceptorProxy;->sWorkerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Binder:interceptor"

    const/4 v3, -0x4

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 87
    .local v0, "workerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 88
    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->sWorkerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 92
    :cond_1
    sget-object v1, Lmiui/contentcatcher/InterceptorProxy;->sWorkerThread:Landroid/os/HandlerThread;

    return-object v1

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static postToUiHandler(Ljava/lang/Runnable;JLandroid/os/Looper;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delayMillis"    # J
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 166
    if-eqz p0, :cond_1

    .line 167
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sUiHandler:Landroid/os/Handler;

    .line 168
    .local v0, "handler":Landroid/os/Handler;
    if-eqz p3, :cond_0

    .line 169
    new-instance v0, Landroid/os/Handler;

    .end local v0    # "handler":Landroid/os/Handler;
    invoke-direct {v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 171
    .restart local v0    # "handler":Landroid/os/Handler;
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    return-void
.end method

.method public static postToUiHandler(Ljava/lang/Runnable;Landroid/os/Looper;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 162
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Lmiui/contentcatcher/InterceptorProxy;->postToUiHandler(Ljava/lang/Runnable;JLandroid/os/Looper;)V

    .line 161
    return-void
.end method

.method public static postToWorkHandler(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 107
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lmiui/contentcatcher/InterceptorProxy;->postToWorkHandler(Ljava/lang/Runnable;J)V

    .line 106
    return-void
.end method

.method public static postToWorkHandler(Ljava/lang/Runnable;J)V
    .locals 5
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delayMillis"    # J

    .prologue
    .line 111
    if-eqz p0, :cond_0

    .line 113
    :try_start_0
    invoke-static {}, Lmiui/contentcatcher/InterceptorProxy;->getWorkHandler()Landroid/os/Handler;

    move-result-object v1

    .line 114
    .local v1, "workHandler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v1, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v1    # "workHandler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "InterceptorProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "postToWorkHandler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;Landroid/view/View;Landroid/app/Activity;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "attachedActivity"    # Landroid/app/Activity;

    .prologue
    .line 253
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    if-eqz v0, :cond_1

    .line 254
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InterceptorProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dispatchKeyEvent event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " rootView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/internal/contentcatcher/IInterceptor;->dispatchKeyEvent(Landroid/view/KeyEvent;Landroid/view/View;Landroid/app/Activity;)Z

    move-result v0

    return v0

    .line 257
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/app/Activity;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "attachedActivity"    # Landroid/app/Activity;

    .prologue
    .line 246
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/internal/contentcatcher/IInterceptor;->dispatchTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/app/Activity;)Z

    move-result v0

    return v0

    .line 249
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    return-object v0
.end method

.method public getUiHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public notifyActivityCreate()V
    .locals 2

    .prologue
    .line 209
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InterceptorProxy"

    const-string/jumbo v1, "notifyActivityCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 208
    return-void
.end method

.method public notifyActivityDestroy()V
    .locals 2

    .prologue
    .line 234
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InterceptorProxy"

    const-string/jumbo v1, "notifyActivityDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 233
    return-void
.end method

.method public notifyActivityPause()V
    .locals 2

    .prologue
    .line 224
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InterceptorProxy"

    const-string/jumbo v1, "notifyActivityPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 223
    return-void
.end method

.method public notifyActivityResume()V
    .locals 2

    .prologue
    .line 219
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InterceptorProxy"

    const-string/jumbo v1, "notifyActivityResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 218
    return-void
.end method

.method public notifyActivityStart()V
    .locals 2

    .prologue
    .line 214
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InterceptorProxy"

    const-string/jumbo v1, "notifyActivityStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 213
    return-void
.end method

.method public notifyActivityStop()V
    .locals 2

    .prologue
    .line 229
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InterceptorProxy"

    const-string/jumbo v1, "notifyActivityStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 228
    return-void
.end method

.method public notifyContentChange()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    invoke-interface {v0}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyContentChange()V

    .line 238
    :cond_0
    return-void
.end method

.method public notifyWebView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isLoad"    # Z

    .prologue
    .line 279
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InterceptorProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyWebView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyWebView(Landroid/view/View;Z)V

    .line 278
    :cond_1
    return-void
.end method

.method public setInterceptor(Lcom/miui/internal/contentcatcher/IInterceptor;)V
    .locals 0
    .param p1, "interceptor"    # Lcom/miui/internal/contentcatcher/IInterceptor;

    .prologue
    .line 287
    iput-object p1, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    .line 286
    return-void
.end method

.method public setWebView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isLoad"    # Z

    .prologue
    .line 262
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InterceptorProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWebView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sUiHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/contentcatcher/InterceptorProxy$2;

    invoke-direct {v1, p0, p2, p1}, Lmiui/contentcatcher/InterceptorProxy$2;-><init>(Lmiui/contentcatcher/InterceptorProxy;ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    return-void
.end method
