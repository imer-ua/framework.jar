.class public final Lmiui/log/SystemLogSwitchesConfigManager;
.super Ljava/lang/Object;
.source "SystemLogSwitchesConfigManager.java"


# static fields
.field private static final logSwitchesFileName:Ljava/lang/String; = "switches.config"

.field private static final logSwitchesFolder:Ljava/lang/String; = "/data/system/miuilog/switches"

.field private static final logSwitchesManager:Lmiui/log/LogSwitchesConfigManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lmiui/log/LogSwitchesConfigManager;

    const-string/jumbo v1, "/data/system/miuilog/switches"

    const-string/jumbo v2, "switches.config"

    invoke-direct {v0, v1, v2}, Lmiui/log/LogSwitchesConfigManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmiui/log/SystemLogSwitchesConfigManager;->logSwitchesManager:Lmiui/log/LogSwitchesConfigManager;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableLogSwitch(Z)V
    .locals 2
    .param p0, "createLogSwitchesFileIfNotExisted"    # Z

    .prologue
    .line 19
    sget-object v0, Lmiui/log/SystemLogSwitchesConfigManager;->logSwitchesManager:Lmiui/log/LogSwitchesConfigManager;

    .line 20
    invoke-static {}, Lmiui/log/SystemLogSwitchesConfigManager;->synchronizedReadInitialLogSwitches()Z

    move-result v1

    .line 19
    invoke-virtual {v0, p0, v1}, Lmiui/log/LogSwitchesConfigManager;->startMonitoring(ZZ)V

    .line 18
    return-void
.end method

.method private static synchronizedReadInitialLogSwitches()Z
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v0, "sys.miui.sync_read_log_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static updateLogSwitches(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    sget-object v0, Lmiui/log/SystemLogSwitchesConfigManager;->logSwitchesManager:Lmiui/log/LogSwitchesConfigManager;

    invoke-virtual {v0, p0}, Lmiui/log/LogSwitchesConfigManager;->updateLogSwitches(Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method public static updatePackageName(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 24
    sget-object v0, Lmiui/log/SystemLogSwitchesConfigManager;->logSwitchesManager:Lmiui/log/LogSwitchesConfigManager;

    invoke-virtual {v0, p0}, Lmiui/log/LogSwitchesConfigManager;->updatePackageName(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static updateProgramName()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lmiui/log/SystemLogSwitchesConfigManager;->logSwitchesManager:Lmiui/log/LogSwitchesConfigManager;

    invoke-virtual {v0}, Lmiui/log/LogSwitchesConfigManager;->updateProgramName()V

    .line 31
    return-void
.end method

.method public static updateProgramName(Ljava/lang/String;)V
    .locals 1
    .param p0, "programName"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v0, Lmiui/log/SystemLogSwitchesConfigManager;->logSwitchesManager:Lmiui/log/LogSwitchesConfigManager;

    invoke-virtual {v0, p0}, Lmiui/log/LogSwitchesConfigManager;->updateProgramName(Ljava/lang/String;)V

    .line 27
    return-void
.end method
