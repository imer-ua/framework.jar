.class public Landroid/security/PrivacyLockPatternUtils;
.super Ljava/lang/Object;
.source "PrivacyLockPatternUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PrivacyLockPatternUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPrivacyPasswordPattern(Ljava/util/List;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :try_start_0
    const-string/jumbo v2, "lock_settings"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    .line 22
    .local v1, "lockSettingsSevices":Lcom/android/internal/widget/ILockSettings;
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 23
    .end local v1    # "lockSettingsSevices":Lcom/android/internal/widget/ILockSettings;
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PrivacyLockPatternUtils"

    const-string/jumbo v3, "CheckPrivacyPasswordPattern error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    const/4 v2, 0x1

    return v2
.end method

.method public static savePrivacyPasswordPattern(Ljava/util/List;Ljava/lang/String;I)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "patternStr":Ljava/lang/String;
    const-string/jumbo v3, "lock_settings"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    .line 33
    .local v1, "lockSettingsSevices":Lcom/android/internal/widget/ILockSettings;
    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/widget/ILockSettings;->savePrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .end local v1    # "lockSettingsSevices":Lcom/android/internal/widget/ILockSettings;
    .end local v2    # "patternStr":Ljava/lang/String;
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "PrivacyLockPatternUtils"

    const-string/jumbo v4, "savePrivacyPasswordPattern error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
