.class public Landroid/preference/MiuiCoreSettingsPreference;
.super Ljava/lang/Object;
.source "MiuiCoreSettingsPreference.java"


# instance fields
.field private attrs:Landroid/util/AttributeSet;

.field private mContext:Landroid/content/Context;

.field private mIntent:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field public mStorageType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LaunchCustomApplication(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 52
    new-instance v3, Ljava/lang/String;

    const-string v4, "cm8uYnVpbGQuZGlzcGxheS5pZA=="

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "sc":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    const-string v4, "TWl1aVBybw=="

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "mPackageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 57
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 62
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mPackageName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private SelectStorage(Ljava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "result":I
    if-eqz p1, :cond_3

    .line 30
    const-string v2, "global"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Global"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .line 39
    .end local v0    # "result":I
    .local v1, "result":I
    :goto_0
    return v1

    .line 34
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_1
    const-string/jumbo v2, "secure"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Secure"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 35
    :cond_2
    const/4 v0, 0x2

    move v1, v0

    .line 36
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0

    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_3
    move v1, v0

    .line 39
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0
.end method

.method public static getKeyParam(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 65
    new-instance v2, Ljava/lang/String;

    const-string v3, "cm8uYnVpbGQuZGlzcGxheS5pZA=="

    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "sc":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    const-string v3, "TWl1aVBybw=="

    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 69
    :cond_0
    return v1
.end method

.method public static getKeyTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x1f4

    const/4 v5, 0x0

    .line 74
    new-instance v1, Ljava/lang/String;

    const-string v4, "cm8uYnVpbGQuZGlzcGxheS5pZA=="

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "sc":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const-string v4, "TWl1aVBybw=="

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 78
    :cond_0
    return-wide v2
.end method


# virtual methods
.method public DrawableToID(Ljava/lang/String;)I
    .locals 3
    .param p1, "mName"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/preference/MiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "android"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public IDtoID(Ljava/lang/String;)I
    .locals 3
    .param p1, "mName"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/preference/MiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "android"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LayoutToID(Ljava/lang/String;)I
    .locals 3
    .param p1, "mName"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Landroid/preference/MiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "android"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public StyleToID(Ljava/lang/String;)I
    .locals 3
    .param p1, "mName"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Landroid/preference/MiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "style"

    const-string v2, "android"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 47
    iget-object v0, p0, Landroid/preference/MiuiCoreSettingsPreference;->attrs:Landroid/util/AttributeSet;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/preference/MiuiCoreSettingsPreference;->attrs:Landroid/util/AttributeSet;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntegerValue(I)Ljava/lang/Integer;
    .locals 5
    .param p1, "defValue"    # I

    .prologue
    .line 118
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "cm8uYnVpbGQuZGlzcGxheS5pZA=="

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "sc":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    const-string v3, "TWl1aVBybw=="

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    iget v2, p0, Landroid/preference/MiuiCoreSettingsPreference;->mStorageType:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    .line 132
    .end local v1    # "sc":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    return-object v2

    .line 122
    .restart local v1    # "sc":Ljava/lang/String;
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Landroid/preference/MiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/MiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 124
    :pswitch_1
    iget-object v2, p0, Landroid/preference/MiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/MiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 126
    :pswitch_2
    iget-object v2, p0, Landroid/preference/MiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/MiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1

    .line 129
    .end local v1    # "sc":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {p0, p1}, Landroid/preference/MiuiCoreSettingsPreference;->setIntegerValue(I)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 153
    new-instance v1, Ljava/lang/String;

    const-string v2, "cm8uYnVpbGQuZGlzcGxheS5pZA=="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "sc":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const-string v2, "TWl1aVBybw=="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget v1, p0, Landroid/preference/MiuiCoreSettingsPreference;->mStorageType:I

    packed-switch v1, :pswitch_data_0

    .line 164
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 157
    :pswitch_0
    iget-object v1, p0, Landroid/preference/MiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/MiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v1, p0, Landroid/preference/MiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/MiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v1, p0, Landroid/preference/MiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/MiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "defValue"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 168
    const/4 v1, 0x0

    .line 169
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    const-string v3, "cm8uYnVpbGQuZGlzcGxheS5pZA=="

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "sc":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    const-string v3, "TWl1aVBybw=="

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    iget v2, p0, Landroid/preference/MiuiCoreSettingsPreference;->mStorageType:I

    packed-switch v2, :pswitch_data_0

    .line 183
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .end local v1    # "value":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 173
    .restart local v1    # "value":Ljava/lang/String;
    :pswitch_0
    iget-object v2, p0, Landroid/preference/MiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/MiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    goto :goto_0

    .line 176
    :pswitch_1
    iget-object v2, p0, Landroid/preference/MiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/MiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    goto :goto_0

    .line 179
    :pswitch_2
    iget-object v2, p0, Landroid/preference/MiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/MiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 183
    goto :goto_1

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public initSummary(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 187
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 188
    .local v0, "result":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "tmp":Ljava/lang/String;
    const-string v2, "%s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 190
    const/4 v2, 0x1

    const-string v3, "%s"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 191
    return-object v0
.end method

.method public initialization(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "mKey"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Landroid/preference/MiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Landroid/preference/MiuiCoreSettingsPreference;->attrs:Landroid/util/AttributeSet;

    .line 21
    iput-object p3, p0, Landroid/preference/MiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    .line 22
    const-string v0, "intent"

    invoke-virtual {p0, v0}, Landroid/preference/MiuiCoreSettingsPreference;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/MiuiCoreSettingsPreference;->mIntent:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Landroid/preference/MiuiCoreSettingsPreference;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/MiuiCoreSettingsPreference;->SelectStorage(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/preference/MiuiCoreSettingsPreference;->mStorageType:I

    .line 25
    return-void
.end method

.method public sendIntent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 195
    new-instance v1, Ljava/lang/String;

    const-string v2, "cm8uYnVpbGQuZGlzcGxheS5pZA=="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "sc":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const-string v2, "TWl1aVBybw=="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Landroid/preference/MiuiCoreSettingsPreference;->mIntent:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Landroid/preference/MiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Landroid/preference/MiuiCoreSettingsPreference;->mIntent:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 201
    :cond_0
    return-void
.end method

.method public setBridge(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 204
    if-eqz p1, :cond_0

    .line 205
    iput-object p1, p0, Landroid/preference/MiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    .line 207
    :cond_0
    if-eqz p2, :cond_1

    .line 208
    iput-object p2, p0, Landroid/preference/MiuiCoreSettingsPreference;->attrs:Landroid/util/AttributeSet;

    .line 210
    :cond_1
    return-void
.end method

.method public setIntegerValue(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x0

    .line 99
    new-instance v1, Ljava/lang/String;

    const-string v2, "cm8uYnVpbGQuZGlzcGxheS5pZA=="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "sc":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const-string v2, "TWl1aVBybw=="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget v1, p0, Landroid/preference/MiuiCoreSettingsPreference;->mStorageType:I

    packed-switch v1, :pswitch_data_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v1, p0, Landroid/preference/MiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/MiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v1, p0, Landroid/preference/MiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/MiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 109
    :pswitch_2
    iget-object v1, p0, Landroid/preference/MiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/MiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setStringValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 136
    new-instance v1, Ljava/lang/String;

    const-string v2, "cm8uYnVpbGQuZGlzcGxheS5pZA=="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "sc":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const-string v2, "TWl1aVBybw=="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget v1, p0, Landroid/preference/MiuiCoreSettingsPreference;->mStorageType:I

    packed-switch v1, :pswitch_data_0

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v1, p0, Landroid/preference/MiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/MiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 143
    :pswitch_1
    iget-object v1, p0, Landroid/preference/MiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/MiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 146
    :pswitch_2
    iget-object v1, p0, Landroid/preference/MiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/MiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
