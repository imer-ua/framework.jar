.class public Landroid/provider/MiuiSettings$Telephony;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Telephony"
.end annotation


# static fields
.field public static final ADD_ZERO_PREFIX_SWITCH:Ljava/lang/String; = "button_add_zero_prefix"

.field public static final AUTOIP_PREFIX:Ljava/lang/String; = "autoip_prefix"

.field public static final AUTOIP_SWITCH:Ljava/lang/String; = "button_autoip"

.field public static final AUTO_ANSWER_DEFAULT_DELAY_TIME:I = 0x3

.field public static final AUTO_ANSWER_DELAY_TIME:Ljava/lang/String; = "auto_answer_delay_time"

.field public static final AUTO_ANSWER_SCENARIO:Ljava/lang/String; = "auto_answer_scenario"

.field public static final AUTO_ANSWER_SCENARIO_ALWAYS:I = 0x0

.field public static final AUTO_ANSWER_SCENARIO_BLUETOOTH_ONLY:I = 0x2

.field public static final AUTO_ANSWER_SCENARIO_HEADSET_BLUETOOTH:I = 0x3

.field public static final AUTO_ANSWER_SCENARIO_HEADSET_ONLY:I = 0x1

.field public static final AUTO_COUNTRY_CODE:Ljava/lang/String; = "auto_country_code"

.field public static final AUTO_IP_SUPPORT_LOCAL_NUMBERS:Ljava/lang/String; = "button_auto_ip_support_local_numbers"

.field private static final CALL_WAITING_TONE:Ljava/lang/String; = "call_waiting_tone"

.field public static final CALL_WAITING_TONE_CONTINUOUSLY:I = 0x0

.field public static final CALL_WAITING_TONE_TWICE_AND_VIBRATE:I = 0x2

.field public static final CALL_WAITING_TONE_TWICE_ONLY:I = 0x1

.field public static final CONNECT_DISCONNECT_VIBRATE:Ljava/lang/String; = "button_connect_disconnect_vibrate"

.field public static final CONTACT_COUNTRYCODE:Ljava/lang/String; = "persist.radio.countrycode"

.field public static final CURRENT_AREACODE:Ljava/lang/String; = "current_areacode"

.field public static final ENABLED_ANTISPAM_STRANGE:Ljava/lang/String; = "button_antispam_strange"

.field public static final ENABLED_AUTO_ANSWER:Ljava/lang/String; = "button_auto_answer"

.field public static final ENABLED_AUTO_RECORD:Ljava/lang/String; = "button_auto_record_call"

.field public static final ENABLED_AUTO_REDIAL:Ljava/lang/String; = "button_auto_redial"

.field public static final ENABLED_HANDON_RINGER:Ljava/lang/String; = "button_handon_ringer"

.field public static final ENABLED_INCOMING_VIDEO_SHOW:Ljava/lang/String; = "button_incoming_video_show"

.field public static final ENABLED_RECORD_NOTIFY:Ljava/lang/String; = "button_call_recording_notification"

.field public static final ENABLED_TURN_OVER_MUTE:Ljava/lang/String; = "button_turn_over_mute"

.field public static final ENABLED_UNKNOWN_NUMBER_RECORD:Ljava/lang/String; = "button_record_unknown_number"

.field public static final ENABLED_VOICE_SERVICE:Ljava/lang/String; = "button_voice_service"

.field public static final ENABLED_YELLOWPAGE_RECORD:Ljava/lang/String; = "button_record_yellowpage_number"

.field public static final ENABLE_CRESCENDO_RINGER:Ljava/lang/String; = "button_crescendo_ringer"

.field public static final ENABLE_PROXIMITY_KEY:Ljava/lang/String; = "button_enable_proximity"

.field public static final ENABLE_REJECT_VIA_SMS_KEY:Ljava/lang/String; = "button_enable_reject_via_sms"

.field public static final ENABLE_TELOCATION:Ljava/lang/String; = "enable_telocation"

.field public static final IVR_MO_AREA_CODE_SLOT_1:Ljava/lang/String; = "ivr_mo_area_code_slot_1"

.field public static final IVR_MO_AREA_CODE_SLOT_2:Ljava/lang/String; = "ivr_mo_area_code_slot_2"

.field public static final IVR_TYPE_SLOT_1:Ljava/lang/String; = "ivr_type_slot_1"

.field public static final IVR_TYPE_SLOT_2:Ljava/lang/String; = "ivr_type_slot_2"

.field public static final MISSED_CALL_NOTIFY_TIMES:Ljava/lang/String; = "button_missed_call_notify_times"

.field public static final RECORD_SCENARIO:Ljava/lang/String; = "radio_record_scenario"

.field public static final RECORD_WHITE_LIST:Ljava/lang/String; = "record_white_list"

.field public static final REJECT_VIA_SMS_RESPONSE_1:Ljava/lang/String; = "reject_via_sms_response_1"

.field public static final REJECT_VIA_SMS_RESPONSE_2:Ljava/lang/String; = "reject_via_sms_response_2"

.field public static final REJECT_VIA_SMS_RESPONSE_3:Ljava/lang/String; = "reject_via_sms_response_3"

.field public static final REJECT_VIA_SMS_RESPONSE_4:Ljava/lang/String; = "reject_via_sms_response_4"

.field public static final VOLTE_FEATURE_DISABLED:Ljava/lang/String; = "volte_feature_disabled"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoAnswerCallDelayTime(Landroid/content/ContentResolver;)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5559
    const-string/jumbo v0, "auto_answer_delay_time"

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAutoAnswerCallScenario(Landroid/content/ContentResolver;)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5573
    const-string/jumbo v0, "auto_answer_scenario"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "defaultPrefix"    # Ljava/lang/String;

    .prologue
    .line 5011
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/MiuiSettings$Telephony;->getAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "defaultPrefix"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 5035
    const-string/jumbo v0, "autoip_prefix"

    .line 5036
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p2, :cond_0

    .line 5037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5039
    :cond_0
    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCallWaitingTone(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4932
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4933
    const-string/jumbo v2, "call_waiting_tone"

    const/4 v3, 0x0

    .line 4932
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4934
    .local v0, "index":I
    const-string/jumbo v1, "lithium"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4935
    const/4 v0, 0x0

    .line 4937
    :cond_0
    return v0
.end method

.method public static getContactCountrycode(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 4991
    const-string/jumbo v0, "persist.radio.countrycode"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentAeraCode(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "slotId"    # I

    .prologue
    .line 4961
    const-string/jumbo v0, "current_areacode"

    .line 4962
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p1, :cond_0

    .line 4963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4965
    :cond_0
    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEnabledAutoRedial(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5178
    const-string/jumbo v0, "button_auto_redial"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getEnabledVoiceService(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5535
    const-string/jumbo v0, "button_voice_service"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getIVRParameterValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 5343
    const-string/jumbo v0, ""

    invoke-static {p0, p1, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMissedCallNotifyTimes(Landroid/content/ContentResolver;)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5159
    const-string/jumbo v0, "button_missed_call_notify_times"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRecordScenario(Landroid/content/ContentResolver;)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5256
    const-string/jumbo v0, "radio_record_scenario"

    const-string/jumbo v1, "0"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getRecordWhiteList(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5276
    const-string/jumbo v0, "record_white_list"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRejectViaSmsResponse(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 5508
    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVibrateKey(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5140
    const-string/jumbo v0, "button_connect_disconnect_vibrate"

    const-string/jumbo v1, "100"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAntispamStangerEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5121
    const-string/jumbo v0, "button_antispam_strange"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAutoAddZeroPrefix(Landroid/content/ContentResolver;I)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 5413
    const-string/jumbo v0, "button_add_zero_prefix"

    .line 5414
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p1, :cond_0

    .line 5415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5417
    :cond_0
    invoke-static {p0, v0, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isAutoAnswerCall(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5543
    const-string/jumbo v0, "button_auto_answer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAutoCountryCodeEnable(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5370
    const-string/jumbo v0, "auto_country_code"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAutoIpEnable(Landroid/content/ContentResolver;I)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 5387
    const-string/jumbo v0, "button_autoip"

    .line 5388
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p1, :cond_0

    .line 5389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5391
    :cond_0
    invoke-static {p0, v0, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isAutoIpSupportLocalNum(Landroid/content/ContentResolver;I)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 5440
    const-string/jumbo v0, "button_auto_ip_support_local_numbers"

    .line 5441
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p1, :cond_0

    .line 5442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5444
    :cond_0
    invoke-static {p0, v0, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isAutoRecordEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5236
    const-string/jumbo v0, "button_auto_record_call"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCrescendoRingerEnable(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5102
    const-string/jumbo v0, "button_crescendo_ringer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isHandonRingerEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5083
    const-string/jumbo v0, "button_handon_ringer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isIncomingVideoShowEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5197
    const-string/jumbo v0, "button_incoming_video_show"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isProximitySensorEnable(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5466
    const-string/jumbo v0, "button_enable_proximity"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRecordNotificationEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5216
    const-string/jumbo v0, "button_call_recording_notification"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRejectViaSmsEnable(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5483
    const-string/jumbo v0, "button_enable_reject_via_sms"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTelocationEnable(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5351
    const-string/jumbo v0, "enable_telocation"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTurnOverMuteEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5064
    const-string/jumbo v0, "button_turn_over_mute"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUnknownNumberRecordEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5296
    const-string/jumbo v0, "button_record_unknown_number"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isYellowpageRecordEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5315
    const-string/jumbo v0, "button_record_yellowpage_number"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setAntispamStangerEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enabled"    # Z

    .prologue
    .line 5131
    const-string/jumbo v0, "button_antispam_strange"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5130
    return-void
.end method

.method public static setAutoAddZeroPrefixEnable(Landroid/content/ContentResolver;ZI)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z
    .param p2, "slotId"    # I

    .prologue
    .line 5427
    const-string/jumbo v0, "button_add_zero_prefix"

    .line 5428
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p2, :cond_0

    .line 5429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5431
    :cond_0
    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5426
    return-void
.end method

.method public static setAutoAnswerCall(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .prologue
    .line 5552
    const-string/jumbo v0, "button_auto_answer"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5551
    return-void
.end method

.method public static setAutoAnswerCallDelayTime(Landroid/content/ContentResolver;I)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "value"    # I

    .prologue
    .line 5566
    const-string/jumbo v0, "auto_answer_delay_time"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5565
    return-void
.end method

.method public static setAutoAnswerCallScenario(Landroid/content/ContentResolver;I)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "value"    # I

    .prologue
    .line 5588
    const-string/jumbo v0, "auto_answer_scenario"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5587
    return-void
.end method

.method public static setAutoCountryCodeEnable(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .prologue
    .line 5379
    const-string/jumbo v0, "auto_country_code"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5378
    return-void
.end method

.method public static setAutoIpEnable(Landroid/content/ContentResolver;ZI)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z
    .param p2, "slotId"    # I

    .prologue
    .line 5400
    const-string/jumbo v0, "button_autoip"

    .line 5401
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p2, :cond_0

    .line 5402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5404
    :cond_0
    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5399
    return-void
.end method

.method public static setAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "IpPrefix"    # Ljava/lang/String;

    .prologue
    .line 5022
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/MiuiSettings$Telephony;->setAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 5021
    return-void
.end method

.method public static setAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "IpPrefix"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 5051
    const-string/jumbo v0, "autoip_prefix"

    .line 5052
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p2, :cond_0

    .line 5053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5055
    :cond_0
    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5050
    return-void
.end method

.method public static setAutoIpSupportLocalNumEnable(Landroid/content/ContentResolver;ZI)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z
    .param p2, "slotId"    # I

    .prologue
    .line 5454
    const-string/jumbo v0, "button_auto_ip_support_local_numbers"

    .line 5455
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p2, :cond_0

    .line 5456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5458
    :cond_0
    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5453
    return-void
.end method

.method public static setAutoRecordEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isEnabledAutoRecord"    # Z

    .prologue
    .line 5247
    const-string/jumbo v0, "button_auto_record_call"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5246
    return-void
.end method

.method public static setAutoRedialEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isEnabledRedial"    # Z

    .prologue
    .line 5188
    const-string/jumbo v0, "button_auto_redial"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5187
    return-void
.end method

.method public static setCallWaitingTone(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callWaitingToneType"    # I

    .prologue
    .line 4950
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "call_waiting_tone"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4949
    return-void
.end method

.method public static setContactCountrycode(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 5002
    const-string/jumbo v0, "persist.radio.countrycode"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5001
    return-void
.end method

.method public static setCrescendoRingerEnable(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enabled"    # Z

    .prologue
    .line 5112
    const-string/jumbo v0, "button_crescendo_ringer"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5111
    return-void
.end method

.method public static setCurrentAeraCode(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "aeraCode"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 4976
    const-string/jumbo v0, "current_areacode"

    .line 4977
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p2, :cond_0

    .line 4978
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4980
    :cond_0
    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4975
    return-void
.end method

.method public static setHandonRingerEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enabled"    # Z

    .prologue
    .line 5093
    const-string/jumbo v0, "button_handon_ringer"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5092
    return-void
.end method

.method public static setIVRParameterValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 5334
    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5333
    return-void
.end method

.method public static setIncomingVideoShowEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isVideoShowEnabled"    # Z

    .prologue
    .line 5207
    const-string/jumbo v0, "button_incoming_video_show"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5206
    return-void
.end method

.method public static setMissedCallNotifyTimes(Landroid/content/ContentResolver;I)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "notifyTimes"    # I

    .prologue
    .line 5169
    const-string/jumbo v0, "button_missed_call_notify_times"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5168
    return-void
.end method

.method public static setProximitySensorEnable(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .prologue
    .line 5475
    const-string/jumbo v0, "button_enable_proximity"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5474
    return-void
.end method

.method public static setRecordNotificationEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isEnabledRecordNotify"    # Z

    .prologue
    .line 5227
    const-string/jumbo v0, "button_call_recording_notification"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5226
    return-void
.end method

.method public static setRecordScenario(Landroid/content/ContentResolver;I)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "recordScenario"    # I

    .prologue
    .line 5266
    const-string/jumbo v0, "radio_record_scenario"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5265
    return-void
.end method

.method public static setRecordWhiteList(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "recordWhiteList"    # Ljava/lang/String;

    .prologue
    .line 5287
    const-string/jumbo v0, "record_white_list"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5286
    return-void
.end method

.method public static setRejectViaSmsEnable(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .prologue
    .line 5492
    const-string/jumbo v0, "button_enable_reject_via_sms"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5491
    return-void
.end method

.method public static setRejectViaSmsRespone(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 5518
    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5517
    return-void
.end method

.method public static setTelocationEnable(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .prologue
    .line 5360
    const-string/jumbo v0, "enable_telocation"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5359
    return-void
.end method

.method public static setTurnOverMuteEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .prologue
    .line 5074
    const-string/jumbo v0, "button_turn_over_mute"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5073
    return-void
.end method

.method public static setUnknownNumberRecordEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enabledUnknownNumberRecord"    # Z

    .prologue
    .line 5306
    const-string/jumbo v0, "button_record_unknown_number"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5305
    return-void
.end method

.method public static setVibrateKey(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "vibrateKey"    # Ljava/lang/String;

    .prologue
    .line 5150
    const-string/jumbo v0, "button_connect_disconnect_vibrate"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5149
    return-void
.end method

.method public static setVoiceServiceEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isEnabledVoiceService"    # Z

    .prologue
    .line 5527
    const-string/jumbo v0, "button_voice_service"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5526
    return-void
.end method

.method public static setYellowpageRecordEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enabledYellowpageRecord"    # Z

    .prologue
    .line 5325
    const-string/jumbo v0, "button_record_yellowpage_number"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5324
    return-void
.end method
