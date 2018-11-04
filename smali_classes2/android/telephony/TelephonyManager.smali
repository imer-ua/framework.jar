.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$MultiSimVariants;,
        Landroid/telephony/TelephonyManager$WifiCallingChoices;
    }
.end annotation


# static fields
.field private static final synthetic -android-telephony-TelephonyManager$MultiSimVariantsSwitchesValues:[I = null

.field public static final ACTION_CONFIGURE_VOICEMAIL:Ljava/lang/String; = "android.telephony.action.CONFIGURE_VOICEMAIL"

.field public static final ACTION_EMERGENCY_ASSISTANCE:Ljava/lang/String; = "android.telephony.action.EMERGENCY_ASSISTANCE"

.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final ACTION_PRECISE_CALL_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PRECISE_CALL_STATE"

.field public static final ACTION_PRECISE_DATA_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

.field public static final ACTION_RESPOND_VIA_MESSAGE:Ljava/lang/String; = "android.intent.action.RESPOND_VIA_MESSAGE"

.field public static final ACTION_SHOW_VOICEMAIL_NOTIFICATION:Ljava/lang/String; = "android.telephony.action.SHOW_VOICEMAIL_NOTIFICATION"

.field public static final APPTYPE_CSIM:I = 0x4

.field public static final APPTYPE_ISIM:I = 0x5

.field public static final APPTYPE_RUIM:I = 0x3

.field public static final APPTYPE_SIM:I = 0x1

.field public static final APPTYPE_USIM:I = 0x2

.field public static final AUTHTYPE_EAP_AKA:I = 0x81

.field public static final AUTHTYPE_EAP_SIM:I = 0x80

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final CARRIER_PRIVILEGE_STATUS_ERROR_LOADING_RULES:I = -0x2

.field public static final CARRIER_PRIVILEGE_STATUS_HAS_ACCESS:I = 0x1

.field public static final CARRIER_PRIVILEGE_STATUS_NO_ACCESS:I = 0x0

.field public static final CARRIER_PRIVILEGE_STATUS_RULES_NOT_LOADED:I = -0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field public static final EMERGENCY_ASSISTANCE_ENABLED:Z = true

.field public static final EMR_DIAL_ACCOUNT:Ljava/lang/String; = "emr_dial_account"

.field public static final EVENT_DOWNGRADE_DATA_DISABLED:Ljava/lang/String; = "android.telephony.event.EVENT_DOWNGRADE_DATA_DISABLED"

.field public static final EVENT_DOWNGRADE_DATA_LIMIT_REACHED:Ljava/lang/String; = "android.telephony.event.EVENT_DOWNGRADE_DATA_LIMIT_REACHED"

.field public static final EVENT_HANDOVER_TO_WIFI_FAILED:Ljava/lang/String; = "android.telephony.event.EVENT_HANDOVER_TO_WIFI_FAILED"

.field public static final EVENT_HANDOVER_VIDEO_FROM_WIFI_TO_LTE:Ljava/lang/String; = "android.telephony.event.EVENT_HANDOVER_VIDEO_FROM_WIFI_TO_LTE"

.field public static final EXTRA_BACKGROUND_CALL_STATE:Ljava/lang/String; = "background_state"

.field public static final EXTRA_CALL_VOICEMAIL_INTENT:Ljava/lang/String; = "android.telephony.extra.CALL_VOICEMAIL_INTENT"

.field public static final EXTRA_DATA_APN:Ljava/lang/String; = "apn"

.field public static final EXTRA_DATA_APN_TYPE:Ljava/lang/String; = "apnType"

.field public static final EXTRA_DATA_CHANGE_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_DATA_FAILURE_CAUSE:Ljava/lang/String; = "failCause"

.field public static final EXTRA_DATA_LINK_PROPERTIES_KEY:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_DATA_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final EXTRA_DATA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_DISCONNECT_CAUSE:Ljava/lang/String; = "disconnect_cause"

.field public static final EXTRA_FOREGROUND_CALL_STATE:Ljava/lang/String; = "foreground_state"

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_LAUNCH_VOICEMAIL_SETTINGS_INTENT:Ljava/lang/String; = "android.telephony.extra.LAUNCH_VOICEMAIL_SETTINGS_INTENT"

.field public static final EXTRA_NOTIFICATION_COUNT:Ljava/lang/String; = "android.telephony.extra.NOTIFICATION_COUNT"

.field public static final EXTRA_PRECISE_DISCONNECT_CAUSE:Ljava/lang/String; = "precise_disconnect_cause"

.field public static final EXTRA_RINGING_CALL_STATE:Ljava/lang/String; = "ringing_state"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String;

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String;

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String;

.field public static final EXTRA_VOICEMAIL_NUMBER:Ljava/lang/String; = "android.telephony.extra.VOICEMAIL_NUMBER"

.field public static final MODEM_ACTIVITY_RESULT_KEY:Ljava/lang/String; = "controller_activity"

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_GSM:I = 0x10

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_IWLAN:I = 0x12

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_LTE_CA:I = 0x13

.field public static final NETWORK_TYPE_TD_SCDMA:I = 0x11

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final SIM_ACTIVATION_RESULT_CANCELED:I = 0x4

.field public static final SIM_ACTIVATION_RESULT_COMPLETE:I = 0x0

.field public static final SIM_ACTIVATION_RESULT_FAILED:I = 0x3

.field public static final SIM_ACTIVATION_RESULT_IN_PROGRESS:I = 0x2

.field public static final SIM_ACTIVATION_RESULT_NOT_SUPPORTED:I = 0x1

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_CARD_IO_ERROR:I = 0x8

.field public static final SIM_STATE_CARD_RESTRICTED:I = 0x9

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_NOT_READY:I = 0x6

.field public static final SIM_STATE_PERM_DISABLED:I = 0x7

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field public static final VVM_TYPE_CVVM:Ljava/lang/String; = "vvm_type_cvvm"

.field public static final VVM_TYPE_OMTP:Ljava/lang/String; = "vvm_type_omtp"

.field private static multiSimConfig:Ljava/lang/String;

.field private static sInstance:Landroid/telephony/TelephonyManager;

.field private static final sKernelCmdLine:Ljava/lang/String;

.field private static final sLteOnCdmaProductType:Ljava/lang/String;

.field private static final sProductTypePattern:Ljava/util/regex/Pattern;

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSubId:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method private static synthetic -getandroid-telephony-TelephonyManager$MultiSimVariantsSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/telephony/TelephonyManager;->-android-telephony-TelephonyManager$MultiSimVariantsSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/telephony/TelephonyManager;->-android-telephony-TelephonyManager$MultiSimVariantsSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager$MultiSimVariants;->values()[Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Landroid/telephony/TelephonyManager;->-android-telephony-TelephonyManager$MultiSimVariantsSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 117
    const-string/jumbo v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    sput-object v0, Landroid/telephony/TelephonyManager;->multiSimConfig:Ljava/lang/String;

    .line 160
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 380
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 386
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 392
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 1322
    invoke-static {}, Landroid/telephony/TelephonyManager;->getProcCmdLine()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    .line 1326
    const-string/jumbo v0, "\\sproduct_type\\s*=\\s*(\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1325
    sput-object v0, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    .line 1330
    const-string/jumbo v0, "telephony.lteOnCdmaProductType"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1329
    sput-object v0, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    .line 85
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 141
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 142
    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 146
    :goto_0
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/TelephonyManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 148
    sget-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v1, :cond_0

    .line 150
    const-string/jumbo v1, "telephony.registry"

    .line 149
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 138
    :cond_0
    return-void

    .line 144
    :cond_1
    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private static getDefaultDataSubscriptionId()I
    .locals 1

    .prologue
    .line 3753
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    return v0
.end method

.method private static getDefaultPhone()I
    .locals 1

    .prologue
    .line 3760
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method private static getDefaultSubscription()I
    .locals 1

    .prologue
    .line 3746
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    return v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 3013
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 3852
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3853
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3854
    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3855
    .local v2, "valArray":[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v3, v2

    if-ge p2, v3, :cond_0

    aget-object v3, v2, p2

    if-eqz v3, :cond_0

    .line 3857
    :try_start_0
    aget-object v3, v2, p2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3858
    :catch_0
    move-exception v0

    .line 3863
    .end local v2    # "valArray":[Ljava/lang/String;
    :cond_0
    new-instance v3, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v3, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getIntWithSubId(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 5028
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 5029
    :catch_0
    move-exception v1

    .line 5031
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    :try_start_1
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 5032
    .local v3, "val":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5037
    move v0, v3

    .line 5038
    .local v0, "default_val":I
    const-string/jumbo v4, "mobile_data"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5039
    const-string/jumbo v4, "true"

    .line 5040
    const-string/jumbo v5, "ro.com.android.mobiledata"

    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5039
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5040
    const/4 v0, 0x1

    .line 5046
    :cond_0
    :goto_0
    if-eq v0, v3, :cond_1

    .line 5047
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5050
    :cond_1
    return v3

    .line 5040
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 5041
    :cond_3
    const-string/jumbo v4, "data_roaming"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5042
    const-string/jumbo v4, "true"

    .line 5043
    const-string/jumbo v5, "ro.com.android.dataroaming"

    const-string/jumbo v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5042
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_4

    .line 5043
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 5051
    .end local v0    # "default_val":I
    .end local v3    # "val":I
    :catch_1
    move-exception v2

    .line 5052
    .local v2, "exc":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v4, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v4, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getLteOnCdmaModeStatic()I
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 1345
    const-string/jumbo v2, ""

    .line 1347
    .local v2, "productType":Ljava/lang/String;
    const-string/jumbo v4, "telephony.lteOnCdmaDevice"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1349
    .local v0, "curVal":I
    move v3, v0

    .line 1350
    .local v3, "retVal":I
    if-ne v0, v5, :cond_0

    .line 1351
    sget-object v4, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    sget-object v5, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1352
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1353
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1354
    sget-object v4, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1355
    const/4 v3, 0x1

    .line 1364
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    const-string/jumbo v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getLteOnCdmaMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " curVal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1365
    const-string/jumbo v6, " product_type=\'"

    .line 1364
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1366
    const-string/jumbo v6, "\' lteOnCdmaProductType=\'"

    .line 1364
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1366
    sget-object v6, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    .line 1364
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1366
    const-string/jumbo v6, "\'"

    .line 1364
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    return v3

    .line 1357
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1360
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getNetworkClass(I)I
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 1740
    packed-switch p0, :pswitch_data_0

    .line 1766
    const/4 v0, 0x0

    return v0

    .line 1747
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1760
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1764
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 1740
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1790
    packed-switch p0, :pswitch_data_0

    .line 1834
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 1792
    :pswitch_0
    const-string/jumbo v0, "GPRS"

    return-object v0

    .line 1794
    :pswitch_1
    const-string/jumbo v0, "EDGE"

    return-object v0

    .line 1796
    :pswitch_2
    const-string/jumbo v0, "UMTS"

    return-object v0

    .line 1798
    :pswitch_3
    const-string/jumbo v0, "HSDPA"

    return-object v0

    .line 1800
    :pswitch_4
    const-string/jumbo v0, "HSUPA"

    return-object v0

    .line 1802
    :pswitch_5
    const-string/jumbo v0, "HSPA"

    return-object v0

    .line 1804
    :pswitch_6
    const-string/jumbo v0, "CDMA"

    return-object v0

    .line 1806
    :pswitch_7
    const-string/jumbo v0, "CDMA - EvDo rev. 0"

    return-object v0

    .line 1808
    :pswitch_8
    const-string/jumbo v0, "CDMA - EvDo rev. A"

    return-object v0

    .line 1810
    :pswitch_9
    const-string/jumbo v0, "CDMA - EvDo rev. B"

    return-object v0

    .line 1812
    :pswitch_a
    const-string/jumbo v0, "CDMA - 1xRTT"

    return-object v0

    .line 1814
    :pswitch_b
    const-string/jumbo v0, "LTE"

    return-object v0

    .line 1816
    :pswitch_c
    const-string/jumbo v0, "CDMA - eHRPD"

    return-object v0

    .line 1818
    :pswitch_d
    const-string/jumbo v0, "iDEN"

    return-object v0

    .line 1820
    :pswitch_e
    const-string/jumbo v0, "HSPA+"

    return-object v0

    .line 1822
    :pswitch_f
    const-string/jumbo v0, "GSM"

    return-object v0

    .line 1824
    :pswitch_10
    const-string/jumbo v0, "TD_SCDMA"

    return-object v0

    .line 1826
    :pswitch_11
    const-string/jumbo v0, "IWLAN"

    return-object v0

    .line 1828
    :pswitch_12
    const-string/jumbo v0, "LTE_CA"

    return-object v0

    .line 1831
    :pswitch_13
    const-string/jumbo v0, "DC_HSPAP"

    return-object v0

    .line 1790
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private getOpPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 176
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneType(I)I
    .locals 3
    .param p0, "networkMode"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1252
    packed-switch p0, :pswitch_data_0

    .line 1289
    return v1

    .line 1256
    :pswitch_0
    return v2

    .line 1274
    :pswitch_1
    return v1

    .line 1280
    :pswitch_2
    return v2

    .line 1283
    :pswitch_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1284
    return v2

    .line 1286
    :cond_0
    return v1

    .line 1252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 1

    .prologue
    .line 1227
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType(I)I

    move-result v0

    return v0
.end method

.method private getPhoneTypeFromNetworkType(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1235
    const-string/jumbo v1, "ro.telephony.default_network"

    invoke-static {p1, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1236
    .local v0, "mode":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1239
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1237
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v1

    return v1
.end method

.method private getPhoneTypeFromProperty()I
    .locals 1

    .prologue
    .line 1213
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v0

    return v0
.end method

.method private getPhoneTypeFromProperty(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1219
    const-string/jumbo v1, "gsm.current.phone-type"

    .line 1218
    invoke-static {p1, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1220
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1221
    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType(I)I

    move-result v1

    return v1

    .line 1223
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getProcCmdLine()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1298
    const-string/jumbo v1, ""

    .line 1299
    .local v1, "cmdline":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1301
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    const-string/jumbo v7, "/proc/cmdline"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1302
    .end local v5    # "is":Ljava/io/FileInputStream;
    .local v6, "is":Ljava/io/FileInputStream;
    const/16 v7, 0x800

    :try_start_1
    new-array v0, v7, [B

    .line 1303
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 1304
    .local v3, "count":I
    if-lez v3, :cond_0

    .line 1305
    new-instance v2, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v2, v0, v7, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "cmdline":Ljava/lang/String;
    .local v2, "cmdline":Ljava/lang/String;
    move-object v1, v2

    .line 1310
    .end local v2    # "cmdline":Ljava/lang/String;
    .restart local v1    # "cmdline":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 1312
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v5, v6

    .line 1317
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    .end local v6    # "is":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    const-string/jumbo v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "/proc/cmdline="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    return-object v1

    .line 1313
    .restart local v0    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    goto :goto_0

    .line 1307
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    .line 1308
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No /proc/cmdline exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1310
    if-eqz v5, :cond_2

    .line 1312
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1313
    :catch_2
    move-exception v4

    goto :goto_1

    .line 1309
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1310
    :goto_3
    if-eqz v5, :cond_3

    .line 1312
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1309
    :cond_3
    :goto_4
    throw v7

    .line 1313
    :catch_3
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 1309
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .local v5, "is":Ljava/io/FileInputStream;
    goto :goto_3

    .line 1307
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private getSubId()I
    .locals 2

    .prologue
    .line 3736
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 3737
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    return v0

    .line 3739
    :cond_0
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    return v0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 2865
    const-string/jumbo v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method private getTelecomService()Lcom/android/internal/telecom/ITelecomService;
    .locals 1

    .prologue
    .line 3020
    const-string/jumbo v0, "telecom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "phoneId"    # I
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 3923
    const/4 v1, 0x0

    .line 3924
    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3925
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 3926
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3927
    .local v2, "values":[Ljava/lang/String;
    if-ltz p0, :cond_0

    array-length v3, v2

    if-ge p0, v3, :cond_0

    aget-object v3, v2, p0

    if-eqz v3, :cond_0

    .line 3928
    aget-object v1, v2, p0

    .line 3931
    .end local v1    # "propVal":Ljava/lang/String;
    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_1
    move-object p2, v1

    goto :goto_0
.end method

.method public static putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "value"    # I

    .prologue
    .line 3883
    const-string/jumbo v0, ""

    .line 3884
    .local v0, "data":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3885
    .local v4, "valArray":[Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3887
    .local v3, "v":Ljava/lang/String;
    const v5, 0x7fffffff

    if-ne p2, v5, :cond_0

    .line 3888
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "putIntAtIndex index == MAX_VALUE index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3890
    :cond_0
    if-gez p2, :cond_1

    .line 3891
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "putIntAtIndex index < 0 index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3893
    :cond_1
    if-eqz v3, :cond_2

    .line 3894
    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3898
    .end local v4    # "valArray":[Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_4

    .line 3899
    const-string/jumbo v2, ""

    .line 3900
    .local v2, "str":Ljava/lang/String;
    if-eqz v4, :cond_3

    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 3901
    aget-object v2, v4, v1

    .line 3903
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3898
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3906
    .end local v2    # "str":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3909
    if-eqz v4, :cond_5

    .line 3910
    add-int/lit8 v1, p2, 0x1

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_5

    .line 3911
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3910
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3914
    :cond_5
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    return v5
.end method

.method public static setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "phoneId"    # I
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 3775
    const-string/jumbo v5, "gsm.sim.operator.alpha"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3776
    const-string/jumbo v5, "gsm.operator.alpha"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 3775
    if-nez v5, :cond_0

    .line 3777
    const-string/jumbo v5, "gsm.sim.operator.numeric"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 3775
    if-nez v5, :cond_0

    .line 3778
    const-string/jumbo v5, "gsm.operator.numeric"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 3775
    if-eqz v5, :cond_1

    .line 3779
    :cond_0
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2}, Lmiui/telephony/TelephonyManagerEx;->onOperatorNumericOrNameSet(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3783
    :cond_1
    const-string/jumbo v3, ""

    .line 3784
    .local v3, "propVal":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3785
    .local v1, "p":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3787
    .local v2, "prop":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 3788
    const-string/jumbo p2, ""

    .line 3791
    :cond_2
    if-eqz v2, :cond_3

    .line 3792
    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3795
    .end local v1    # "p":[Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3796
    const-string/jumbo v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setTelephonyProperty: invalid phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3797
    const-string/jumbo v7, " property="

    .line 3796
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3797
    const-string/jumbo v7, " value: "

    .line 3796
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3797
    const-string/jumbo v7, " prop="

    .line 3796
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3798
    return-void

    .line 3801
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_6

    .line 3802
    const-string/jumbo v4, ""

    .line 3803
    .local v4, "str":Ljava/lang/String;
    if-eqz v1, :cond_5

    array-length v5, v1

    if-ge v0, v5, :cond_5

    .line 3804
    aget-object v4, v1, v0

    .line 3806
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3801
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3809
    .end local v4    # "str":Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3810
    if-eqz v1, :cond_7

    .line 3811
    add-int/lit8 v0, p0, 0x1

    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_7

    .line 3812
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3811
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3816
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x1f

    if-gt v5, v6, :cond_8

    .line 3817
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x5b

    if-le v5, v6, :cond_9

    .line 3818
    :cond_8
    const-string/jumbo v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setTelephonyProperty: property to long phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3819
    const-string/jumbo v7, " property="

    .line 3818
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3819
    const-string/jumbo v7, " value: "

    .line 3818
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3819
    const-string/jumbo v7, " propVal="

    .line 3818
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    return-void

    .line 3826
    :cond_9
    invoke-static {p1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3773
    return-void
.end method


# virtual methods
.method public answerRingingCall()V
    .locals 4

    .prologue
    .line 4593
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4594
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4595
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4591
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 4596
    :catch_0
    move-exception v0

    .line 4597
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#answerRingingCall"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 4568
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4569
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4570
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->call(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4566
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 4571
    :catch_0
    move-exception v0

    .line 4572
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#call"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public canChangeDtmfToneLength()Z
    .locals 5

    .prologue
    .line 4948
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4949
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4950
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->canChangeDtmfToneLength()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4954
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4955
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Permission error calling ITelephony#canChangeDtmfToneLength"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4957
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 4952
    :catch_1
    move-exception v0

    .line 4953
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Error calling ITelephony#canChangeDtmfToneLength"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public carrierActionSetMeteredApnsEnabled(IZ)V
    .locals 4
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 5797
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5798
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5799
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->carrierActionSetMeteredApnsEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5795
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 5801
    :catch_0
    move-exception v0

    .line 5802
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#carrierActionSetMeteredApnsEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public carrierActionSetRadioEnabled(IZ)V
    .locals 4
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 5815
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5816
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5817
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->carrierActionSetRadioEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5813
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 5819
    :catch_0
    move-exception v0

    .line 5820
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#carrierActionSetRadioEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 4490
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4491
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4492
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4495
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4496
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "checkCarrierPrivilegesForPackage NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4498
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 4493
    :catch_1
    move-exception v0

    .line 4494
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "checkCarrierPrivilegesForPackage RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 4505
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4506
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4507
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4510
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4511
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "checkCarrierPrivilegesForPackageAnyPhone NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4513
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 4508
    :catch_1
    move-exception v0

    .line 4509
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "checkCarrierPrivilegesForPackageAnyPhone RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public createForSubscriptionId(I)Landroid/telephony/TelephonyManager;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 258
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public dial(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 4556
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4557
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4558
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->dial(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4554
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 4559
    :catch_0
    move-exception v0

    .line 4560
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#dial"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disableDataConnectivity()Z
    .locals 4

    .prologue
    .line 4808
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4809
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4810
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4811
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4812
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#disableDataConnectivity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4814
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 1082
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->disableLocationUpdates(I)V

    .line 1081
    return-void
.end method

.method public disableLocationUpdates(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1088
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1089
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1090
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdatesForSubscriber(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1086
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 1091
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1092
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public disableVisualVoicemailSmsFilter(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 2678
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2679
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 2680
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->disableVisualVoicemailSmsFilter(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2676
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 2682
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2683
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public enableDataConnectivity()Z
    .locals 4

    .prologue
    .line 4795
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4796
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4797
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4798
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4799
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#enableDataConnectivity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4801
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 1048
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->enableLocationUpdates(I)V

    .line 1047
    return-void
.end method

.method public enableLocationUpdates(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1064
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1065
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1066
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdatesForSubscriber(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1062
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 1067
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1068
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public enableVideoCalling(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 4920
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4921
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4922
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->enableVideoCalling(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4918
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 4923
    :catch_0
    move-exception v0

    .line 4924
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#enableVideoCalling"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableVisualVoicemailSmsFilter(ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "settings"    # Landroid/telephony/VisualVoicemailSmsFilterSettings;

    .prologue
    .line 2654
    if-nez p2, :cond_0

    .line 2655
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Settings cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2658
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2659
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 2660
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2}, Lcom/android/internal/telephony/ITelephony;->enableVisualVoicemailSmsFilter(Ljava/lang/String;ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2653
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_0
    return-void

    .line 2663
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2664
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public endCall()Z
    .locals 4

    .prologue
    .line 4580
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4581
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4582
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4583
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4584
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#endCall"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4586
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public factoryReset(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 5529
    :try_start_0
    const-string/jumbo v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "factoryReset: subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5530
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5531
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5532
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->factoryReset(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5527
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 5533
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getAidForAppType(I)Ljava/lang/String;
    .locals 1
    .param p1, "appType"    # I

    .prologue
    .line 5636
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getAidForAppType(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAidForAppType(II)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "appType"    # I

    .prologue
    const/4 v4, 0x0

    .line 5651
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5652
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5653
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getAidForAppType(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 5655
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5656
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#getAidForAppType"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5658
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3250
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3251
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 3252
    return-object v4

    .line 3253
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getAllCellInfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3256
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3257
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 3254
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3255
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getAllowedCarriers(I)Ljava/util/List;
    .locals 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5778
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5779
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5780
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getAllowedCarriers(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 5782
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5783
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#getAllowedCarriers"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5785
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    return-object v2
.end method

.method public getCallState()I
    .locals 4

    .prologue
    .line 2889
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 2890
    .local v1, "telecom":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_0

    .line 2891
    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2893
    .end local v1    # "telecom":Lcom/android/internal/telecom/ITelecomService;
    :catch_0
    move-exception v0

    .line 2894
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelecomService#getCallState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2896
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getCallState(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 2907
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2908
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCallStateForSlot(I)I

    move-result v1

    return v1
.end method

.method public getCallStateForSlot(I)I
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2918
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2919
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 2920
    return v3

    .line 2921
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCallStateForSlot(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 2925
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 2927
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 2922
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2924
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4519
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4526
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4527
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4528
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 4531
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4532
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getCarrierPackageNamesForIntentAndPhone NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4534
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    return-object v5

    .line 4529
    :catch_1
    move-exception v0

    .line 4530
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getCarrierPackageNamesForIntentAndPhone RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 3080
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex(I)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, -0x1

    .line 3092
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3093
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 3094
    return v4

    .line 3095
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3099
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3100
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 3096
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3098
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 3115
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode(I)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, -0x1

    .line 3130
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3131
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 3132
    return v4

    .line 3133
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3137
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3138
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 3134
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3136
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3151
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaEriText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriText(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 3164
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3165
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 3166
    return-object v4

    .line 3167
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3171
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3172
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 3168
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3170
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getCdmaMdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4447
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMdn(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 4454
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4455
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 4456
    return-object v3

    .line 4457
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaMdn(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 4460
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4461
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 4458
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4459
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4468
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 4475
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4476
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 4477
    return-object v3

    .line 4478
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaMin(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 4481
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4482
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 4479
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4480
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5703
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaPrlVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 5717
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5718
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5719
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaPrlVersion(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 5721
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5722
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#getCdmaPrlVersion"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5724
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 965
    const/16 v5, 0x31

    invoke-static {v5}, Landroid/util/SeempLog;->record(I)I

    .line 967
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 968
    .local v4, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v4, :cond_0

    .line 969
    const-string/jumbo v5, "TelephonyManager"

    const-string/jumbo v6, "getCellLocation returning null because telephony is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    return-object v8

    .line 972
    :cond_0
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/ITelephony;->getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 975
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 976
    :cond_1
    const-string/jumbo v5, "TelephonyManager"

    const-string/jumbo v6, "getCellLocation returning null because bundle is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    return-object v8

    .line 979
    :cond_2
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 980
    .local v1, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 981
    const-string/jumbo v5, "TelephonyManager"

    const-string/jumbo v6, "getCellLocation returning null because CellLocation is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    return-object v8

    .line 984
    :cond_3
    return-object v1

    .line 988
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cl":Landroid/telephony/CellLocation;
    .end local v4    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    .line 989
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCellLocation returning null due to NullPointerException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    return-object v8

    .line 985
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 986
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCellLocation returning null due to RemoteException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    return-object v8
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 10
    .param p1, "slotId"    # I

    .prologue
    const/4 v9, 0x0

    .line 1012
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    .line 1014
    .local v4, "subId":[I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 1015
    .local v5, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v5, :cond_0

    .line 1016
    const-string/jumbo v6, "TelephonyManager"

    const-string/jumbo v7, "getCellLocation returning null because telephony is null"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    return-object v9

    .line 1019
    :cond_0
    const/4 v6, 0x0

    aget v6, v4, v6

    iget-object v7, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/ITelephony;->getCellLocationForSubscriber(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1020
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1021
    const-string/jumbo v6, "TelephonyManager"

    const-string/jumbo v7, "getCellLocation returning null because bundle is empty"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    return-object v9

    .line 1024
    :cond_1
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 1025
    .local v1, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1026
    const-string/jumbo v6, "TelephonyManager"

    const-string/jumbo v7, "getCellLocation returning null because CellLocation is empty"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1027
    return-object v9

    .line 1029
    :cond_2
    return-object v1

    .line 1033
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cl":Landroid/telephony/CellLocation;
    .end local v5    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    .line 1034
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "TelephonyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getCellLocation returning null due to NullPointerException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    return-object v9

    .line 1030
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 1031
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v6, "TelephonyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getCellLocation returning null due to RemoteException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    return-object v9
.end method

.method public getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;
    .locals 6
    .param p1, "subId"    # I

    .prologue
    const/4 v5, 0x0

    .line 4169
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4170
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4171
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 4174
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4175
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getCellNetworkScanResults NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4177
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    return-object v5

    .line 4172
    :catch_1
    move-exception v0

    .line 4173
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getCellNetworkScanResults RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2526
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2540
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2541
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2542
    return-object v3

    .line 2543
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumberForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2546
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2548
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 2544
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2545
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getCurrentPhoneType()I
    .locals 1

    .prologue
    .line 1144
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getCurrentPhoneType(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1160
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1163
    const/4 v0, 0x0

    .line 1168
    .local v0, "phoneId":I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneTypeForSlot(I)I

    move-result v1

    return v1

    .line 1165
    .end local v0    # "phoneId":I
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .restart local v0    # "phoneId":I
    goto :goto_0
.end method

.method public getCurrentPhoneTypeForSlot(I)I
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 1178
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1179
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1180
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeForSlot(I)I

    move-result v3

    return v3

    .line 1183
    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1189
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1192
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v3

    return v3

    .line 1185
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1188
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v3

    return v3
.end method

.method public getDataActivity()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2958
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2959
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 2960
    return v3

    .line 2961
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 2965
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 2967
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 2962
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2964
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getDataEnabled()Z
    .locals 1

    .prologue
    .line 4865
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    return v0
.end method

.method public getDataEnabled(I)Z
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 4871
    const/4 v2, 0x0

    .line 4873
    .local v2, "retVal":Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 4874
    .local v3, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_0

    .line 4875
    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getDataEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 4880
    .end local v2    # "retVal":Z
    .end local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 4876
    .restart local v2    # "retVal":Z
    :catch_0
    move-exception v0

    .line 4877
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "TelephonyManager"

    const-string/jumbo v5, "Error calling ITelephony#getDataEnabled"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4878
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataNetworkType()I
    .locals 1

    .prologue
    .line 1648
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getDataNetworkType(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1665
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1666
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1667
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getDataNetworkTypeForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1670
    :cond_0
    return v4

    .line 1675
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1677
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 1672
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1674
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public getDataState()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2997
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2998
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 2999
    return v3

    .line 3000
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3004
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3005
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 3001
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3003
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getDefaultSim()I
    .locals 1

    .prologue
    .line 3765
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 848
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 849
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 850
    return-object v4

    .line 851
    :cond_0
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 854
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 855
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 852
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 853
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, 0x0

    .line 869
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v4, v3}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 872
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 873
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 874
    return-object v5

    .line 875
    :cond_0
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceIdForPhone(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 878
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 879
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v5

    .line 876
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 877
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v5
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 812
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    .line 827
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 828
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    return-object v4

    .line 831
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getDeviceSoftwareVersionForSlot(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 834
    :catch_0
    move-exception v1

    .line 835
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 832
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 833
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5670
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getEsn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEsn(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 5684
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5685
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5686
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getEsn(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 5688
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5689
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#getEsn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5691
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2244
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2245
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2246
    return-object v4

    .line 2247
    :cond_0
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2250
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2252
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 2248
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2249
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getGroupIdLevel1(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2268
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2269
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2270
    return-object v4

    .line 2271
    :cond_0
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2274
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2276
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 2272
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2273
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getIccAuthentication(IIILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "authType"    # I
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4063
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 4064
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 4065
    return-object v3

    .line 4066
    :cond_0
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSimChallengeResponse(IIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 4069
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 4071
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 4067
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4068
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIccAuthentication(IILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appType"    # I
    .param p2, "authType"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 4041
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->getIccAuthentication(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 891
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei(I)Ljava/lang/String;
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    .line 904
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 905
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    return-object v4

    .line 908
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getImeiForSlot(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 911
    :catch_0
    move-exception v1

    .line 912
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 909
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 910
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3994
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 3995
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 3996
    return-object v3

    .line 3997
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 4000
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 4002
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 3998
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3999
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2828
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2829
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2830
    return-object v3

    .line 2831
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2834
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2836
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 2832
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2833
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2809
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2810
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2811
    return-object v3

    .line 2812
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2815
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2817
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 2813
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2814
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2848
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2849
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2850
    return-object v3

    .line 2851
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2854
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2856
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 2852
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2853
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimIst()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3952
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 3953
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 3954
    return-object v3

    .line 3955
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimIst()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3958
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 3960
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 3956
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3957
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3972
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 3973
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 3974
    return-object v3

    .line 3975
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimPcscf()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3978
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 3980
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 3976
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3977
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2388
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .locals 7
    .param p1, "subId"    # I

    .prologue
    const/4 v6, 0x0

    .line 2403
    const/4 v0, 0x0

    .line 2405
    .local v0, "alphaTag":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 2406
    .local v4, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_0

    .line 2408
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2407
    invoke-interface {v4, p1, v5}, Lcom/android/internal/telephony/ITelephony;->getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 2412
    .end local v0    # "alphaTag":Ljava/lang/String;
    .end local v4    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2413
    return-object v0

    .line 2416
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    .line 2417
    .local v3, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v3, :cond_2

    .line 2418
    return-object v6

    .line 2419
    :cond_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    return-object v5

    .line 2422
    .end local v3    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v2

    .line 2424
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v6

    .line 2420
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 2421
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v6

    .line 2409
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "alphaTag":Ljava/lang/String;
    :catch_2
    move-exception v1

    .restart local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2410
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_3
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2292
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 8
    .param p1, "subId"    # I

    .prologue
    const/4 v7, 0x0

    .line 2310
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    invoke-static {v6, v5}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 2311
    const/4 v3, 0x0

    .line 2313
    .local v3, "number":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 2314
    .local v4, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_0

    .line 2315
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Lcom/android/internal/telephony/ITelephony;->getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 2319
    .end local v3    # "number":Ljava/lang/String;
    .end local v4    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 2320
    return-object v3

    .line 2323
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2324
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_2

    .line 2325
    return-object v7

    .line 2326
    :cond_2
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, p1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1NumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    return-object v5

    .line 2329
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2331
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v7

    .line 2327
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2328
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v7

    .line 2316
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "number":Ljava/lang/String;
    :catch_2
    move-exception v0

    .restart local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2317
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    .restart local v1    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLocaleFromDefaultSim()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5541
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5542
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5543
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getLocaleFromDefaultSim()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 5545
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5547
    :cond_0
    return-object v2
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 2160
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(I)I

    move-result v0

    return v0
.end method

.method public getLteOnCdmaMode(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, -0x1

    .line 2179
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2180
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 2181
    return v4

    .line 2182
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 2186
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 2188
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 2183
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2185
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public getMergedSubscriberIds()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2438
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2439
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 2440
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 2441
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 2444
    :cond_0
    :goto_0
    return-object v4

    .line 2442
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMmsUAProfUrl()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3296
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-object v1

    .line 3297
    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3298
    const v1, 0x1040052

    .line 3297
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMmsUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3287
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-object v1

    .line 3288
    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3289
    const v1, 0x1040051

    .line 3288
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2457
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2472
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2473
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2474
    return-object v4

    .line 2475
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdnForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2478
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2480
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 2476
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2477
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;
    .locals 2

    .prologue
    .line 189
    const-string/jumbo v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "mSimConfig":Ljava/lang/String;
    const-string/jumbo v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1

    .line 192
    :cond_0
    const-string/jumbo v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1

    .line 194
    :cond_1
    const-string/jumbo v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1

    .line 197
    :cond_2
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1
.end method

.method public getNai()Ljava/lang/String;
    .locals 1

    .prologue
    .line 922
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNai(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNai(I)Ljava/lang/String;
    .locals 9
    .param p1, "slotId"    # I

    .prologue
    const/4 v8, 0x0

    .line 932
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    .line 934
    .local v4, "subId":[I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 935
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 936
    return-object v8

    .line 937
    :cond_0
    const/4 v5, 0x0

    aget v5, v4, v5

    iget-object v6, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/android/internal/telephony/IPhoneSubInfo;->getNaiForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 938
    .local v3, "nai":Ljava/lang/String;
    const-string/jumbo v5, "TelephonyManager"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 939
    const-string/jumbo v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Nai = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    :cond_1
    return-object v3

    .line 944
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    .end local v3    # "nai":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 945
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v8

    .line 942
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 943
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v8
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1109
    const/16 v3, 0x32

    invoke-static {v3}, Landroid/util/SeempLog;->record(I)I

    .line 1111
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1112
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 1113
    return-object v4

    .line 1114
    :cond_0
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 1117
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1118
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 1115
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1116
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1478
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1493
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1494
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkCountryIsoForPhone(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1509
    const-string/jumbo v0, "gsm.operator.iso-country"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1410
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1425
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1426
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkOperatorForPhone(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1441
    const-string/jumbo v0, "gsm.operator.numeric"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1384
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1398
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1399
    .local v0, "phoneId":I
    const-string/jumbo v1, "gsm.operator.alpha"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkType()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1557
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1558
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1559
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1562
    :cond_0
    return v3

    .line 1567
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1569
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 1564
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1566
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getNetworkType(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1604
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1605
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1606
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getNetworkTypeForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1609
    :cond_0
    return v4

    .line 1614
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1616
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 1611
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1613
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1778
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOtaSpNumberSchema(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 5307
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 5308
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 5321
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5323
    const-string/jumbo v0, "ro.cdma.otaspnumschema"

    .line 5322
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5326
    :cond_0
    return-object p2
.end method

.method public getPackagesWithCarrierPrivileges()Ljava/util/List;
    .locals 5
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
    .line 4540
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4541
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4542
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getPackagesWithCarrierPrivileges()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 4546
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4547
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getPackagesWithCarrierPrivileges NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4549
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v3

    .line 4544
    :catch_1
    move-exception v0

    .line 4545
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getPackagesWithCarrierPrivileges RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4083
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4084
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 4085
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    return-object v2

    .line 4086
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 4087
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4088
    .local v0, "e":Landroid/os/RemoteException;
    new-array v2, v3, [Ljava/lang/String;

    return-object v2
.end method

.method public getPhoneCount()I
    .locals 4

    .prologue
    .line 209
    const/4 v1, 0x1

    .line 210
    .local v1, "phoneCount":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->-getandroid-telephony-TelephonyManager$MultiSimVariantsSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 243
    :goto_0
    return v1

    .line 213
    :pswitch_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 217
    :cond_1
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2

    .line 218
    const/4 v1, 0x1

    goto :goto_0

    .line 221
    :cond_2
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 222
    const-string/jumbo v3, "connectivity"

    .line 221
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 223
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_3

    .line 224
    const/4 v1, 0x1

    goto :goto_0

    .line 226
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 227
    const/4 v1, 0x1

    goto :goto_0

    .line 229
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 237
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :pswitch_1
    const/4 v1, 0x2

    .line 238
    goto :goto_0

    .line 240
    :pswitch_2
    const/4 v1, 0x3

    .line 241
    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 1206
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1207
    const/4 v0, 0x0

    return v0

    .line 1209
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    return v0
.end method

.method public getPreferredNetworkType(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 4120
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4121
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4122
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getPreferredNetworkType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4125
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4126
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getPreferredNetworkType NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4128
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, -0x1

    return v3

    .line 4123
    :catch_1
    move-exception v0

    .line 4124
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getPreferredNetworkType RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 5577
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5578
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5579
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->getServiceStateForSubscriber(ILjava/lang/String;)Landroid/telephony/ServiceState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 5581
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5582
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#getServiceStateForSubscriber"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5584
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public getSimCount()I
    .locals 1

    .prologue
    .line 3938
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3939
    const/4 v0, 0x2

    return v0

    .line 3941
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2086
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 2096
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2097
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimCountryIsoForPhone(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 2107
    const-string/jumbo v0, "gsm.sim.operator.iso-country"

    const-string/jumbo v1, ""

    .line 2106
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1976
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1991
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2054
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 2068
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2069
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperatorNameForPhone(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 2079
    const-string/jumbo v0, "gsm.sim.operator.alpha"

    const-string/jumbo v1, ""

    .line 2078
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2004
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 2005
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2006
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 2007
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2008
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    .line 2009
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2010
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 2014
    :cond_0
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperatorNumeric(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 2029
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2030
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperatorNumericForPhone(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 2043
    const-string/jumbo v0, "gsm.sim.operator.numeric"

    const-string/jumbo v1, ""

    .line 2042
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2118
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I

    .prologue
    const/4 v5, 0x0

    .line 2131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x184

    invoke-static {v4, v3}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 2133
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2134
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2135
    return-object v5

    .line 2136
    :cond_0
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2139
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2141
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v5

    .line 2137
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2138
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v5
.end method

.method public getSimState()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1925
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v2

    .line 1928
    .local v2, "slotIdx":I
    if-gez v2, :cond_2

    .line 1931
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1932
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 1933
    .local v1, "simState":I
    if-eq v1, v7, :cond_0

    .line 1934
    const-string/jumbo v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSimState: default sim:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", sim state for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1935
    const-string/jumbo v5, "slotIdx="

    .line 1934
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1935
    const-string/jumbo v5, " is "

    .line 1934
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1935
    const-string/jumbo v5, ", return state as unknown"

    .line 1934
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    return v6

    .line 1931
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1939
    .end local v1    # "simState":I
    :cond_1
    const-string/jumbo v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSimState: default sim:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", all SIMs absent, return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1940
    const-string/jumbo v5, "state as absent"

    .line 1939
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    return v7

    .line 1943
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    return v3
.end method

.method public getSimState(I)I
    .locals 1
    .param p1, "slotIdx"    # I

    .prologue
    .line 1963
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIdx(I)I

    move-result v0

    .line 1964
    .local v0, "simState":I
    return v0
.end method

.method public getSmsReceiveCapable(Z)Z
    .locals 2
    .param p1, "defaultValue"    # Z

    .prologue
    .line 5338
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 5339
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getSmsReceiveCapableForPhone(IZ)Z

    move-result v1

    return v1
.end method

.method public getSmsReceiveCapableForPhone(IZ)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    .line 5352
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5354
    const-string/jumbo v0, "telephony.sms.receive"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 5353
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 5357
    :cond_0
    return p2
.end method

.method public getSmsSendCapable(Z)Z
    .locals 2
    .param p1, "defaultValue"    # Z

    .prologue
    .line 5369
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 5370
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getSmsSendCapableForPhone(IZ)Z

    move-result v1

    return v1
.end method

.method public getSmsSendCapableForPhone(IZ)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    .line 5383
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5385
    const-string/jumbo v0, "telephony.sms.send"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 5384
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 5388
    :cond_0
    return p2
.end method

.method public getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    .locals 3
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccount;

    .prologue
    .line 5510
    const/4 v1, -0x1

    .line 5512
    .local v1, "retval":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 5513
    .local v2, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 5514
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5519
    .end local v2    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v1

    .line 5516
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2206
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I

    .prologue
    const/4 v5, 0x0

    .line 2221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x185

    invoke-static {v4, v3}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 2223
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2224
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2225
    return-object v5

    .line 2226
    :cond_0
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2229
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2231
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v5

    .line 2227
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2228
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v5
.end method

.method public getTelephonyHistograms()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5738
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5739
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5740
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getTelephonyHistograms()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 5742
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5743
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#getTelephonyHistograms"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5745
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public getTetherApnRequired()I
    .locals 5

    .prologue
    .line 4268
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4269
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4270
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getTetherApnRequired()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4273
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4274
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "hasMatchedTetherApnSetting NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4276
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x2

    return v3

    .line 4271
    :catch_1
    move-exception v0

    .line 4272
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "hasMatchedTetherApnSetting RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2699
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2700
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 2702
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2701
    invoke-interface {v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->getVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 2704
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 2708
    :cond_0
    :goto_0
    return-object v4

    .line 2705
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2722
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2723
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 2724
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getSystemVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 2726
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 2730
    :cond_0
    :goto_0
    return-object v3

    .line 2727
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2775
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2790
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2791
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2792
    return-object v4

    .line 2793
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2796
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2798
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 2794
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2795
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2491
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2505
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2506
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2507
    return-object v4

    .line 2508
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2511
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2513
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 2509
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2510
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 2742
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount(I)I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCount(I)I
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2755
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2756
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 2757
    return v3

    .line 2758
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCountForSubscriber(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 2761
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 2763
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 2759
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2760
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getVoiceNetworkType()I
    .locals 1

    .prologue
    .line 1689
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkType(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1702
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1703
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1704
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1707
    :cond_0
    return v4

    .line 1712
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1714
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 1709
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1711
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .locals 5
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    const/4 v4, 0x0

    .line 5597
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5598
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5599
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 5601
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5602
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#getVoicemailRingtoneUri"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5604
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public getVtDataUsage()J
    .locals 4

    .prologue
    .line 5833
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5834
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5835
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getVtDataUsage()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 5837
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5838
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling getVtDataUsage"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5840
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 4719
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4720
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4721
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4722
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4723
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#handlePinMmi"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4725
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "dialString"    # Ljava/lang/String;

    .prologue
    .line 4732
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4733
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4734
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4735
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4736
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#handlePinMmi"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4738
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public hasCarrierPrivileges()Z
    .locals 1

    .prologue
    .line 4302
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierPrivileges(I)Z
    .locals 6
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4318
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4319
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 4320
    iget v5, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/ITelephony;->getCarrierPrivilegeStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    .line 4325
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4326
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v5, "hasCarrierPrivileges NPE"

    invoke-static {v3, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4328
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_1
    :goto_1
    return v4

    .line 4323
    :catch_1
    move-exception v0

    .line 4324
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v5, "hasCarrierPrivileges RemoteException"

    invoke-static {v3, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public hasIccCard()Z
    .locals 1

    .prologue
    .line 1885
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public hasIccCard(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1898
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1899
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 1900
    return v3

    .line 1901
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->hasIccCardUsingSlotId(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1905
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1907
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 1902
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1904
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public iccCloseLogicalChannel(I)Z
    .locals 1
    .param p1, "channel"    # I

    .prologue
    .line 3378
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->iccCloseLogicalChannel(II)Z

    move-result v0

    return v0
.end method

.method public iccCloseLogicalChannel(II)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "channel"    # I

    .prologue
    .line 3398
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3399
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3400
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    return v3

    .line 3401
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 3404
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 3402
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccExchangeSimIO(IIIIIILjava/lang/String;)[B
    .locals 10
    .param p1, "subId"    # I
    .param p2, "fileID"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "filePath"    # Ljava/lang/String;

    .prologue
    .line 3569
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3570
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 3571
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony;->iccExchangeSimIO(IIIIIILjava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 3572
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v8

    .line 3575
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 3573
    :catch_1
    move-exception v9

    .local v9, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccExchangeSimIO(IIIIILjava/lang/String;)[B
    .locals 8
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "filePath"    # Ljava/lang/String;

    .prologue
    .line 3546
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/TelephonyManager;->iccExchangeSimIO(IIIIIILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public iccOpenLogicalChannel(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "AID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3333
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3334
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3335
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 3336
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 3339
    :cond_0
    :goto_0
    return-object v3

    .line 3337
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccOpenLogicalChannel(ILjava/lang/String;B)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "AID"    # Ljava/lang/String;
    .param p3, "p2"    # B

    .prologue
    const/4 v3, 0x0

    .line 3354
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3355
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3356
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannelWithP2(ILjava/lang/String;B)Landroid/telephony/IccOpenLogicalChannelResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 3358
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 3361
    :cond_0
    :goto_0
    return-object v3

    .line 3359
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 1
    .param p1, "AID"    # Ljava/lang/String;

    .prologue
    .line 3314
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->iccOpenLogicalChannel(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v0

    return-object v0
.end method

.method public iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "subId"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 3519
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3520
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 3521
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 3523
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v8

    .line 3526
    :cond_0
    :goto_0
    const-string/jumbo v1, ""

    return-object v1

    .line 3524
    :catch_1
    move-exception v9

    .local v9, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;

    .prologue
    .line 3491
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/TelephonyManager;->iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "subId"    # I
    .param p2, "channel"    # I
    .param p3, "cla"    # I
    .param p4, "instruction"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;

    .prologue
    .line 3460
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3461
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 3462
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 3464
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v9

    .line 3467
    :cond_0
    :goto_0
    const-string/jumbo v1, ""

    return-object v1

    .line 3465
    :catch_1
    move-exception v10

    .local v10, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 3430
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/telephony/TelephonyManager;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invokeOemRilRequestRaw([B[B)I
    .locals 4
    .param p1, "oemReq"    # [B
    .param p2, "oemResp"    # [B

    .prologue
    .line 4895
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4896
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4897
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    return v3

    .line 4898
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4901
    :cond_0
    :goto_0
    const/4 v3, -0x1

    return v3

    .line 4899
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isDataConnectivityPossible()Z
    .locals 4

    .prologue
    .line 4821
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4822
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4823
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4824
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4825
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isDataConnectivityPossible"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4827
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isHearingAidCompatibilitySupported()Z
    .locals 5

    .prologue
    .line 5006
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 5007
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 5008
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isHearingAidCompatibilitySupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 5012
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 5013
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Permission error calling ITelephony#isHearingAidCompatibilitySupported"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5015
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 5010
    :catch_1
    move-exception v0

    .line 5011
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Error calling ITelephony#isHearingAidCompatibilitySupported"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 4

    .prologue
    .line 4641
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4642
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4643
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isIdle(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4644
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4645
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isIdle"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4647
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isImsRegistered()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5063
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 5064
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 5065
    return v3

    .line 5066
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isImsRegistered()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 5069
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 5070
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 5067
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 5068
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isImsRegisteredForSubscriber(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 5081
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 5082
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 5083
    return v3

    .line 5084
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->isImsRegisteredForSubscriber(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 5087
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 5088
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 5085
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 5086
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isMultiSimEnabled()Z
    .locals 2

    .prologue
    .line 263
    sget-object v0, Landroid/telephony/TelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string/jumbo v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/TelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string/jumbo v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    sget-object v0, Landroid/telephony/TelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string/jumbo v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 263
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    .prologue
    .line 1451
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1464
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1466
    .local v0, "phoneId":I
    const-string/jumbo v1, "gsm.operator.isroaming"

    const/4 v2, 0x0

    .line 1465
    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isOffhook()Z
    .locals 4

    .prologue
    .line 4615
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4616
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4617
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4618
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4619
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isOffhook"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4621
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isRadioOn()Z
    .locals 4

    .prologue
    .line 4654
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4655
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4656
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOn(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4657
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4658
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isRadioOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4660
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isRinging()Z
    .locals 4

    .prologue
    .line 4628
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4629
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4630
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4631
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4632
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isRinging"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4634
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isSmsCapable()Z
    .locals 2

    .prologue
    .line 3206
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3207
    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3208
    const v1, 0x1120064

    .line 3207
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isTtyModeSupported()Z
    .locals 5

    .prologue
    .line 4986
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4987
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4988
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isTtyModeSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4992
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4993
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Permission error calling ITelephony#isTtyModeSupported"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4995
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 4990
    :catch_1
    move-exception v0

    .line 4991
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Error calling ITelephony#isTtyModeSupported"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isVideoCallingEnabled()Z
    .locals 4

    .prologue
    .line 4932
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4933
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4934
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isVideoCallingEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4935
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4936
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isVideoCallingEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4938
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isVideoTelephonyAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5112
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isVideoTelephonyAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5115
    :catch_0
    move-exception v1

    .line 5116
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 5113
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 5114
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isVideoTelephonyWifiCallingAvailableForSubscriber(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 5156
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->isVideoTelephonyWifiCallingAvailableForSubscriber(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5160
    :catch_0
    move-exception v1

    .line 5161
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 5158
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 5159
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isVisualVoicemailEnabled(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 4
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 2625
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2626
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 2628
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2627
    invoke-interface {v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->isVisualVoicemailEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    return v3

    .line 2630
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 2634
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 2631
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isVoWifiCallingAvailableForSubscriber(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 5141
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->isVoWifiCallingAvailableForSubscriber(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5144
    :catch_0
    move-exception v1

    .line 5145
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 5142
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 5143
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isVoiceCapable()Z
    .locals 2

    .prologue
    .line 3191
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3192
    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3193
    const v1, 0x1120061

    .line 3192
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 4
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 5616
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5617
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5618
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5620
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5621
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isVoicemailVibrationEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5623
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isVolteAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5098
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isVolteAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5101
    :catch_0
    move-exception v1

    .line 5102
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 5099
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 5100
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isWifiCallingAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5126
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isWifiCallingAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5129
    :catch_0
    move-exception v1

    .line 5130
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 5127
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 5128
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isWorldPhone()Z
    .locals 5

    .prologue
    .line 4967
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4968
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4969
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isWorldPhone()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4973
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4974
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Permission error calling ITelephony#isWorldPhone"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4976
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 4971
    :catch_1
    move-exception v0

    .line 4972
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Error calling ITelephony#isWorldPhone"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 9
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 3053
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 3055
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 3057
    .local v8, "notifyNow":Ljava/lang/Boolean;
    sget-object v0, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v0, :cond_1

    .line 3059
    const-string/jumbo v0, "telephony.registry"

    .line 3058
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 3062
    :cond_1
    sget-object v0, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget v1, p1, Landroid/telephony/PhoneStateListener;->mSubId:I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3063
    iget-object v3, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v4, p2

    .line 3062
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3052
    .end local v8    # "notifyNow":Ljava/lang/Boolean;
    :goto_1
    return-void

    .line 3055
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3064
    :catch_0
    move-exception v6

    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_1

    .line 3066
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .local v7, "ex":Ljava/lang/NullPointerException;
    goto :goto_1
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 4

    .prologue
    .line 4834
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4835
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4836
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4837
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4838
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#needsOtaServiceProvisioning"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4840
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public nvReadItem(I)Ljava/lang/String;
    .locals 5
    .param p1, "itemID"    # I

    .prologue
    .line 3638
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3639
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3640
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->nvReadItem(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3643
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3644
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvReadItem NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3646
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const-string/jumbo v3, ""

    return-object v3

    .line 3641
    :catch_1
    move-exception v0

    .line 3642
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvReadItem RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public nvResetConfig(I)Z
    .locals 5
    .param p1, "resetType"    # I

    .prologue
    .line 3718
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3719
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3720
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->nvResetConfig(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3723
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3724
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvResetConfig NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3726
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 3721
    :catch_1
    move-exception v0

    .line 3722
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvResetConfig RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public nvWriteCdmaPrl([B)Z
    .locals 5
    .param p1, "preferredRoamingList"    # [B

    .prologue
    .line 3691
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3692
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3693
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->nvWriteCdmaPrl([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3696
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3697
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvWriteCdmaPrl NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3699
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 3694
    :catch_1
    move-exception v0

    .line 3695
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvWriteCdmaPrl RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public nvWriteItem(ILjava/lang/String;)Z
    .locals 5
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;

    .prologue
    .line 3665
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3666
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3667
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->nvWriteItem(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3670
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3671
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvWriteItem NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3673
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 3668
    :catch_1
    move-exception v0

    .line 3669
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvWriteItem RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestModemActivityInfo(Landroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "result"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v4, 0x0

    .line 5559
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5560
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5561
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5562
    return-void

    .line 5564
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5565
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#getModemActivityInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5567
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 5557
    return-void
.end method

.method public sendDsiReduceTxPower([B[B)I
    .locals 4
    .param p1, "oemReq"    # [B
    .param p2, "oemResp"    # [B

    .prologue
    .line 4907
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4908
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4909
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->sendDsiReduceTxPower([B[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    return v3

    .line 4910
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4913
    :cond_0
    :goto_0
    const/4 v3, -0x1

    return v3

    .line 4911
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 3614
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3615
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3616
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 3617
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 3620
    :cond_0
    :goto_0
    const-string/jumbo v3, ""

    return-object v3

    .line 3618
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 3593
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAllowedCarriers(ILjava/util/List;)I
    .locals 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 5758
    .local p2, "carriers":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5759
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5760
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setAllowedCarriers(ILjava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5762
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5763
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#setAllowedCarriers"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5765
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method public setBasebandVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 5252
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 5253
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setBasebandVersionForPhone(ILjava/lang/String;)V

    .line 5251
    return-void
.end method

.method public setBasebandVersionForPhone(ILjava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 5264
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gsm.version.baseband"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5266
    if-nez p1, :cond_1

    const-string/jumbo v1, ""

    .line 5265
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5267
    .local v0, "prop":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5263
    .end local v0    # "prop":Ljava/lang/String;
    :cond_0
    return-void

    .line 5266
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setCellInfoListRate(I)V
    .locals 3
    .param p1, "rateInMillis"    # I

    .prologue
    .line 3275
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3276
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3277
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setCellInfoListRate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3273
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 3278
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 3279
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setDataEnabled(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 4853
    :try_start_0
    const-string/jumbo v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDataEnabled: enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4854
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4855
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4856
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setDataEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4851
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 4857
    :catch_0
    move-exception v0

    .line 4858
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#setDataEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDataEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 4846
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 4845
    return-void
.end method

.method public setDataNetworkType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 5487
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 5488
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    .line 5486
    return-void
.end method

.method public setDataNetworkTypeForPhone(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "type"    # I

    .prologue
    .line 5498
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5500
    const-string/jumbo v0, "gsm.network.type"

    .line 5501
    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    .line 5499
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 5497
    :cond_0
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 2
    .param p1, "registered"    # Z

    .prologue
    .line 4100
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4101
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4102
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setImsRegistrationState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4098
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 4103
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 2369
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2370
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 2371
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    return v3

    .line 2372
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 2375
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 2373
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setLine1NumberForDisplay(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2349
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->setLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkCountryIso(Ljava/lang/String;)V
    .locals 1
    .param p1, "iso"    # Ljava/lang/String;

    .prologue
    .line 5463
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 5464
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 5462
    return-void
.end method

.method public setNetworkCountryIsoForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "iso"    # Ljava/lang/String;

    .prologue
    .line 5475
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5477
    const-string/jumbo v0, "gsm.operator.iso-country"

    .line 5476
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 5474
    :cond_0
    return-void
.end method

.method public setNetworkOperatorName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5397
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 5398
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    .line 5396
    return-void
.end method

.method public setNetworkOperatorNameForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 5408
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5409
    const-string/jumbo v0, "gsm.operator.alpha"

    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 5407
    :cond_0
    return-void
.end method

.method public setNetworkOperatorNumeric(Ljava/lang/String;)V
    .locals 1
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    .line 5419
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 5420
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    .line 5418
    return-void
.end method

.method public setNetworkOperatorNumericForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "numeric"    # Ljava/lang/String;

    .prologue
    .line 5430
    const-string/jumbo v0, "gsm.operator.numeric"

    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 5429
    return-void
.end method

.method public setNetworkRoaming(Z)V
    .locals 1
    .param p1, "isRoaming"    # Z

    .prologue
    .line 5439
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 5440
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    .line 5438
    return-void
.end method

.method public setNetworkRoamingForPhone(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "isRoaming"    # Z

    .prologue
    .line 5450
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5451
    const-string/jumbo v1, "gsm.operator.isroaming"

    .line 5452
    if-eqz p2, :cond_1

    const-string/jumbo v0, "true"

    .line 5451
    :goto_0
    invoke-static {p1, v1, v0}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 5449
    :cond_0
    return-void

    .line 5452
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public setNetworkSelectionModeAutomatic(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 4143
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4144
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4145
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setNetworkSelectionModeAutomatic(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4141
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 4148
    :catch_0
    move-exception v1

    .line 4149
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setNetworkSelectionModeAutomatic NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4146
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4147
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setNetworkSelectionModeAutomatic RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "operator"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p3, "persistSelection"    # Z

    .prologue
    .line 4194
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4195
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4196
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4199
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4200
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setNetworkSelectionModeManual NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4202
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 4197
    :catch_1
    move-exception v0

    .line 4198
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setNetworkSelectionModeManual RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setOperatorBrandOverride(ILjava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "brand"    # Ljava/lang/String;

    .prologue
    .line 4367
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4368
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4369
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setOperatorBrandOverride(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4372
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4373
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setOperatorBrandOverride NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4375
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 4370
    :catch_1
    move-exception v0

    .line 4371
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setOperatorBrandOverride RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 1
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 4346
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setOperatorBrandOverride(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPhoneType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 5279
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 5280
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    .line 5278
    return-void
.end method

.method public setPhoneType(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "type"    # I

    .prologue
    .line 5292
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5294
    const-string/jumbo v0, "gsm.current.phone-type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 5293
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 5291
    :cond_0
    return-void
.end method

.method public setPolicyDataEnabled(ZI)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "subId"    # I

    .prologue
    .line 5851
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5852
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5853
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setPolicyDataEnabled(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5849
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 5855
    :catch_0
    move-exception v0

    .line 5856
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#setPolicyDataEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPreferredNetworkType(II)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 4220
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4221
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4222
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4225
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4226
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setPreferredNetworkType NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4228
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 4223
    :catch_1
    move-exception v0

    .line 4224
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setPreferredNetworkType RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPreferredNetworkTypeToGlobal()Z
    .locals 1

    .prologue
    .line 4241
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->setPreferredNetworkTypeToGlobal(I)Z

    move-result v0

    return v0
.end method

.method public setPreferredNetworkTypeToGlobal(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 4255
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    move-result v0

    return v0
.end method

.method public setRadio(Z)Z
    .locals 4
    .param p1, "turnOn"    # Z

    .prologue
    .line 4757
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4758
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4759
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4760
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4761
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#setRadio"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4763
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setRadioPower(Z)Z
    .locals 4
    .param p1, "turnOn"    # Z

    .prologue
    .line 4770
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4771
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4772
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadioPower(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4773
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4774
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#setRadioPower"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4776
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 8
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4428
    .local p2, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 4429
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 4430
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony;->setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4434
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v7

    .line 4435
    .local v7, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "setRoamingOverride NPE"

    invoke-static {v1, v2, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4437
    .end local v7    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 4432
    :catch_1
    move-exception v6

    .line 4433
    .local v6, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "setRoamingOverride RemoteException"

    invoke-static {v1, v2, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4400
    .local p1, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/TelephonyManager;->setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public setSimCountryIso(Ljava/lang/String;)V
    .locals 1
    .param p1, "iso"    # Ljava/lang/String;

    .prologue
    .line 5211
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 5212
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 5210
    return-void
.end method

.method public setSimCountryIsoForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "iso"    # Ljava/lang/String;

    .prologue
    .line 5222
    const-string/jumbo v0, "gsm.sim.operator.iso-country"

    .line 5221
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 5220
    return-void
.end method

.method public setSimOperatorName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5191
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 5192
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 5190
    return-void
.end method

.method public setSimOperatorNameForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 5202
    const-string/jumbo v0, "gsm.sim.operator.alpha"

    .line 5201
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 5200
    return-void
.end method

.method public setSimOperatorNumeric(Ljava/lang/String;)V
    .locals 1
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    .line 5171
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 5172
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 5170
    return-void
.end method

.method public setSimOperatorNumericForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "numeric"    # Ljava/lang/String;

    .prologue
    .line 5182
    const-string/jumbo v0, "gsm.sim.operator.numeric"

    .line 5181
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 5180
    return-void
.end method

.method public setSimState(Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 5231
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 5232
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    .line 5230
    return-void
.end method

.method public setSimStateForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 5242
    const-string/jumbo v0, "gsm.sim.state"

    .line 5241
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 5240
    return-void
.end method

.method public setVisualVoicemailEnabled(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 4
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "enabled"    # Z

    .prologue
    .line 2601
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2602
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 2603
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setVisualVoicemailEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2599
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 2606
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2607
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 2578
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2579
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 2580
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    return v3

    .line 2581
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 2584
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 2582
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2562
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public silenceRinger()V
    .locals 3

    .prologue
    .line 4605
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->silenceRinger(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4603
    :goto_0
    return-void

    .line 4606
    :catch_0
    move-exception v0

    .line 4607
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "Error calling ITelecomService#silenceRinger"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 4667
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4668
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4669
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4670
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4671
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#supplyPin"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4673
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public supplyPinReportResult(Ljava/lang/String;)[I
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 4693
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4694
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4695
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResult(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 4696
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4697
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#supplyPinReportResult"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4699
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [I

    return-object v2
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 4680
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4681
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4682
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4683
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4684
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#supplyPuk"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4686
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 4706
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4707
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4708
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 4709
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4710
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#]"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4712
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [I

    return-object v2
.end method

.method public toggleRadioOnOff()V
    .locals 4

    .prologue
    .line 4745
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4746
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4747
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4743
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 4748
    :catch_0
    move-exception v0

    .line 4749
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#toggleRadioOnOff"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateServiceLocation()V
    .locals 4

    .prologue
    .line 4783
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4784
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4785
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->updateServiceLocation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4781
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 4786
    :catch_0
    move-exception v0

    .line 4787
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#updateServiceLocation"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
