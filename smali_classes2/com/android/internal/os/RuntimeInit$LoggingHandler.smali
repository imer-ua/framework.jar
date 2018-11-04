.class Lcom/android/internal/os/RuntimeInit$LoggingHandler;
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
    name = "LoggingHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/RuntimeInit$LoggingHandler;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$LoggingHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 11
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v6, 0x0

    .line 127
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-get1()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-get0()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v1, v0, :cond_3

    .line 131
    const-string/jumbo v0, "AndroidRuntime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "*** FATAL EXCEPTION IN SYSTEM PROCESS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/os/RuntimeInit;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    const-string/jumbo v0, "sys.is_mem_low_level"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 134
    .local v8, "level":I
    const/4 v0, 0x3

    if-ne v8, v0, :cond_1

    .line 135
    const-string/jumbo v0, "sys.is_mem_low_retried"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, "isRetried":Ljava/lang/String;
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    const-string/jumbo v0, "AndroidRuntime"

    const-string/jumbo v1, "*** NO SPACE FOR SYSTEM, AUTO CLEAN SOME FILES, FIRST TRY."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->removeFileForLowMem()V

    .line 140
    const-string/jumbo v0, "sys.is_mem_low_retried"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v7    # "isRetried":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string/jumbo v1, "system_server"

    .line 150
    const-string/jumbo v2, "system_server"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "*** FATAL EXCEPTION IN SYSTEM PROCESS: "

    const/4 v6, 0x1

    move-object v4, p2

    .line 149
    invoke-static/range {v0 .. v6}, Lcom/android/internal/os/RuntimeInitInjector;->onJE(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Z)V

    .line 125
    .end local v8    # "level":I
    :goto_1
    return-void

    .line 143
    .restart local v7    # "isRetried":Ljava/lang/String;
    .restart local v8    # "level":I
    :cond_2
    const-string/jumbo v0, "AndroidRuntime"

    const-string/jumbo v1, "*** NO SPACE FOR SYSTEM, THE SYSTEM IS DEAD, LAST TRY."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->removeFileForLowMem()V

    goto :goto_0

    .line 153
    .end local v7    # "isRetried":Ljava/lang/String;
    .end local v8    # "level":I
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v9, "message":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "FATAL EXCEPTION: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v10

    .line 156
    .local v10, "processName":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 157
    const-string/jumbo v0, "Process: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_4
    const-string/jumbo v0, "PID: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    const-string/jumbo v0, "AndroidRuntime"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/os/RuntimeInit;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "FATAL EXCEPTION: "

    move-object v4, p2

    .line 162
    invoke-static/range {v0 .. v6}, Lcom/android/internal/os/RuntimeInitInjector;->onJE(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Z)V

    goto :goto_1
.end method
