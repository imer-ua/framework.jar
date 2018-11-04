.class public Landroid/os/MiuiProcess;
.super Ljava/lang/Object;
.source "MiuiProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MiuiProcess$1;,
        Landroid/os/MiuiProcess$PriorityState;
    }
.end annotation


# static fields
.field public static final BACKUP_UID:I = 0x2648

.field public static final FINDDEVICE_UID:I = 0x2652

.field public static final SCHED_RESET_ON_FORK:I = 0x40000000

.field private static final TAG:Ljava/lang/String; = "LockBoost"

.field public static final THEME_UID:I = 0x2649

.field public static final THREAD_GROUP_DEFAULT:I = -0x1

.field public static final THREAD_GROUP_FG_LIMITED:I = 0xa

.field public static final THREAD_GROUP_FG_SERVICE:I = 0x9

.field public static final THREAD_GROUP_FOREGROUND:I = 0x1

.field public static final THREAD_GROUP_TOP_APP:I = 0x5

.field public static final UPDATER_UID:I = 0x264a

.field static sThreadPriorityState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/MiuiProcess$PriorityState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Landroid/os/MiuiProcess$1;

    invoke-direct {v0}, Landroid/os/MiuiProcess$1;-><init>()V

    sput-object v0, Landroid/os/MiuiProcess;->sThreadPriorityState:Ljava/lang/ThreadLocal;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static boostPriorityForLockedSection()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 65
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    .line 66
    .local v2, "tid":I
    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 67
    .local v0, "prevPriority":I
    const-string/jumbo v3, "LockBoost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", prevPriority="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v3, Landroid/os/MiuiProcess;->sThreadPriorityState:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/MiuiProcess$PriorityState;

    .line 69
    .local v1, "state":Landroid/os/MiuiProcess$PriorityState;
    invoke-static {v1}, Landroid/os/MiuiProcess$PriorityState;->-get1(Landroid/os/MiuiProcess$PriorityState;)I

    move-result v3

    if-nez v3, :cond_0

    if-le v0, v6, :cond_0

    .line 70
    invoke-static {v1, v0}, Landroid/os/MiuiProcess$PriorityState;->-set0(Landroid/os/MiuiProcess$PriorityState;I)I

    .line 71
    invoke-static {v2, v6}, Landroid/os/Process;->setThreadPriority(II)V

    .line 72
    const-string/jumbo v3, "LockBoost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "thread tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " priority is boosted to -2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    invoke-static {v1}, Landroid/os/MiuiProcess$PriorityState;->-get1(Landroid/os/MiuiProcess$PriorityState;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Landroid/os/MiuiProcess$PriorityState;->-set1(Landroid/os/MiuiProcess$PriorityState;I)I

    .line 64
    return-void
.end method

.method public static resetPriorityAfterLockedSection()V
    .locals 4

    .prologue
    .line 82
    sget-object v1, Landroid/os/MiuiProcess;->sThreadPriorityState:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MiuiProcess$PriorityState;

    .line 83
    .local v0, "state":Landroid/os/MiuiProcess$PriorityState;
    invoke-static {v0}, Landroid/os/MiuiProcess$PriorityState;->-get1(Landroid/os/MiuiProcess$PriorityState;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Landroid/os/MiuiProcess$PriorityState;->-set1(Landroid/os/MiuiProcess$PriorityState;I)I

    .line 84
    invoke-static {v0}, Landroid/os/MiuiProcess$PriorityState;->-get1(Landroid/os/MiuiProcess$PriorityState;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/os/MiuiProcess$PriorityState;->-get0(Landroid/os/MiuiProcess$PriorityState;)I

    move-result v1

    const/4 v2, -0x2

    if-le v1, v2, :cond_0

    .line 85
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v0}, Landroid/os/MiuiProcess$PriorityState;->-get0(Landroid/os/MiuiProcess$PriorityState;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V

    .line 86
    const-string/jumbo v1, "LockBoost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "thread tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " priority is reset to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/os/MiuiProcess$PriorityState;->-get0(Landroid/os/MiuiProcess$PriorityState;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    return-void
.end method

.method public static setThreadPriority(IILjava/lang/String;)V
    .locals 3
    .param p0, "tid"    # I
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 98
    if-nez p2, :cond_0

    .line 99
    const-string/jumbo p2, "MiuiProcess"

    .line 102
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thread tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", priority is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thread tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", set priority error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static setThreadPriority(ILjava/lang/String;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    .line 116
    return-void
.end method
