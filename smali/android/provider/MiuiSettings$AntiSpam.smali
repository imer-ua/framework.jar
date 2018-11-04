.class public final Landroid/provider/MiuiSettings$AntiSpam;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AntiSpam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MiuiSettings$AntiSpam$1;,
        Landroid/provider/MiuiSettings$AntiSpam$2;,
        Landroid/provider/MiuiSettings$AntiSpam$3;
    }
.end annotation


# static fields
.field public static ACTION_SOURCE_CALL:Ljava/lang/String; = null

.field public static ACTION_SOURCE_OTHER:Ljava/lang/String; = null

.field public static ACTION_SOURCE_SMS:Ljava/lang/String; = null

.field public static final AGENT:I = 0x2

.field public static final AGENT_NUM_STATE:Ljava/lang/String; = "agent_num_state"

.field public static final AGENT_NUM_STATE_SIM_2:Ljava/lang/String; = "agent_num_state_sim_2"

.field public static final ANTISPAM_ENABLE_FOR_SIM_1:Ljava/lang/String; = "antispam_enable_for_sim_1"

.field public static final ANTISPAM_ENABLE_FOR_SIM_2:Ljava/lang/String; = "antispam_enable_for_sim_2"

.field public static final ANTISPAM_MODE:Ljava/lang/String; = "antispam_mode_enable"

.field public static final ANTISPAM_PKG:Ljava/lang/String; = "com.miui.securitycenter"

.field public static final ANTISPAM_SETTINGS_SHARED_FOR_SIMS:Ljava/lang/String; = "antispam_settings_shared_for_sims"

.field public static final AUTO_TIMER_OF_QM_ENABLE:Ljava/lang/String; = "auto_timer_of_qm_enable"

.field public static final CALL_ACT_OF_REPEATED:Ljava/lang/String; = "call_act_of_repeated"

.field private static final CALL_ACT_OF_VIP:Ljava/lang/String; = "call_act_of_vip"

.field public static final CALL_TRANSFER_NUM_STATE:Ljava/lang/String; = "call_transfer_num_state"

.field public static final CONTACT_CALL_MODE:Ljava/lang/String; = "contact_call_mode"

.field public static final CONTACT_SMS_MODE:Ljava/lang/String; = "contact_sms_mode"

.field public static final DISABLE:I = 0x0

.field public static final EMPTY_CALL_MODE:Ljava/lang/String; = "empty_call_mode"

.field public static final ENABLE:I = 0x1

.field private static final END_TIME_OF_QM:Ljava/lang/String; = "end_time_of_qm"

.field public static final FRAUD:I = 0x1

.field public static final FRAUD_NUM_STATE:Ljava/lang/String; = "fraud_num_state"

.field public static final FRAUD_NUM_STATE_SIM_2:Ljava/lang/String; = "fraud_num_state_sim_2"

.field public static final GUIDE_TYPE_DECLINE:I = 0x1

.field public static final GUIDE_TYPE_END_CALL:I = 0x2

.field public static final GUIDE_TYPE_MANUAL_MARK:I = 0x3

.field public static final HARASS:I = 0xa

.field public static final HARASS_NUM_STATE:Ljava/lang/String; = "harass_num_state"

.field public static final HARASS_NUM_STATE_SIM_2:Ljava/lang/String; = "harass_num_state_sim_2"

.field private static final HAS_NEW_ANTISPAM:Ljava/lang/String; = "has_new_antispam"

.field public static final IS_BLACKLIST_NOTIFICATION:I = 0x0

.field public static KEY_ANTISPAM_ACTION_SOURCE:Ljava/lang/String; = null

.field public static final KEY_SIM_ID:Ljava/lang/String; = "key_sim_id"

.field public static final MARK_GUIDE_AGENT:Ljava/lang/String; = "mark_guide_agent"

.field public static final MARK_GUIDE_FRAUD:Ljava/lang/String; = "mark_guide_fraud"

.field public static final MARK_GUIDE_HARASS:Ljava/lang/String; = "mark_guide_harass"

.field public static final MARK_GUIDE_IS_SET:Ljava/lang/String; = "mark_guide_is_set"

.field public static final MARK_GUIDE_SELL:Ljava/lang/String; = "mark_guide_sell"

.field public static final MARK_GUIDE_TYPE:Ljava/lang/String; = "mark_guide_type"

.field public static final MARK_GUIDE_YELLOWPAGE_CID:Ljava/lang/String; = "mark_guide_yellowpage_cid"

.field public static final MARK_NUM_GUIDE_CLASS:Ljava/lang/String; = "com.miui.antispam.ui.activity.MarkNumGuideActivity"

.field public static final MARK_PROVIDER_ID_MIUI:I = 0x18e

.field public static final MARK_TIME_AGENT:Ljava/lang/String; = "mark_time_agent"

.field public static final MARK_TIME_AGENT_SIM_2:Ljava/lang/String; = "mark_time_agent_sim_2"

.field public static final MARK_TIME_DEFAULT:I = 0x32

.field public static final MARK_TIME_FRAUD:Ljava/lang/String; = "mark_time_fraud"

.field public static final MARK_TIME_FRAUD_SIM_2:Ljava/lang/String; = "mark_time_fraud_sim_2"

.field public static final MARK_TIME_HARASS:Ljava/lang/String; = "mark_time_harass"

.field public static final MARK_TIME_HARASS_SIM_2:Ljava/lang/String; = "mark_time_harass_sim_2"

.field public static final MARK_TIME_SELL:Ljava/lang/String; = "mark_time_sell"

.field public static final MARK_TIME_SELL_SIM_2:Ljava/lang/String; = "mark_time_sell_sim_2"

.field private static final NEXT_AUTO_END_TIME_OF_QM:Ljava/lang/String; = "next_auto_end_time_of_qm"

.field private static final NEXT_AUTO_START_TIME_OF_QM:Ljava/lang/String; = "next_auto_start_time_of_qm"

.field public static final NOTIFICATION_BLOCK_TYPE:Ljava/lang/String; = "notification_block_type"

.field public static final NOTIFICATION_INTERCEPT_NUMBER:Ljava/lang/String; = "notification_intercept_number"

.field public static final NOTIFICATION_SHOW_TYPE:Ljava/lang/String; = "notification_show_type"

.field public static final NOT_BLACKLIST_NOTIFICATION:I = 0x1

.field public static final OVERSEA_CALL_MODE:Ljava/lang/String; = "oversea_call_mode"

.field public static final QUIET_MODE_ENABLE:Ljava/lang/String; = "quiet_mode_enable"

.field private static final QUIET_REPEAT_TYPE:Ljava/lang/String; = "quiet_repeat_type"

.field public static final QUIET_WRISTBAND:Ljava/lang/String; = "quiet_wristband"

.field public static final REPEATED_MARK_NUM_PERMISSION:Ljava/lang/String; = "repeated_mark_num_permission"

.field public static final SELL:I = 0x3

.field public static final SELL_NUM_STATE:Ljava/lang/String; = "sell_num_state"

.field public static final SELL_NUM_STATE_SIM_2:Ljava/lang/String; = "sell_num_state_sim_2"

.field public static final SERVICE_SMS_MODE:Ljava/lang/String; = "service_sms_mode"

.field public static final SHOW_ALL:I = 0x0

.field public static final SHOW_NONE:I = 0x2

.field public static final SHOW_NOTIFICATION_TYPE:Ljava/lang/String; = "show_notification_type"

.field public static final SHOW_NOTIFICATION_TYPE_SIM_2:Ljava/lang/String; = "show_notification_type_sim_2"

.field public static final SHOW_NOT_BLACKLIST:I = 0x1

.field public static final SIM_ID_1:I = 0x1

.field public static final SIM_ID_2:I = 0x2

.field public static final SMS_CLASSIFIER_AUTO_UPDATE:Ljava/lang/String; = "sms_classifier_auto_update"

.field public static final SMS_CLASSIFIER_UPDATE_TIME:Ljava/lang/String; = "sms_classifier_update_time"

.field private static final START_TIME_OF_QM:Ljava/lang/String; = "start_time_of_qm"

.field public static final STRANGER_CALL_MODE:Ljava/lang/String; = "stranger_call_mode"

.field public static final STRANGER_SMS_MODE:Ljava/lang/String; = "stranger_sms_mode"

.field public static final VIP_ALL_CONTACTS:I = 0x0

.field public static final VIP_CUSTOM:I = 0x2

.field private static final VIP_LIST_FOR_QM:Ljava/lang/String; = "vip_list_for_qm"

.field public static final VIP_STAR_CONTACTS:I = 0x1

.field public static final mapIdToBlockType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final mapIdToMarkTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final mapIdToState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3764
    const-string/jumbo v0, "antispam_action_source"

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->KEY_ANTISPAM_ACTION_SOURCE:Ljava/lang/String;

    .line 3768
    const-string/jumbo v0, "action_source_sms"

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->ACTION_SOURCE_SMS:Ljava/lang/String;

    .line 3772
    const-string/jumbo v0, "action_source_call"

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->ACTION_SOURCE_CALL:Ljava/lang/String;

    .line 3776
    const-string/jumbo v0, "action_source_other"

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->ACTION_SOURCE_OTHER:Ljava/lang/String;

    .line 3785
    new-instance v0, Landroid/provider/MiuiSettings$AntiSpam$1;

    invoke-direct {v0}, Landroid/provider/MiuiSettings$AntiSpam$1;-><init>()V

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToState:Ljava/util/HashMap;

    .line 3806
    new-instance v0, Landroid/provider/MiuiSettings$AntiSpam$2;

    invoke-direct {v0}, Landroid/provider/MiuiSettings$AntiSpam$2;-><init>()V

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToBlockType:Ljava/util/HashMap;

    .line 3816
    new-instance v0, Landroid/provider/MiuiSettings$AntiSpam$3;

    invoke-direct {v0}, Landroid/provider/MiuiSettings$AntiSpam$3;-><init>()V

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToMarkTime:Ljava/util/HashMap;

    .line 3503
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEndTimeForQuietMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4265
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4266
    const-string/jumbo v1, "end_time_of_qm"

    const/16 v2, 0x1a4

    .line 4265
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMarkedNumberBlockType(I)I
    .locals 2
    .param p0, "cid"    # I

    .prologue
    .line 3868
    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToBlockType:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getMode(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 3837
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNextAutoEndTime(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4309
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4310
    const-string/jumbo v1, "next_auto_end_time_of_qm"

    const-wide/16 v2, 0x0

    .line 4309
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNextAutoStartTime(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4293
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4294
    const-string/jumbo v1, "next_auto_start_time_of_qm"

    const-wide/16 v2, 0x0

    .line 4293
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNotificationType(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I

    .prologue
    .line 4402
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4403
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "show_notification_type"

    .line 4404
    :goto_0
    const/4 v2, 0x0

    .line 4402
    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 4403
    :cond_0
    const-string/jumbo v0, "show_notification_type_sim_2"

    goto :goto_0
.end method

.method public static getQuietRepeatType(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4331
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4332
    const-string/jumbo v1, "quiet_repeat_type"

    const/16 v2, 0x7f

    .line 4331
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSMSClassifierUpdateTime(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3974
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3975
    const-string/jumbo v1, "sms_classifier_update_time"

    const-wide/16 v2, 0x0

    .line 3974
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getStartTimeForQuietMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4244
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4245
    const-string/jumbo v1, "start_time_of_qm"

    const/16 v2, 0x564

    .line 4244
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getState(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    .line 3852
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/provider/ExtraSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getVipListForQuietMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4179
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4180
    const-string/jumbo v1, "vip_list_for_qm"

    const/4 v2, 0x0

    .line 4179
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static hasNewAntispam(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4417
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4418
    const-string/jumbo v1, "has_new_antispam"

    const/4 v2, 0x0

    .line 4417
    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAntiSpam(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4002
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamSettingsSharedForSims(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4003
    invoke-static {p0, v2}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v2

    return v2

    .line 4005
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    .line 4006
    .local v0, "isSim1Active":Z
    :goto_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    .line 4007
    .local v1, "isSim2Active":Z
    :goto_1
    if-nez v0, :cond_1

    if-eqz v1, :cond_7

    .line 4008
    :cond_1
    invoke-static {p0, v2}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_5

    .line 4009
    :cond_2
    invoke-static {p0, v5}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4008
    .end local v1    # "isSim2Active":Z
    :goto_2
    return v1

    .line 4005
    .end local v0    # "isSim1Active":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isSim1Active":Z
    goto :goto_0

    .line 4006
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isSim2Active":Z
    goto :goto_1

    :cond_5
    move v1, v2

    .line 4008
    goto :goto_2

    :cond_6
    move v1, v3

    .line 4009
    goto :goto_2

    .line 4011
    :cond_7
    invoke-static {p0, v2}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {p0, v5}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v2

    :cond_8
    return v2
.end method

.method public static isAntiSpamEnableForSim(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 4024
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4025
    if-ne p1, v2, :cond_0

    const-string/jumbo v0, "antispam_enable_for_sim_1"

    .line 4024
    :goto_0
    invoke-static {v1, v0, v2}, Lmiui/provider/ExtraSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 4025
    :cond_0
    const-string/jumbo v0, "antispam_enable_for_sim_2"

    goto :goto_0
.end method

.method public static isAntiSpamSettingsSharedForSims(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4048
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4049
    const-string/jumbo v1, "antispam_settings_shared_for_sims"

    const/4 v2, 0x1

    .line 4048
    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4204
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4205
    const-string/jumbo v3, "auto_timer_of_qm_enable"

    .line 4204
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isMarkNumBlockOpen(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3935
    if-ne p1, v0, :cond_2

    .line 3936
    const-string/jumbo v2, "fraud_num_state"

    invoke-static {p0, v2, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 3937
    const-string/jumbo v2, "agent_num_state"

    invoke-static {p0, v2, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 3936
    :cond_0
    :goto_0
    return v0

    .line 3938
    :cond_1
    const-string/jumbo v2, "sell_num_state"

    invoke-static {p0, v2, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 3939
    const-string/jumbo v2, "harass_num_state"

    invoke-static {p0, v2, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 3940
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 3941
    const-string/jumbo v2, "fraud_num_state_sim_2"

    invoke-static {p0, v2, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 3942
    const-string/jumbo v2, "agent_num_state_sim_2"

    invoke-static {p0, v2, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    .line 3941
    :cond_3
    :goto_1
    return v0

    .line 3943
    :cond_4
    const-string/jumbo v2, "sell_num_state_sim_2"

    invoke-static {p0, v2, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 3944
    const-string/jumbo v2, "harass_num_state_sim_2"

    invoke-static {p0, v2, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_1

    .line 3946
    :cond_5
    return v1
.end method

.method private static isMarkNumBlockSet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3896
    const-string/jumbo v0, "mark_guide_is_set"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getState(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMarkingTypeGuided(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "markingType"    # Ljava/lang/String;

    .prologue
    .line 3915
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getState(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isQuietModeEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4084
    const/4 v0, -0x3

    .line 4083
    invoke-static {p0, v0}, Landroid/app/ExtraNotificationManager;->isQuietModeEnable(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isQuietModeEnable(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 4092
    invoke-static {p0, p1}, Landroid/app/ExtraNotificationManager;->isQuietModeEnable(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isQuietModeEnableForCurrentUser(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4119
    const/4 v6, 0x0

    .line 4121
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4122
    const-string/jumbo v1, "content://antispamCommon/zenmode"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4123
    const-string/jumbo v2, "1"

    .line 4122
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4123
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4121
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 4124
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 4125
    const/4 v0, 0x1

    .line 4130
    if-eqz v6, :cond_0

    .line 4131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4125
    :cond_0
    return v0

    .line 4130
    :cond_1
    if-eqz v6, :cond_2

    .line 4131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4134
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 4127
    .local v6, "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 4128
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4129
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public static isQuietWristband(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4142
    const-string/jumbo v3, "quiet_wristband"

    .line 4141
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isRepeatedCallActionEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4365
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->isRepeatedCallEnable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isSMSClassifierAutoUpdate(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3983
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3984
    const-string/jumbo v1, "sms_classifier_auto_update"

    const/4 v2, 0x1

    .line 3983
    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isVipCallActionEnable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4345
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4346
    const-string/jumbo v3, "call_act_of_vip"

    .line 4345
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static mapIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 3878
    sparse-switch p0, :sswitch_data_0

    .line 3888
    const-string/jumbo v0, ""

    return-object v0

    .line 3880
    :sswitch_0
    const-string/jumbo v0, "mark_guide_fraud"

    return-object v0

    .line 3882
    :sswitch_1
    const-string/jumbo v0, "mark_guide_agent"

    return-object v0

    .line 3884
    :sswitch_2
    const-string/jumbo v0, "mark_guide_sell"

    return-object v0

    .line 3886
    :sswitch_3
    const-string/jumbo v0, "mark_guide_harass"

    return-object v0

    .line 3878
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method public static resetMarkedNumberBlockSettings(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 4068
    const-string/jumbo v0, "fraud_num_state"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4069
    const-string/jumbo v0, "agent_num_state"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4070
    const-string/jumbo v0, "sell_num_state"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4071
    const-string/jumbo v0, "harass_num_state"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4073
    const-string/jumbo v0, "fraud_num_state_sim_2"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4074
    const-string/jumbo v0, "agent_num_state_sim_2"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4075
    const-string/jumbo v0, "sell_num_state_sim_2"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4076
    const-string/jumbo v0, "harass_num_state_sim_2"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4067
    return-void
.end method

.method public static setAntiSpamEnableForSim(Landroid/content/Context;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 4037
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4038
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "antispam_enable_for_sim_1"

    .line 4037
    :goto_0
    invoke-static {v1, v0, p2}, Lmiui/provider/ExtraSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 4036
    return-void

    .line 4038
    :cond_0
    const-string/jumbo v0, "antispam_enable_for_sim_2"

    goto :goto_0
.end method

.method public static setAntiSpamSettingsSharedForSims(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .prologue
    .line 4059
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4060
    const-string/jumbo v1, "antispam_settings_shared_for_sims"

    .line 4059
    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 4058
    return-void
.end method

.method public static setAutoTimerOfQuietMode(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 4213
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "auto_timer_of_qm_enable"

    .line 4214
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 4213
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4212
    return-void

    .line 4214
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setEndTimeForQuietMode(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minute"    # I

    .prologue
    .line 4276
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4277
    const-string/jumbo v1, "end_time_of_qm"

    .line 4276
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4275
    return-void
.end method

.method public static setHasNewAntispam(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .prologue
    .line 4425
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4426
    const-string/jumbo v1, "has_new_antispam"

    .line 4425
    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 4424
    return-void
.end method

.method public static setMarkNumBlockSet(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .prologue
    .line 3903
    const-string/jumbo v0, "mark_guide_is_set"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$AntiSpam;->setState(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3902
    return-void
.end method

.method public static setMarkingTypeGuided(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "markingType"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 3927
    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$AntiSpam;->setState(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3926
    return-void
.end method

.method public static setMode(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "MODE"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 3845
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3844
    return-void
.end method

.method public static setNextAutoEndTime(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 4301
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4302
    const-string/jumbo v1, "next_auto_end_time_of_qm"

    .line 4301
    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 4300
    return-void
.end method

.method public static setNextAutoStartTime(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 4285
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4286
    const-string/jumbo v1, "next_auto_start_time_of_qm"

    .line 4285
    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 4284
    return-void
.end method

.method public static setNotificationType(Landroid/content/Context;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "simId"    # I

    .prologue
    .line 4393
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4394
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string/jumbo v0, "show_notification_type"

    .line 4393
    :goto_0
    invoke-static {v1, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4392
    return-void

    .line 4394
    :cond_0
    const-string/jumbo v0, "show_notification_type_sim_2"

    goto :goto_0
.end method

.method public static setQuietMode(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 4101
    const/4 v0, -0x3

    .line 4100
    invoke-static {p0, p1, v0}, Landroid/app/ExtraNotificationManager;->setQuietMode(Landroid/content/Context;ZI)V

    .line 4099
    return-void
.end method

.method public static setQuietMode(Landroid/content/Context;ZI)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 4109
    invoke-static {p0, p1, p2}, Landroid/app/ExtraNotificationManager;->setQuietMode(Landroid/content/Context;ZI)V

    .line 4108
    return-void
.end method

.method public static setQuietRepeatType(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 4320
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4321
    const-string/jumbo v1, "quiet_repeat_type"

    .line 4320
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4319
    return-void
.end method

.method public static setQuietWristband(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 4149
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "quiet_wristband"

    .line 4150
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 4149
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4148
    return-void

    .line 4150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setRepeatedCallActionEnable(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 4375
    invoke-static {p0, p1}, Landroid/app/ExtraNotificationManager;->setRepeatedCallEnable(Landroid/content/Context;Z)V

    .line 4374
    return-void
.end method

.method public static setSMSClassifierAutoUpdate(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "autoUpdate"    # Z

    .prologue
    .line 3991
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3992
    const-string/jumbo v1, "sms_classifier_auto_update"

    .line 3991
    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 3990
    return-void
.end method

.method public static setSMSClassifierUpdateTime(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 3966
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3967
    const-string/jumbo v1, "sms_classifier_update_time"

    .line 3966
    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 3965
    return-void
.end method

.method public static setStartTimeForQuietMode(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minute"    # I

    .prologue
    .line 4255
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4256
    const-string/jumbo v1, "start_time_of_qm"

    .line 4255
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4254
    return-void
.end method

.method public static setState(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 3860
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/provider/ExtraSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 3859
    return-void
.end method

.method public static setVipCallActionEnable(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 4356
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "call_act_of_vip"

    .line 4357
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 4356
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4355
    return-void

    .line 4357
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setVipListForQuietMode(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # I

    .prologue
    .line 4191
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vip_list_for_qm"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4190
    return-void
.end method

.method public static shouldShowGuidingDialog(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3954
    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3955
    invoke-static {p0, v2}, Landroid/provider/MiuiSettings$AntiSpam;->isMarkNumBlockOpen(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 3954
    :goto_0
    return v0

    .line 3956
    :cond_1
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$AntiSpam;->isMarkNumBlockOpen(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3957
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isMarkNumBlockSet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3958
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$AntiSpam;->isMarkingTypeGuided(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method
