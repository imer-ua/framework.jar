.class public Lmiui/securitycenter/applicationlock/ApplicationLockHelper;
.super Ljava/lang/Object;
.source "ApplicationLockHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mContext:Landroid/content/Context;

    .line 16
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v0, p1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 14
    return-void
.end method


# virtual methods
.method public checkLockPattern(Ljava/lang/String;)Z
    .locals 1
    .param p1, "patternString"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public clearAppLock()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 39
    return-void
.end method

.method public getLockoutAttempt()J
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isVisiblePatternLock()Z
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    return v0
.end method

.method public saveLockPatternExists()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->savedMiuiLockPatternExists()Z

    move-result v0

    return v0
.end method

.method public setLockoutAttempt()J
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/16 v2, 0x7530

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    return-wide v0
.end method
