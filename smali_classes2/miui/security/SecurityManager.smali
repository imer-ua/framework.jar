.class public Lmiui/security/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final FLAG_AC_ENABLED:I = 0x1

.field public static final FLAG_AC_PACKAGE_CANCELED:I = 0x8

.field public static final FLAG_AC_PACKAGE_ENABLED:I = 0x2

.field public static final FLAG_AC_PACKAGE_PASSED:I = 0x4

.field public static final MODE_EACH:I = 0x0

.field public static final MODE_LOCK_SCREEN:I = 0x1

.field public static final MODE_TIME_OUT:I = 0x2

.field private static final PACKAGE_SECURITYCENTER:Ljava/lang/String; = "com.miui.securitycenter"

.field public static final SKIP_INTERCEPT:Ljava/lang/String; = "skip_interception"

.field public static final SKIP_INTERCEPT_ACTIVITY:Ljava/lang/String; = "com.miui.gallery.activity.ExternalPhotoPageActivity"

.field public static final SKIP_INTERCEPT_PACKAGE:Ljava/lang/String; = "com.miui.gallery"

.field private static final START_ACTIVITY_CALLEE_PKGNAME:Ljava/lang/String; = "CalleePkgName"

.field private static final START_ACTIVITY_CALLER_PKGNAME:Ljava/lang/String; = "CallerPkgName"

.field private static final START_ACTIVITY_USERID:Ljava/lang/String; = "UserId"

.field private static final TAG:Ljava/lang/String; = "SecurityManager"

.field private static sActivityFinishMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final mService:Lmiui/security/ISecurityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x13

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-class v3, Lmiui/security/SecurityManager;

    invoke-virtual {v3}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    sput-boolean v1, Lmiui/security/SecurityManager;->-assertionsDisabled:Z

    .line 79
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v6, :cond_0

    .line 81
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_3

    .line 82
    const-class v1, Landroid/app/Activity;

    const-string/jumbo v2, "finish"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    .line 86
    :goto_1
    sget-object v1, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v1, v6, :cond_1

    .line 715
    const-string/jumbo v1, "sechook"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    :cond_1
    return-void

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move v1, v2

    goto :goto_0

    .line 84
    :cond_3
    :try_start_1
    const-class v1, Landroid/app/Activity;

    const-string/jumbo v2, "finish"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SecurityManager"

    const-string/jumbo v2, " SecurityManager static init error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public constructor <init>(Lmiui/security/ISecurityManager;)V
    .locals 0
    .param p1, "service"    # Lmiui/security/ISecurityManager;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    .line 93
    return-void
.end method

.method private activityFinish(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 651
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 652
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    return-void

    .line 656
    :cond_0
    :try_start_0
    sget-object v1, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3

    .line 657
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    .line 658
    sget-object v1, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    :cond_1
    :goto_0
    return-void

    .line 660
    :cond_2
    sget-object v1, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SecurityManager"

    const-string/jumbo v2, " FinishMethod.invoke error "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 663
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 664
    invoke-virtual {p1}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static checkCallingPackage(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "whiteList"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 102
    sget-boolean v4, Lmiui/security/SecurityManager;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_0

    move v4, v7

    :goto_0
    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    move v4, v5

    goto :goto_0

    .line 104
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 105
    .local v2, "uid":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "pkgs":[Ljava/lang/String;
    if-nez v1, :cond_2

    .line 107
    return v5

    .line 109
    :cond_2
    array-length v8, v1

    move v6, v5

    :goto_1
    if-ge v6, v8, :cond_5

    aget-object v0, v1, v6

    .line 110
    .local v0, "pkg":Ljava/lang/String;
    array-length v9, p1

    move v4, v5

    :goto_2
    if-ge v4, v9, :cond_4

    aget-object v3, p1, v4

    .line 111
    .local v3, "validPkg":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    return v7

    .line 110
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 109
    .end local v3    # "validPkg":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1

    .line 114
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_5
    return v5
.end method

.method private static checkTime(JLjava/lang/String;)V
    .locals 6
    .param p0, "startTime"    # J
    .param p2, "where"    # Ljava/lang/String;

    .prologue
    .line 900
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 901
    .local v0, "now":J
    sub-long v2, v0, p0

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 903
    const-string/jumbo v2, "SecurityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MIUILOG-checkTime:Slow operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v0, p0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms so far, now at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_0
    return-void
.end method

.method public static getCheckAccessIntent(ZLjava/lang/String;Landroid/content/Intent;IZI)Landroid/content/Intent;
    .locals 9
    .param p0, "isAccessControl"    # Z
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "original"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "fromActivity"    # Z
    .param p5, "userId"    # I

    .prologue
    const/high16 v8, 0x20000000

    const/high16 v7, 0x8000000

    const/high16 v6, 0x10000000

    const/high16 v5, 0x2000000

    const/4 v4, 0x0

    .line 536
    const-string/jumbo v0, "miui.intent.action.CHECK_ACCESS_CONTROL"

    .line 537
    .local v0, "action":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 538
    const-string/jumbo v0, "com.miui.gamebooster.action.ACCESS_WINDOWCALLACTIVITY"

    .line 540
    :cond_0
    const-string/jumbo v2, "com.miui.securitycenter"

    .line 541
    .local v2, "targetPkg":Ljava/lang/String;
    const-string/jumbo v3, "is_pad"

    invoke-static {v3, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 542
    const-string/jumbo v0, "android.app.action.CHECK_ACCESS_CONTROL_PAD"

    .line 543
    const-string/jumbo v2, "com.android.settings"

    .line 546
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    .local v1, "result":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    const/high16 v3, 0x800000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 549
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    if-eqz p2, :cond_7

    .line 553
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v5

    if-eqz v3, :cond_2

    .line 554
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 556
    :cond_2
    const/high16 v3, 0x1000000

    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 557
    if-eqz p4, :cond_6

    .line 559
    if-ltz p3, :cond_3

    .line 560
    invoke-virtual {p2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 562
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v6

    if-nez v3, :cond_5

    .line 563
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 574
    :goto_0
    const-string/jumbo v3, "android.intent.extra.INTENT"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 578
    :goto_1
    const/16 v3, 0x3e7

    if-ne p5, v3, :cond_4

    .line 579
    const-string/jumbo v3, "originating_uid"

    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 582
    :cond_4
    return-object v1

    .line 566
    :cond_5
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 567
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 571
    :cond_6
    invoke-virtual {p2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 572
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 576
    :cond_7
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static getUserHandle(I)I
    .locals 1
    .param p0, "original"    # I

    .prologue
    .line 698
    invoke-static {p0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    const/4 v0, 0x0

    return v0

    .line 701
    :cond_0
    return p0
.end method

.method private static native hook()V
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 708
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 709
    invoke-static {}, Lmiui/security/SecurityManager;->hook()V

    .line 707
    :cond_0
    return-void
.end method


# virtual methods
.method public activityResume(Landroid/content/Intent;)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 865
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->activityResume(Landroid/content/Intent;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 869
    const/4 v1, 0x0

    return v1
.end method

.method public addAccessControlPass(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->addAccessControlPass(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public addAccessControlPassForUser(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 189
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->addAccessControlPassForUser(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "addAccessControlPassForUser exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 987
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 988
    :catch_0
    move-exception v0

    .line 989
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkAccessControl(Landroid/app/Activity;I)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userId"    # I

    .prologue
    .line 586
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_5

    .line 587
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, "packageName":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 590
    .local v11, "targetIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 591
    const-string/jumbo v0, "com.miui.gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.miui.gallery.activity.ExternalPhotoPageActivity"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 594
    .local v10, "sourceIntent":Landroid/content/Intent;
    if-eqz v10, :cond_0

    .line 595
    const-string/jumbo v0, "skip_interception"

    const-string/jumbo v2, "skip_interception"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v11, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    .end local v10    # "sourceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0, v11}, Lmiui/security/SecurityManager;->activityResume(Landroid/content/Intent;)I

    move-result v8

    .line 603
    .local v8, "flag":I
    and-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_1

    and-int/lit8 v0, v8, 0x2

    if-nez v0, :cond_2

    .line 604
    :cond_1
    return-void

    .line 597
    .end local v8    # "flag":I
    :catch_0
    move-exception v7

    .line 598
    .local v7, "e":Ljava/lang/Throwable;
    const-string/jumbo v0, "SecurityManager"

    const-string/jumbo v2, "checkAccessControl sourceIntent"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 607
    .end local v7    # "e":Ljava/lang/Throwable;
    .restart local v8    # "flag":I
    :cond_2
    and-int/lit8 v0, v8, 0x8

    if-eqz v0, :cond_3

    .line 608
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 609
    invoke-direct {p0, p1}, Lmiui/security/SecurityManager;->activityFinish(Landroid/app/Activity;)V

    .line 610
    return-void

    .line 613
    :cond_3
    and-int/lit8 v0, v8, 0x4

    if-eqz v0, :cond_4

    .line 614
    return-void

    .line 617
    :cond_4
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lmiui/security/SecurityManager;->getCheckAccessIntent(ZLjava/lang/String;Landroid/content/Intent;IZI)Landroid/content/Intent;

    move-result-object v9

    .line 618
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.app.extra.PROTECTED_APP_TOKEN"

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 620
    const/4 v0, -0x1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v9, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 585
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v8    # "flag":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "targetIntent":Landroid/content/Intent;
    :cond_5
    :goto_1
    return-void

    .line 621
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v8    # "flag":I
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v11    # "targetIntent":Landroid/content/Intent;
    :catch_1
    move-exception v6

    .line 622
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v0, "SecurityManager"

    const-string/jumbo v2, "checkAccessControl"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public checkAccessControlPass(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/security/SecurityManager;->checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 231
    .local v1, "retval":Z
    :try_start_0
    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, p1, p2}, Lmiui/security/ISecurityManager;->checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 234
    .end local v1    # "retval":Z
    :goto_0
    return v1

    .line 232
    .restart local v1    # "retval":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public checkAccessControlPassAsUser(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lmiui/security/SecurityManager;->checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .prologue
    .line 242
    const/4 v1, 0x0

    .line 244
    .local v1, "retval":Z
    :try_start_0
    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, p1, p2, p3}, Lmiui/security/ISecurityManager;->checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 247
    .end local v1    # "retval":Z
    :goto_0
    return v1

    .line 245
    .restart local v1    # "retval":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "passwordType"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 340
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lmiui/security/ISecurityManager;->checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Z
    .locals 5
    .param p1, "callerPkgName"    # Ljava/lang/String;
    .param p2, "calleePkgName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "userId"    # I

    .prologue
    .line 389
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 390
    .local v2, "startTime":J
    const/4 v1, 0x0

    .line 392
    .local v1, "retval":Z
    :try_start_0
    iget-object v4, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v4, p1, p2, p3, p4}, Lmiui/security/ISecurityManager;->checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 395
    .end local v1    # "retval":Z
    :goto_0
    const-string/jumbo v4, "checkAllowStartActivity"

    invoke-static {v2, v3, v4}, Lmiui/security/SecurityManager;->checkTime(JLjava/lang/String;)V

    .line 396
    return v1

    .line 393
    .restart local v1    # "retval":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public checkGameBoosterAntimsgPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .prologue
    .line 252
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->checkGameBoosterAntimsgPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "checkGameBoosterAntimsgPassAsUser exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkSmsBlocked(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->checkSmsBlocked(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    const/4 v1, 0x0

    return v1
.end method

.method public finishAccessControl(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 848
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lmiui/security/ISecurityManager;->finishAccessControl(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    :goto_0
    return-void

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public finishAccessControl(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 857
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->finishAccessControl(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    return-void

    .line 858
    :catch_0
    move-exception v0

    .line 859
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "finishAccessControl has failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAccessControlPasswordType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 365
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lmiui/security/ISecurityManager;->getAccessControlPasswordType(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAllPrivacyApps(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1119
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getAllPrivacyApps(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1120
    :catch_0
    move-exception v0

    .line 1121
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAppPermissionControlOpen(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 816
    :try_start_0
    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, p1}, Lmiui/security/ISecurityManager;->getAppPermissionControlOpen(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 817
    :catch_0
    move-exception v0

    .line 820
    .local v0, "e":Ljava/lang/Exception;
    return v1
.end method

.method public getApplicationAccessControlEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 259
    const/4 v1, 0x0

    .line 261
    .local v1, "retval":Z
    :try_start_0
    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, p1}, Lmiui/security/ISecurityManager;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 264
    .end local v1    # "retval":Z
    :goto_0
    return v1

    .line 262
    .restart local v1    # "retval":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 268
    const/4 v1, 0x0

    .line 270
    .local v1, "retval":Z
    :try_start_0
    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, p1, p2}, Lmiui/security/ISecurityManager;->getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 273
    .end local v1    # "retval":Z
    :goto_0
    return v1

    .line 271
    .restart local v1    # "retval":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getApplicationChildrenControlEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 372
    const/4 v1, 0x0

    .line 374
    .local v1, "retval":Z
    :try_start_0
    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, p1}, Lmiui/security/ISecurityManager;->getApplicationChildrenControlEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 377
    .end local v1    # "retval":Z
    :goto_0
    return v1

    .line 375
    .restart local v1    # "retval":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getApplicationMaskNotificationEnabledAsUser(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 277
    const/4 v1, 0x0

    .line 279
    .local v1, "retval":Z
    :try_start_0
    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, p1, p2}, Lmiui/security/ISecurityManager;->getApplicationMaskNotificationEnabledAsUser(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 283
    .local v1, "retval":Z
    return v1

    .line 280
    .local v1, "retval":Z
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "getApplicationMaskNotificationEnabledAsUser exception"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getCheckAccessControlIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "userId"    # I

    .prologue
    .line 506
    if-eqz p1, :cond_0

    instance-of v4, p1, Landroid/app/Activity;

    .line 507
    .local v4, "isFromActivity":Z
    :goto_0
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lmiui/security/SecurityManager;->getCheckAccessControlIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZII)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 506
    .end local v4    # "isFromActivity":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getCheckAccessControlIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZII)Landroid/content/Intent;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "fromActivity"    # Z
    .param p5, "requestCode"    # I
    .param p6, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 512
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p6}, Lmiui/security/SecurityManager;->isAccessControlActived(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    const/4 v7, 0x0

    .line 518
    .local v7, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1, p6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 521
    .end local v7    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-nez v7, :cond_1

    .line 522
    return-object v2

    .line 513
    :cond_0
    return-object v2

    .line 526
    :cond_1
    if-eqz p3, :cond_3

    if-eqz v7, :cond_3

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 528
    :cond_2
    return-object v2

    .line 527
    :cond_3
    invoke-virtual {p0, p2, p3, p6}, Lmiui/security/SecurityManager;->checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v0

    .line 526
    if-nez v0, :cond_2

    .line 527
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 530
    :cond_4
    const/4 v0, 0x1

    move-object v1, p2

    move-object v2, p3

    move v3, p5

    move v4, p4

    move v5, p6

    invoke-static/range {v0 .. v5}, Lmiui/security/SecurityManager;->getCheckAccessIntent(ZLjava/lang/String;Landroid/content/Intent;IZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 519
    .restart local v7    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getCheckGameBoosterAntimsgIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZII)Landroid/content/Intent;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callPackageName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "fromActivity"    # Z
    .param p6, "requestCode"    # I
    .param p7, "userId"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 629
    if-eqz p1, :cond_0

    const-string/jumbo v1, "com.miui.securitycenter"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p7}, Lmiui/security/SecurityManager;->isGameBoosterActived(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    const/4 v7, 0x0

    .line 635
    .local v7, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p3, v2, p7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 638
    .end local v7    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-nez v7, :cond_1

    .line 639
    return-object v3

    .line 630
    :cond_0
    return-object v3

    .line 641
    :cond_1
    invoke-virtual {p0, p3, p4, p7}, Lmiui/security/SecurityManager;->checkGameBoosterAntimsgPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 642
    return-object v3

    :cond_2
    move-object v1, p3

    move-object v2, p4

    move v3, p6

    move v4, p5

    move v5, p7

    .line 644
    invoke-static/range {v0 .. v5}, Lmiui/security/SecurityManager;->getCheckAccessIntent(ZLjava/lang/String;Landroid/content/Intent;IZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 636
    .restart local v7    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getCheckIntent(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZIZII)Landroid/content/Intent;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callerAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "fromActivity"    # Z
    .param p7, "requestCode"    # I
    .param p8, "calleeAlreadyStarted"    # Z
    .param p9, "userId"    # I
    .param p10, "callingUid"    # I

    .prologue
    .line 403
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {p1, v0, v1, v2, v3}, Lmiui/security/AppRunningControlManager;->getBlockActivityIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;

    move-result-object v12

    .line 404
    .local v12, "ret":Landroid/content/Intent;
    if-eqz v12, :cond_0

    .line 405
    return-object v12

    .line 408
    :cond_0
    invoke-virtual/range {p0 .. p10}, Lmiui/security/SecurityManager;->getCheckStartActivityIntent(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZIZII)Landroid/content/Intent;

    move-result-object v12

    .line 409
    if-eqz v12, :cond_1

    .line 410
    return-object v12

    :cond_1
    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p9

    .line 413
    invoke-virtual/range {v4 .. v11}, Lmiui/security/SecurityManager;->getCheckGameBoosterAntimsgIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZII)Landroid/content/Intent;

    move-result-object v12

    .line 414
    if-eqz v12, :cond_2

    .line 415
    return-object v12

    :cond_2
    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p9

    .line 418
    invoke-virtual/range {v4 .. v10}, Lmiui/security/SecurityManager;->getCheckAccessControlIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZII)Landroid/content/Intent;

    move-result-object v12

    .line 419
    return-object v12
.end method

.method public getCheckStartActivityIntent(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZIZII)Landroid/content/Intent;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callerAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "fromActivity"    # Z
    .param p7, "requestCode"    # I
    .param p8, "calleeAlreadyStarted"    # Z
    .param p9, "userId"    # I
    .param p10, "callingUid"    # I

    .prologue
    .line 424
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 426
    .local v8, "startTime":J
    if-eqz p5, :cond_0

    if-nez p8, :cond_0

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v7

    if-nez v7, :cond_0

    sget-boolean v7, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v7, :cond_1

    .line 427
    :cond_0
    const/4 v7, 0x0

    return-object v7

    .line 430
    :cond_1
    if-nez p2, :cond_3

    .line 431
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 432
    const/4 v7, 0x0

    return-object v7

    .line 435
    :cond_2
    :try_start_0
    invoke-static/range {p10 .. p10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 436
    .local v4, "callingUserId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    const/4 v10, 0x0

    invoke-interface {v7, p3, v10, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 440
    .end local v4    # "callingUserId":I
    :goto_0
    if-nez p2, :cond_3

    .line 441
    const/4 v7, 0x0

    return-object v7

    .line 437
    :catch_0
    move-exception v5

    .line 438
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "SecurityManager"

    const-string/jumbo v10, "getCheckStartActivityIntent"

    invoke-static {v7, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 445
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    iget v7, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x81

    if-nez v7, :cond_4

    .line 446
    iget v7, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v10, 0x2710

    if-ge v7, v10, :cond_5

    .line 447
    :cond_4
    const/4 v7, 0x0

    return-object v7

    .line 450
    :cond_5
    const/4 v3, 0x0

    .line 452
    .local v3, "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    const/4 v10, 0x0

    move/from16 v0, p9

    invoke-interface {v7, p4, v10, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 456
    .end local v3    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-nez v3, :cond_6

    .line 457
    const/4 v7, 0x0

    return-object v7

    .line 453
    .restart local v3    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v5

    .line 454
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "SecurityManager"

    const-string/jumbo v10, "getCheckStartActivityIntent"

    invoke-static {v7, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 460
    .end local v3    # "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6
    iget v7, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x81

    if-nez v7, :cond_7

    .line 461
    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v10, 0x2710

    if-ge v7, v10, :cond_8

    .line 462
    :cond_7
    const/4 v7, 0x0

    return-object v7

    .line 466
    :cond_8
    iget-object v7, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v10, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 467
    iget-object v7, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p5

    move/from16 v1, p9

    invoke-virtual {p0, v7, p4, v0, v1}, Lmiui/security/SecurityManager;->checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v7

    .line 466
    if-eqz v7, :cond_a

    .line 468
    :cond_9
    const/4 v7, 0x0

    return-object v7

    .line 471
    :cond_a
    const-string/jumbo v2, "android.app.action.CHECK_ALLOW_START_ACTIVITY"

    .line 472
    .local v2, "action":Ljava/lang/String;
    const-string/jumbo v7, "is_pad"

    const/4 v10, 0x0

    invoke-static {v7, v10}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 473
    const/4 v7, 0x0

    return-object v7

    .line 477
    :cond_b
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    .local v6, "result":Landroid/content/Intent;
    const-string/jumbo v7, "CallerPkgName"

    iget-object v10, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    const-string/jumbo v7, "CalleePkgName"

    iget-object v10, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    const-string/jumbo v7, "UserId"

    move/from16 v0, p9

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 481
    const/high16 v7, 0x800000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 482
    const-string/jumbo v7, "com.miui.securitycenter"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    if-eqz p5, :cond_e

    .line 486
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const/high16 v10, 0x2000000

    and-int/2addr v7, v10

    if-eqz v7, :cond_c

    .line 487
    const/high16 v7, 0x2000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 489
    :cond_c
    const/high16 v7, 0x1000000

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 490
    if-eqz p6, :cond_f

    .line 492
    if-ltz p7, :cond_d

    .line 493
    const/high16 v7, 0x2000000

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 499
    :cond_d
    :goto_2
    const-string/jumbo v7, "android.intent.extra.INTENT"

    move-object/from16 v0, p5

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 501
    :cond_e
    const-string/jumbo v7, "getCheckStartActivityIntent"

    invoke-static {v8, v9, v7}, Lmiui/security/SecurityManager;->checkTime(JLjava/lang/String;)V

    .line 502
    return-object v6

    .line 497
    :cond_f
    const/high16 v7, 0x10000000

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2
.end method

.method public getIncompatibleAppList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 966
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->getIncompatibleAppList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 967
    :catch_0
    move-exception v0

    .line 968
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .locals 2
    .param p1, "pid"    # I

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getPackageNameByPid(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSysAppCracked()I
    .locals 3

    .prologue
    .line 909
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->getSysAppCracked()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 910
    :catch_0
    move-exception v0

    .line 911
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTopActivity()Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 1059
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->getTopActivity()Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1060
    :catch_0
    move-exception v0

    .line 1061
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;
    .locals 2

    .prologue
    .line 799
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 800
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getWakePathComponents(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/security/WakePathComponent;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 974
    :try_start_0
    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, p1}, Lmiui/security/ISecurityManager;->getWakePathComponents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 975
    .local v1, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Lmiui/security/WakePathComponent;>;"
    if-nez v1, :cond_0

    .line 976
    return-object v3

    .line 978
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 980
    .end local v1    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Lmiui/security/WakePathComponent;>;"
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "security manager has died."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getWakeUpTime(Ljava/lang/String;)J
    .locals 4
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 731
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getWakeUpTime(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Landroid/os/RemoteException;
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 917
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    return-void

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public grantRuntimePermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 893
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->grantRuntimePermission(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    return-void

    .line 894
    :catch_0
    move-exception v0

    .line 895
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public haveAccessControlPassword()Z
    .locals 3

    .prologue
    .line 353
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lmiui/security/ISecurityManager;->haveAccessControlPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAccessControlActived(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 676
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/security/SecurityManager;->isAccessControlActived(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public isAccessControlActived(Landroid/content/Context;I)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 683
    invoke-static {p2}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p2

    .line 685
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 686
    const-string/jumbo v3, "access_control_lock_enabled"

    .line 684
    invoke-static {v2, v3, v1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isAllowStartService(Landroid/content/Intent;I)Z
    .locals 3
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    .line 1051
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->isAllowStartService(Landroid/content/Intent;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAppHide()Z
    .locals 3

    .prologue
    .line 1003
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->isAppHide()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAppPrivacyEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1043
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->isAppPrivacyEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isFunctionOpen()Z
    .locals 3

    .prologue
    .line 1011
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->isFunctionOpen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isGameBoosterActived(I)Z
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 691
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getGameMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "isGameBoosterActived exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isPrivacyApp(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1108
    const/4 v1, 0x0

    .line 1110
    .local v1, "retval":Z
    :try_start_0
    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, p1, p2}, Lmiui/security/ISecurityManager;->isPrivacyApp(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1114
    .local v1, "retval":Z
    return v1

    .line 1111
    .local v1, "retval":Z
    :catch_0
    move-exception v0

    .line 1112
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "security manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isRestrictedAppNet(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 925
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 926
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, v1}, Lmiui/security/ISecurityManager;->isRestrictedAppNet(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 927
    .end local v1    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 928
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "security manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isValidDevice()Z
    .locals 3

    .prologue
    .line 1027
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->isValidDevice()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public killNativePackageProcesses(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->killNativePackageProcesses(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public moveTaskToStack(IIZ)I
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z

    .prologue
    .line 1074
    const-string/jumbo v1, "SecurityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveTaskToStack "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isOnTop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->moveTaskToStack(IIZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public needFinishAccessControl(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 838
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->needFinishAccessControl(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 839
    :catch_0
    move-exception v0

    .line 840
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 842
    const/4 v1, 0x0

    return v1
.end method

.method public pushUpdatePkgsData(Ljava/util/List;Z)V
    .locals 3
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1093
    .local p1, "updatePkgsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->pushUpdatePkgsData(Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    return-void

    .line 1094
    :catch_0
    move-exception v0

    .line 1095
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 775
    .local p2, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :goto_0
    return-void

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SecurityManager"

    const-string/jumbo v2, "pushWakePathConfirmDialogWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public pushWakePathData(ILandroid/content/pm/ParceledListSlice;I)V
    .locals 2
    .param p1, "wakeType"    # I
    .param p2, "wakePathRuleInfos"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "userId"    # I

    .prologue
    .line 759
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->pushWakePathData(ILandroid/content/pm/ParceledListSlice;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    :goto_0
    return-void

    .line 760
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public pushWakePathWhiteList(Ljava/util/List;I)V
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 767
    .local p1, "wakePathWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->pushWakePathWhiteList(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :goto_0
    return-void

    .line 768
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 740
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 741
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 750
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 751
    :catch_0
    move-exception v0

    .line 754
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/app/IWakePathCallback;

    .prologue
    .line 808
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    :goto_0
    return-void

    .line 809
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public removeAccessControlPass(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 197
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->removeAccessControlPass(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public removeAccessControlPassAsUser(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 210
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->removeAccessControlPassAsUser(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeWakePathData(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 783
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->removeWakePathData(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    :goto_0
    return-void

    .line 784
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public resizeTask(ILandroid/graphics/Rect;I)I
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "resizeMode"    # I

    .prologue
    .line 1083
    const-string/jumbo v1, "SecurityManager"

    const-string/jumbo v2, "resizeTask"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->resizeTask(ILandroid/graphics/Rect;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public saveIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 311
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->saveIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "saveIcon exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAccessControlPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "passwordType"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 325
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lmiui/security/ISecurityManager;->setAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAppHide(Z)Z
    .locals 3
    .param p1, "hide"    # Z

    .prologue
    .line 1019
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->setAppHide(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAppPermissionControlOpen(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 830
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->setAppPermissionControlOpen(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :goto_0
    return-void

    .line 831
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setAppPrivacyStatus(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isOpen"    # Z

    .prologue
    .line 1035
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->setAppPrivacyStatus(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    return-void

    .line 1036
    :catch_0
    move-exception v0

    .line 1037
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setApplicationAccessControlEnabled(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 288
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 295
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "setApplicationAccessControlEnabledForUser exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setApplicationChildrenControlEnabled(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 383
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->setApplicationChildrenControlEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setApplicationMaskNotificationEnabledForUser(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 303
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->setApplicationMaskNotificationEnabledForUser(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "setApplicationMaskNotificationEnabledForUser exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCoreRuntimePermissionEnabled(ZI)V
    .locals 3
    .param p1, "grant"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 880
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->setCoreRuntimePermissionEnabled(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    return-void

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCurrentNetworkState(I)Z
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 950
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->setCurrentNetworkState(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setGameBoosterIBinder(Landroid/os/IBinder;IZ)V
    .locals 3
    .param p1, "gameBooster"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "isGameMode"    # Z

    .prologue
    .line 218
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->setGameBoosterIBinder(Landroid/os/IBinder;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "setGameBoosterIBinder exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setIncompatibleAppList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 958
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->setIncompatibleAppList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    return-void

    .line 959
    :catch_0
    move-exception v0

    .line 960
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setMiuiFirewallRule(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "rule"    # I
    .param p3, "type"    # I

    .prologue
    .line 942
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->setMiuiFirewallRule(Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 943
    :catch_0
    move-exception v0

    .line 944
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 995
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    return-void

    .line 996
    :catch_0
    move-exception v0

    .line 997
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setPrivacyApp(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isPrivacy"    # Z

    .prologue
    .line 1101
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->setPrivacyApp(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    return-void

    .line 1102
    :catch_0
    move-exception v0

    .line 1103
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTrackWakePathCallListLogEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 791
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->setTrackWakePathCallListLogEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    :goto_0
    return-void

    .line 792
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setWakeUpTime(Ljava/lang/String;J)V
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "timeInSeconds"    # J

    .prologue
    .line 723
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->setWakeUpTime(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :goto_0
    return-void

    .line 724
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startInterceptSmsBySender(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sender"    # Ljava/lang/String;
    .param p3, "count"    # I

    .prologue
    .line 159
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, v1, p2, p3}, Lmiui/security/ISecurityManager;->startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 161
    .end local v1    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    const/4 v2, 0x0

    return v2
.end method

.method public stopInterceptSmsBySender()Z
    .locals 2

    .prologue
    .line 173
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->stopInterceptSmsBySender()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 177
    const/4 v1, 0x0

    return v1
.end method

.method public watchGreenGuardProcess()V
    .locals 3

    .prologue
    .line 1067
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->watchGreenGuardProcess()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    return-void

    .line 1068
    :catch_0
    move-exception v0

    .line 1069
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeAppHideConfig(Z)Z
    .locals 3
    .param p1, "hide"    # Z

    .prologue
    .line 934
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->writeAppHideConfig(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 935
    :catch_0
    move-exception v0

    .line 936
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
