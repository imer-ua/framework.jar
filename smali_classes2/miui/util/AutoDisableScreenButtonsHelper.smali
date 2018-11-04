.class public Lmiui/util/AutoDisableScreenButtonsHelper;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsHelper.java"


# static fields
.field public static final CLOUD_SETTING:Ljava/lang/String; = "auto_disable_screen_button_cloud_setting"

.field public static final ENABLE_ASK:I = 0x1

.field public static final ENABLE_AUTO:I = 0x2

.field public static final MODULE_AUTO_DIS_NAV_BTN:Ljava/lang/String; = "AutoDisableNavigationButton1"

.field public static final NO:I = 0x3

.field public static final NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AutoDisableHelper"

.field private static mCloudJson:Lorg/json/JSONObject;

.field private static mUserJson:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkJson(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    if-nez p0, :cond_0

    .line 109
    return-void

    .line 111
    :cond_0
    sget-object v2, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    if-nez v2, :cond_1

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 113
    const-string/jumbo v3, "auto_disable_screen_button"

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v4

    .line 112
    invoke-static {v2, v3, v4}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "userSetting":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 115
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sput-object v2, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    .line 120
    .end local v1    # "userSetting":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v2, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    if-nez v2, :cond_2

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 122
    const-string/jumbo v3, "auto_disable_screen_button_cloud_setting"

    .line 121
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "cloudConfig":Ljava/lang/String;
    invoke-static {v0}, Lmiui/util/AutoDisableScreenButtonsHelper;->updateCloudJson(Ljava/lang/String;)V

    .line 107
    .end local v0    # "cloudConfig":Ljava/lang/String;
    :cond_2
    return-void

    .line 117
    .restart local v1    # "userSetting":Ljava/lang/String;
    :cond_3
    invoke-static {v1}, Lmiui/util/AutoDisableScreenButtonsHelper;->updateUserJson(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAppFlag(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0, p1}, Lmiui/util/AutoDisableScreenButtonsHelper;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 44
    .local v1, "flagObj":Ljava/lang/Object;
    if-nez v1, :cond_0

    const/4 v0, 0x3

    .line 45
    .end local v1    # "flagObj":Ljava/lang/Object;
    .local v0, "flag":I
    :goto_0
    return v0

    .line 44
    .end local v0    # "flag":I
    .restart local v1    # "flagObj":Ljava/lang/Object;
    :cond_0
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "flagObj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-static {p0}, Lmiui/util/AutoDisableScreenButtonsHelper;->checkJson(Landroid/content/Context;)V

    .line 51
    :try_start_0
    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 53
    :cond_0
    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    return-object v2
.end method

.method public static setFlag(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .prologue
    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiui/util/AutoDisableScreenButtonsHelper;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public static setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 68
    invoke-static {p0}, Lmiui/util/AutoDisableScreenButtonsHelper;->checkJson(Landroid/content/Context;)V

    .line 69
    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 71
    :try_start_0
    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 76
    const-string/jumbo v2, "auto_disable_screen_button"

    .line 77
    sget-object v3, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v4

    .line 75
    invoke-static {v1, v2, v3, v4}, Landroid/provider/MiuiSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 67
    :cond_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateCloudJson(Ljava/lang/String;)V
    .locals 2
    .param p0, "config"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 94
    if-eqz v1, :cond_1

    .line 96
    :cond_0
    return-void

    .line 99
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateUserJson(Ljava/lang/String;)V
    .locals 2
    .param p0, "config"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 82
    if-eqz v1, :cond_1

    .line 84
    :cond_0
    return-void

    .line 87
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
