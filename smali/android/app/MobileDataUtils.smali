.class public Landroid/app/MobileDataUtils;
.super Landroid/app/BaseMobileDataUtils;
.source "MobileDataUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/BaseMobileDataUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/app/MobileDataUtils;
    .locals 4

    .prologue
    .line 16
    :try_start_0
    const-string/jumbo v3, "miui.msim.util.MSimMobileDataUtils"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 17
    .local v2, "mobileDataUtilsFactory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/MobileDataUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .local v1, "mobileDataUtils":Landroid/app/MobileDataUtils;
    return-object v1

    .line 21
    .end local v1    # "mobileDataUtils":Landroid/app/MobileDataUtils;
    :catch_0
    move-exception v0

    .line 24
    :cond_0
    new-instance v3, Landroid/app/MobileDataUtils;

    invoke-direct {v3}, Landroid/app/MobileDataUtils;-><init>()V

    return-object v3
.end method


# virtual methods
.method public enableMobileData(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isEnable"    # Z

    .prologue
    .line 48
    const-string/jumbo v1, "phone"

    .line 47
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 49
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 46
    return-void
.end method

.method public getMobileDataUri(I)Landroid/net/Uri;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mobile_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public isMobileEnable(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v1, v2, :cond_0

    .line 56
    const-string/jumbo v1, "phone"

    .line 55
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 57
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v1

    return v1

    .line 59
    .end local v0    # "telephony":Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/BaseMobileDataUtils;->isMobileEnable(Landroid/content/Context;)Z

    move-result v1

    return v1
.end method

.method public registerContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    const/4 v4, 0x0

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 29
    invoke-virtual {p0}, Landroid/app/BaseMobileDataUtils;->getMobileDataUri()Landroid/net/Uri;

    move-result-object v3

    .line 28
    invoke-virtual {v2, v3, v4, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 33
    const-string/jumbo v2, "phone"

    .line 32
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 34
    .local v1, "telephony":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 36
    invoke-virtual {p0, v0}, Landroid/app/MobileDataUtils;->getMobileDataUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 35
    invoke-virtual {v2, v3, v4, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method
