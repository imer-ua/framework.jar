.class Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KillApplicationHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    const/16 v5, 0xa

    .line 179
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-get1()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 205
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 179
    return-void

    .line 180
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    invoke-static {v2}, Lcom/android/internal/os/RuntimeInit;->-set0(Z)Z

    .line 185
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 186
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->stopProfiling()V

    .line 190
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 191
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-get0()Landroid/os/IBinder;

    move-result-object v3

    new-instance v4, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v4, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    .line 190
    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 205
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 176
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "t2":Ljava/lang/Throwable;
    :try_start_2
    instance-of v2, v0, Landroid/os/DeadObjectException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    .line 204
    :goto_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 205
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 197
    :cond_2
    :try_start_3
    const-string/jumbo v2, "AndroidRuntime"

    const-string/jumbo v3, "Error reporting crash"

    invoke-static {v2, v3, v0}, Lcom/android/internal/os/RuntimeInit;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 198
    :catch_1
    move-exception v1

    .local v1, "t3":Ljava/lang/Throwable;
    goto :goto_1

    .line 202
    .end local v0    # "t2":Ljava/lang/Throwable;
    .end local v1    # "t3":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    .line 204
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 205
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 202
    throw v2
.end method
