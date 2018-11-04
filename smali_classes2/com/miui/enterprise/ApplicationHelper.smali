.class public Lcom/miui/enterprise/ApplicationHelper;
.super Ljava/lang/Object;
.source "ApplicationHelper.java"


# static fields
.field private static final ENTERPRISE_PACKAGE_PREFIX:Ljava/lang/String; = "pkg_"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowAutoStart(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 86
    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_0

    .line 87
    return v0

    .line 89
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    return v0

    .line 92
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/enterprise/ApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static allowAutoStart(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 96
    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_0

    .line 97
    return v0

    .line 99
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    return v0

    .line 102
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/miui/enterprise/ApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static buildPackageSettingKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkg_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkEnterprisePackageRestriction(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 136
    const-string/jumbo v4, "ep_app_restriction_mode"

    .line 135
    invoke-static {p0, v4, v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 137
    .local v1, "restrictionMode":I
    packed-switch v1, :pswitch_data_0

    .line 149
    return v3

    .line 139
    :pswitch_0
    return v3

    .line 142
    :pswitch_1
    const-string/jumbo v3, "ep_app_black_list"

    invoke-static {p0, v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-static {v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 143
    .local v0, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 146
    .end local v0    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    const-string/jumbo v4, "ep_app_white_list"

    invoke-static {p0, v4}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-static {v4}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 147
    .local v2, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getPackageFlag(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p1}, Lcom/miui/enterprise/ApplicationHelper;->buildPackageSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    .line 111
    invoke-static {p0, v0, v2, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private static getPackageFlag(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 106
    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 107
    :cond_0
    invoke-static {p1}, Lcom/miui/enterprise/ApplicationHelper;->buildPackageSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getTrustedAppStores(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    const-string/jumbo v0, "ep_trusted_app_stores"

    invoke-static {}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getUserId()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getTrustedAppStores(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    const-string/jumbo v0, "ep_trusted_app_stores"

    invoke-static {p0, v0, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isTrustedAppStoresEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    const-string/jumbo v2, "ep_trusted_app_store_enabled"

    .line 131
    invoke-static {}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getUserId()I

    move-result v3

    .line 130
    invoke-static {p0, v2, v1, v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isTrustedAppStoresEnabled(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 126
    const-string/jumbo v2, "ep_trusted_app_store_enabled"

    invoke-static {p0, v2, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static protectedFromDelete(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 46
    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_0

    .line 47
    return v0

    .line 49
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    return v0

    .line 52
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/enterprise/ApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static protectedFromDelete(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 56
    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_0

    .line 57
    return v0

    .line 59
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    return v0

    .line 62
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/miui/enterprise/ApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 66
    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_0

    .line 67
    return v0

    .line 69
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    return v0

    .line 72
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/enterprise/ApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 76
    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_0

    .line 77
    return v0

    .line 79
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    return v0

    .line 82
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/miui/enterprise/ApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 26
    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_0

    .line 27
    return v0

    .line 29
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    return v0

    .line 32
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/enterprise/ApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 36
    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_0

    .line 37
    return v0

    .line 39
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    return v0

    .line 42
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/miui/enterprise/ApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method
