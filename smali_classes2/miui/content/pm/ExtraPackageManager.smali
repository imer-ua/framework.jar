.class public Lmiui/content/pm/ExtraPackageManager;
.super Ljava/lang/Object;
.source "ExtraPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/pm/ExtraPackageManager$1;,
        Lmiui/content/pm/ExtraPackageManager$SignatureHolder;
    }
.end annotation


# static fields
.field private static final CORE_SYSTEM_PERMISSIONS:[Ljava/lang/String;

.field public static final DEXOPT_INTERPRET_ONLY:I = 0x20000000

.field public static final INSTALL_FROM_BOOTING:I = 0x40000000

.field public static final INSTALL_IN_BG:I = -0x80000000

.field private static final MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SIGNATURE_HOLDER:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Lmiui/content/pm/ExtraPackageManager$SignatureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRUSTED_PACKAGES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    .line 68
    const-string/jumbo v1, "android.permission.ACCOUNT_MANAGER"

    aput-object v1, v0, v3

    .line 69
    const-string/jumbo v1, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    aput-object v1, v0, v4

    .line 70
    const-string/jumbo v1, "android.permission.BIND_AUTOFILL_SERVICE"

    aput-object v1, v0, v5

    .line 71
    const-string/jumbo v1, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    aput-object v1, v0, v6

    .line 72
    const-string/jumbo v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    aput-object v1, v0, v7

    .line 74
    const-string/jumbo v1, "android.permission.BIND_DREAM_SERVICE"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 75
    const-string/jumbo v1, "android.permission.BIND_INPUT_METHOD"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 76
    const-string/jumbo v1, "android.permission.BIND_MIDI_DEVICE_SERVICE"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 78
    const-string/jumbo v1, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "android.permission.BIND_PRINT_SERVICE"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "android.permission.BIND_TEXT_SERVICE"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "android.permission.BIND_VOICE_INTERACTION"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "android.permission.BIND_VPN_SERVICE"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "android.permission.BIND_VR_LISTENER_SERVICE"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 67
    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->CORE_SYSTEM_PERMISSIONS:[Ljava/lang/String;

    .line 300
    new-instance v0, Lmiui/content/pm/ExtraPackageManager$1;

    invoke-direct {v0}, Lmiui/content/pm/ExtraPackageManager$1;-><init>()V

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->SIGNATURE_HOLDER:Landroid/util/Singleton;

    .line 392
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 393
    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    aput-object v1, v0, v3

    .line 394
    const-string/jumbo v1, "com.google.android.syncadapters.calendar"

    aput-object v1, v0, v4

    .line 395
    const-string/jumbo v1, "com.google.android.syncadapters.contacts"

    aput-object v1, v0, v5

    .line 396
    const-string/jumbo v1, "com.google.android.talk"

    aput-object v1, v0, v6

    .line 397
    const-string/jumbo v1, "com.google.android.tts"

    aput-object v1, v0, v7

    .line 398
    const-string/jumbo v1, "com.google.android.voicesearch"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 392
    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->TRUSTED_PACKAGES:[Ljava/lang/String;

    .line 405
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    .line 408
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 411
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 412
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.player"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.voiceassist"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 6
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v4, 0x0

    .line 369
    if-nez p0, :cond_1

    .line 370
    if-nez p1, :cond_0

    .line 371
    const/4 v3, 0x1

    .line 370
    :goto_0
    return v3

    .line 372
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 374
    :cond_1
    if-nez p1, :cond_2

    .line 375
    const/4 v3, -0x2

    return v3

    .line 377
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 378
    .local v0, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v5, p0

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v2, p0, v3

    .line 379
    .local v2, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 378
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 381
    .end local v2    # "sig":Landroid/content/pm/Signature;
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 382
    .local v1, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v5, p1

    move v3, v4

    :goto_2
    if-ge v3, v5, :cond_4

    aget-object v2, p1, v3

    .line 383
    .restart local v2    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 382
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 386
    .end local v2    # "sig":Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 387
    return v4

    .line 389
    :cond_5
    const/4 v3, -0x3

    return v3
.end method

.method public static handleIfContainsXiaomiAccountType(Landroid/content/Intent;)Z
    .locals 5
    .param p0, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "isNeedCancel":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 426
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "account"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 427
    .local v2, "resultAccount":Landroid/accounts/Account;
    if-eqz v2, :cond_0

    const-string/jumbo v3, "com.xiaomi"

    iget-object v4, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 428
    const/4 v0, 0x1

    .line 429
    const-string/jumbo v3, "response"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountAuthenticatorResponse;

    .line 430
    .local v1, "response":Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v1, :cond_0

    .line 431
    const-string/jumbo v3, "canceled"

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v3}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 435
    .end local v1    # "response":Landroid/accounts/AccountAuthenticatorResponse;
    .end local v2    # "resultAccount":Landroid/accounts/Account;
    :cond_0
    return v0
.end method

.method public static isMiuiSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 420
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTrustedAccountSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;II)Z
    .locals 11
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "serviceUid"    # I
    .param p3, "callingUid"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 331
    const/16 v4, 0x3e9

    if-eq p3, v4, :cond_0

    const/16 v4, 0x2648

    if-ne p3, v4, :cond_1

    .line 332
    :cond_0
    return v5

    .line 335
    :cond_1
    const-string/jumbo v4, "com.xiaomi"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 336
    invoke-virtual {p0, p3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "callerPkg":Ljava/lang/String;
    const/4 v3, 0x0

    .line 339
    .local v3, "info":Landroid/content/pm/PackageInfo;
    const/16 v4, 0x40

    :try_start_0
    invoke-virtual {p0, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 344
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v3, :cond_5

    .line 347
    sget-object v4, Lmiui/content/pm/ExtraPackageManager;->SIGNATURE_HOLDER:Landroid/util/Singleton;

    invoke-virtual {v4}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;

    iget-object v4, v4, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;->MIUI_PLATFORM_SIGNATURES:[Landroid/content/pm/Signature;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v4, v7}, Lmiui/content/pm/ExtraPackageManager;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v4

    if-nez v4, :cond_2

    .line 349
    return v5

    .line 340
    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 353
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    sget-object v4, Lmiui/content/pm/ExtraPackageManager;->SIGNATURE_HOLDER:Landroid/util/Singleton;

    invoke-virtual {v4}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;

    iget-object v7, v4, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;->ACCOUNT_WHITE_LIST:[Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;

    array-length v8, v7

    move v4, v6

    :goto_1
    if-ge v4, v8, :cond_4

    aget-object v2, v7, v4

    .line 354
    .local v2, "entity":Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;
    iget-object v9, v2, Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v2, Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;->signatures:[Landroid/content/pm/Signature;

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v9, v10}, Lmiui/content/pm/ExtraPackageManager;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v9

    if-nez v9, :cond_3

    .line 355
    return v5

    .line 353
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 359
    .end local v2    # "entity":Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;
    :cond_4
    const-string/jumbo v4, "android"

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4, v7}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    .line 360
    return v5

    .line 365
    .end local v0    # "callerPkg":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, p2, p3}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v4

    if-nez v4, :cond_6

    move v4, v5

    :goto_2
    return v4

    :cond_6
    move v4, v6

    goto :goto_2
.end method

.method public static isTrustedAppEntry(Ljava/util/jar/JarEntry;Ljava/lang/String;)Z
    .locals 2
    .param p0, "je"    # Ljava/util/jar/JarEntry;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 402
    const-string/jumbo v0, "classes.dex"

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->TRUSTED_PACKAGES:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTrustedSystemSignature([Landroid/content/pm/Signature;)Z
    .locals 1
    .param p0, "signature"    # [Landroid/content/pm/Signature;

    .prologue
    .line 308
    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Lmiui/content/pm/ExtraPackageManager;->isTrustedSystemSignature([Landroid/content/pm/Signature;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTrustedSystemSignature([Landroid/content/pm/Signature;Ljava/lang/String;)Z
    .locals 6
    .param p0, "signature"    # [Landroid/content/pm/Signature;
    .param p1, "permName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 316
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_0

    sget-object v1, Lmiui/content/pm/ExtraPackageManager;->CORE_SYSTEM_PERMISSIONS:[Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    return v2

    .line 319
    :cond_0
    sget-object v1, Lmiui/content/pm/ExtraPackageManager;->SIGNATURE_HOLDER:Landroid/util/Singleton;

    invoke-virtual {v1}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;

    iget-object v3, v1, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;->TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    .line 320
    .local v0, "sig":[Landroid/content/pm/Signature;
    invoke-static {v0, p0}, Lmiui/content/pm/ExtraPackageManager;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v5

    if-nez v5, :cond_1

    .line 322
    const/4 v1, 0x1

    return v1

    .line 319
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    .end local v0    # "sig":[Landroid/content/pm/Signature;
    :cond_2
    return v2
.end method
