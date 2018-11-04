.class public final Landroid/provider/MiuiSettings$XSpace;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XSpace"
.end annotation


# static fields
.field public static final CROSS_PROFILE_SECURE_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SETTING_ALWAYS_ASK:I = 0x0

.field public static final DEFAULT_SETTING_DEFAULT:I = 0x0

.field public static final DEFAULT_SETTING_MAIN:I = 0x1

.field public static final DEFAULT_SETTING_XSPACE:I = 0x2

.field public static final KEY_DEFAULT_GUIDE_TIMES:Ljava/lang/String; = "key_default_guide_times"

.field public static final KEY_WEIBO_OPEN:Ljava/lang/String; = "com.sina.weibo.SplashActivity"

.field public static final KEY_WEIBO_SEND:Ljava/lang/String; = "com.sina.weibo.composerinde.ComposerDispatchActivity"

.field public static final KEY_WEIBO_SHARE:Ljava/lang/String; = "com.sina.weibo.SSOActivity"

.field public static final KEY_WEIXIN_OPEN:Ljava/lang/String; = "com.tencent.mm.ui.LauncherUI"

.field public static final KEY_WEIXIN_PAY:Ljava/lang/String; = "com.tencent.mm.plugin.base.stub.WXPayEntryActivity"

.field public static final KEY_WEIXIN_SEND_TO_CIRCLE:Ljava/lang/String; = "com.tencent.mm.ui.tools.ShareToTimeLineUI"

.field public static final KEY_WEIXIN_SEND_TO_FRIEND:Ljava/lang/String; = "com.tencent.mm.ui.tools.ShareImgUI"

.field public static final KEY_WEIXIN_SHARE:Ljava/lang/String; = "com.tencent.mm.plugin.base.stub.WXEntryActivity"

.field public static final KEY_XSPACE_BOOT_GUIDE_TIMES:Ljava/lang/String; = "key_xspace_boot_guide_times"

.field public static final KEY_XSPACE_COMPETE_GUIDE_TIMES:Ljava/lang/String; = "key_xspace_compete_guide_times"

.field public static final KEY_XSPACE_QQ_LOGIN:Ljava/lang/String; = "com.tencent.open.agent.AgentActivity"

.field public static final KEY_XSPACE_QQ_OPEN:Ljava/lang/String; = "com.tencent.mobileqq.activity.SplashActivity"

.field public static final KEY_XSPACE_QQ_SEND:Ljava/lang/String; = "com.tencent.mobileqq.activity.qqSendActivity"

.field public static final KEY_XSPACE_QQ_SEND_TO_FRIEND:Ljava/lang/String; = "com.tencent.mobileqq.activity.JumpActivity"

.field public static final KEY_XSPACE_QQ_SEND_TO_PC:Ljava/lang/String; = "com.tencent.mobileqq.activity.qfileJumpActivity"

.field public static final PARAM_INTENT_KEY_COMPETE_XSPACE_GUIDE:Ljava/lang/String; = "param_intent_key_compete_xspace_guide"

.field public static final PARAM_INTENT_KEY_DEFAULT:Ljava/lang/String; = "param_intent_key_default"

.field public static final PARAM_INTENT_KEY_DEFAULT_ASKTYPE:Ljava/lang/String; = "param_intent_key_default_asktype"

.field public static final PARAM_INTENT_KEY_HAS_EXTRA:Ljava/lang/String; = "param_intent_key_has_extra"

.field public static final PARAM_INTENT_VALUE_COMPETE_BOOT_XSPACE_GUIDE:Ljava/lang/String; = "param_intent_value_compete_boot_xspace_guide"

.field public static final PARAM_INTENT_VALUE_COMPETE_INSTALL_XSPACE_GUIDE:Ljava/lang/String; = "param_intent_value_compete_install_xspace_guide"

.field public static final PARAM_INTENT_VALUE_COMPETE_TIMING_XSPACE_GUIDE:Ljava/lang/String; = "param_intent_value_compete_timing_xspace_guide"

.field public static final PARAM_INTENT_VALUE_DEFAULT:Ljava/lang/String; = "param_intent_value_default"

.field public static final PARAM_INTENT_VALUE_HAS_EXTRA:Ljava/lang/String; = "param_intent_value_has_extra"

.field public static final PARAM_INTENT_VALUE_UNINSTALL_XSPACE_USER:Ljava/lang/String; = "param_intent_value_uninstall_xspace_user"

.field public static final PREKEY_XSPACE_QQ_LOGIN:Ljava/lang/String; = "qq_login"

.field public static final PREKEY_XSPACE_QQ_OPEN:Ljava/lang/String; = "qq_open"

.field public static final PREKEY_XSPACE_QQ_SEND:Ljava/lang/String; = "qq_send"

.field public static final PREKEY_XSPACE_WEIBO_OPEN:Ljava/lang/String; = "weibo_open"

.field public static final PREKEY_XSPACE_WEIBO_SEND:Ljava/lang/String; = "weibo_send"

.field public static final PREKEY_XSPACE_WEIXIN_OPEN:Ljava/lang/String; = "weixin_open"

.field public static final PREKEY_XSPACE_WEIXIN_PAY:Ljava/lang/String; = "weixin_pay"

.field public static final PREKEY_XSPACE_WEIXIN_SHARE:Ljava/lang/String; = "weixin_share"

.field public static final QQ_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mobileqq"

.field public static final WEIBO_PACKAGE_NAME:Ljava/lang/String; = "com.sina.weibo"

.field public static final WEIXIN_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mm"

.field public static sCompeteXSpaceApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sSupportDefaultSettingApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4443
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/MiuiSettings$XSpace;->CROSS_PROFILE_SECURE_SETTINGS:Ljava/util/Set;

    .line 4446
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->CROSS_PROFILE_SECURE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "lock_screen_allow_private_notifications"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4447
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->CROSS_PROFILE_SECURE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "lock_screen_show_notifications"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/provider/MiuiSettings$XSpace;->sSupportDefaultSettingApps:Ljava/util/ArrayList;

    .line 4505
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sSupportDefaultSettingApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.mm.plugin.base.stub.WXPayEntryActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4506
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sSupportDefaultSettingApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4507
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sSupportDefaultSettingApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4508
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sSupportDefaultSettingApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4509
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sSupportDefaultSettingApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.mm.ui.LauncherUI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4510
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sSupportDefaultSettingApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.sina.weibo.composerinde.ComposerDispatchActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4511
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sSupportDefaultSettingApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.sina.weibo.SSOActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4512
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sSupportDefaultSettingApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.sina.weibo.SplashActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4513
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sSupportDefaultSettingApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4514
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sSupportDefaultSettingApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.mobileqq.activity.qfileJumpActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4515
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sSupportDefaultSettingApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4516
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sSupportDefaultSettingApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.mobileqq.activity.SplashActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/provider/MiuiSettings$XSpace;->sCompeteXSpaceApps:Ljava/util/ArrayList;

    .line 4612
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sCompeteXSpaceApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.excelliance.multiaccount"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4613
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sCompeteXSpaceApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.lbe.parallel.intl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4614
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sCompeteXSpaceApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.parallel.space.lite"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4615
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sCompeteXSpaceApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "info.cloneapp.mochat.in.goast"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4616
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sCompeteXSpaceApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.jiubang.commerce.gomultiple"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4617
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sCompeteXSpaceApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.applisto.appcloner"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4618
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sCompeteXSpaceApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.trigtech.privateme"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4619
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sCompeteXSpaceApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.polestar.multiaccount"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4620
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sCompeteXSpaceApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.vaibhav.accountsmanager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4621
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sCompeteXSpaceApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.in.parallel.accounts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4622
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sCompeteXSpaceApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.lbe.parallel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4623
    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sCompeteXSpaceApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.excelliance.dualaid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4435
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static belongToCrossXSpaceSecureSettings(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "setting"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 4451
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->CROSS_PROFILE_SECURE_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAskType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4542
    :try_start_0
    const-string/jumbo v1, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4543
    :cond_0
    const-string/jumbo p1, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    .line 4545
    :cond_1
    const-string/jumbo v1, "com.sina.weibo.composerinde.ComposerDispatchActivity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4546
    const-string/jumbo p1, "com.sina.weibo.SSOActivity"

    .line 4548
    :cond_2
    const-string/jumbo v1, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "com.tencent.mobileqq.activity.qfileJumpActivity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4549
    :cond_3
    const-string/jumbo p1, "com.tencent.mobileqq.activity.qqSendActivity"

    .line 4551
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4552
    :catch_0
    move-exception v0

    .line 4554
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    return v3
.end method

.method public static getGuideNotificationTimes(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4629
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4630
    :catch_0
    move-exception v0

    .line 4632
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    return v3
.end method

.method public static getSettingAppType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "preKey"    # Ljava/lang/String;

    .prologue
    .line 4559
    const-string/jumbo v0, ""

    .line 4560
    .local v0, "askType":Ljava/lang/String;
    const-string/jumbo v1, "weixin_pay"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4561
    const-string/jumbo v0, "com.tencent.mm.plugin.base.stub.WXPayEntryActivity"

    .line 4577
    :cond_0
    :goto_0
    return-object v0

    .line 4562
    :cond_1
    const-string/jumbo v1, "weixin_share"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4563
    const-string/jumbo v0, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    goto :goto_0

    .line 4564
    :cond_2
    const-string/jumbo v1, "weixin_open"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4565
    const-string/jumbo v0, "com.tencent.mm.ui.LauncherUI"

    goto :goto_0

    .line 4566
    :cond_3
    const-string/jumbo v1, "weibo_send"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4567
    const-string/jumbo v0, "com.sina.weibo.SSOActivity"

    goto :goto_0

    .line 4568
    :cond_4
    const-string/jumbo v1, "weibo_open"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4569
    const-string/jumbo v0, "com.sina.weibo.SplashActivity"

    goto :goto_0

    .line 4570
    :cond_5
    const-string/jumbo v1, "qq_send"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4571
    const-string/jumbo v0, "com.tencent.mobileqq.activity.qqSendActivity"

    goto :goto_0

    .line 4572
    :cond_6
    const-string/jumbo v1, "qq_login"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4573
    const-string/jumbo v0, "com.tencent.open.agent.AgentActivity"

    goto :goto_0

    .line 4574
    :cond_7
    const-string/jumbo v1, "qq_open"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4575
    const-string/jumbo v0, "com.tencent.mobileqq.activity.SplashActivity"

    goto :goto_0
.end method

.method public static resetDefaultSetting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 4582
    const-string/jumbo v0, "com.tencent.mm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4583
    const-string/jumbo v0, "com.tencent.mm.plugin.base.stub.WXPayEntryActivity"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$XSpace;->setAskType(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4584
    const-string/jumbo v0, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$XSpace;->setAskType(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4585
    const-string/jumbo v0, "com.tencent.mm.ui.LauncherUI"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$XSpace;->setAskType(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4581
    :cond_0
    :goto_0
    return-void

    .line 4586
    :cond_1
    const-string/jumbo v0, "com.sina.weibo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4587
    const-string/jumbo v0, "com.sina.weibo.SSOActivity"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$XSpace;->setAskType(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4588
    const-string/jumbo v0, "com.sina.weibo.SplashActivity"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$XSpace;->setAskType(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 4589
    :cond_2
    const-string/jumbo v0, "com.tencent.mobileqq"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4590
    const-string/jumbo v0, "com.tencent.mobileqq.activity.qqSendActivity"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$XSpace;->setAskType(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4591
    const-string/jumbo v0, "com.tencent.open.agent.AgentActivity"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$XSpace;->setAskType(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4592
    const-string/jumbo v0, "com.tencent.mobileqq.activity.SplashActivity"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$XSpace;->setAskType(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static setAskType(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "askType"    # I

    .prologue
    .line 4527
    const-string/jumbo v0, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4528
    :cond_0
    const-string/jumbo p1, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    .line 4530
    :cond_1
    const-string/jumbo v0, "com.sina.weibo.composerinde.ComposerDispatchActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4531
    const-string/jumbo p1, "com.sina.weibo.SSOActivity"

    .line 4533
    :cond_2
    const-string/jumbo v0, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "com.tencent.mobileqq.activity.qfileJumpActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4534
    :cond_3
    const-string/jumbo p1, "com.tencent.mobileqq.activity.qqSendActivity"

    .line 4536
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4526
    return-void
.end method

.method public static setGuideNotificationTimes(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "times"    # I

    .prologue
    .line 4637
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4636
    return-void
.end method
