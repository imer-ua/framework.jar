.class Landroid/app/backup/BackupAgentInjector;
.super Ljava/lang/Object;
.source "BackupAgentInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static shouldSkip(I)Z
    .locals 2
    .param p0, "mode"    # I

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-static {p0}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
