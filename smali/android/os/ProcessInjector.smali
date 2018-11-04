.class Landroid/os/ProcessInjector;
.super Ljava/lang/Object;
.source "ProcessInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProcessInjector"

.field private static mAm:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static reportKillProcessEvent(I)V
    .locals 8
    .param p0, "killedPid"    # I

    .prologue
    .line 17
    :try_start_0
    sget-object v3, Landroid/os/ProcessInjector;->mAm:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 18
    const-string/jumbo v3, "android.app.ActivityManagerNative"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 19
    const-string/jumbo v4, "getDefault"

    .line 18
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 20
    .local v1, "getDefault":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Landroid/os/ProcessInjector;->mAm:Ljava/lang/Object;

    .line 22
    .end local v1    # "getDefault":Ljava/lang/reflect/Method;
    :cond_0
    sget-object v3, Landroid/os/ProcessInjector;->mAm:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 23
    const-string/jumbo v4, "reportKillProcessEvent"

    .line 22
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    .line 23
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 22
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 24
    .local v2, "report":Ljava/lang/reflect/Method;
    sget-object v3, Landroid/os/ProcessInjector;->mAm:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .end local v2    # "report":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ProcessInjector"

    const-string/jumbo v4, "error while reportKillProcessEvent to system server!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
