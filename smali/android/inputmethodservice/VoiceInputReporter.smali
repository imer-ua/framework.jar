.class public Landroid/inputmethodservice/VoiceInputReporter;
.super Ljava/lang/Object;
.source "VoiceInputReporter.java"


# static fields
.field private static final BAIDU_IME_PKGNAME:Ljava/lang/String; = "com.baidu.input_mi"

.field public static final EVENT_NO_NETWORK:I = 0x3

.field public static final EVENT_VOICE_BTN_PRESSED:I = 0x2

.field public static final EVENT_VOICE_BTN_SHOW:I = 0x1

.field private static final KEY_NO_NETWORK_BAIDU:Ljava/lang/String; = "show_no_network_dialog_from_baidu"

.field private static final KEY_NO_NETWORK_SOGOU:Ljava/lang/String; = "show_no_network_dialog_from_sogou"

.field private static final KEY_VOICE_BTN_PRESSED_BAIDU:Ljava/lang/String; = "press_voice_input_button_from_baidu"

.field private static final KEY_VOICE_BTN_PRESSED_SOGOU:Ljava/lang/String; = "press_voice_input_button_from_sogou"

.field private static final KEY_VOICE_BTN_SHOWN_BAIDU:Ljava/lang/String; = "show_voice_input_button_from_baidu"

.field private static final KEY_VOICE_BTN_SHOWN_SOGOU:Ljava/lang/String; = "show_voice_input_button_from_sogou"

.field private static final MQS_REPORT_MODULE:Ljava/lang/String; = "InputMethod"

.field private static final SOGOU_IME_PKGNAME:Ljava/lang/String; = "com.sohu.inputmethod.sogou.xiaomi"

.field private static final TAG:Ljava/lang/String; = "VoiceInputReporter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBaseJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .local v0, "JsonObj":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "show_voice_input_button_from_sogou"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string/jumbo v2, "show_voice_input_button_from_baidu"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string/jumbo v2, "press_voice_input_button_from_sogou"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string/jumbo v2, "press_voice_input_button_from_baidu"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string/jumbo v2, "show_no_network_dialog_from_sogou"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string/jumbo v2, "show_no_network_dialog_from_baidu"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "VoiceInputReporter"

    const-string/jumbo v3, "build base json fail"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static reportEvent(ILjava/lang/String;)V
    .locals 7
    .param p0, "event"    # I
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 34
    :try_start_0
    const-string/jumbo v3, "com.sohu.inputmethod.sogou.xiaomi"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 35
    .local v2, "isSogou":Z
    if-nez v2, :cond_0

    const-string/jumbo v3, "com.baidu.input_mi"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    :cond_0
    invoke-static {}, Landroid/inputmethodservice/VoiceInputReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 40
    .local v0, "data":Lorg/json/JSONObject;
    const/4 v3, 0x1

    if-ne p0, v3, :cond_3

    .line 41
    if-eqz v2, :cond_2

    const-string/jumbo v3, "show_voice_input_button_from_sogou"

    :goto_0
    const-string/jumbo v4, "1"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    :goto_1
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v3

    .line 51
    const-string/jumbo v4, "InputMethod"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 50
    invoke-virtual {v3, v4, v5, v6}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 32
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "isSogou":Z
    :goto_2
    return-void

    .line 36
    .restart local v2    # "isSogou":Z
    :cond_1
    const-string/jumbo v3, "VoiceInputReporter"

    const-string/jumbo v4, "only support baidu or sogou"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void

    .line 41
    .restart local v0    # "data":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v3, "show_voice_input_button_from_baidu"

    goto :goto_0

    .line 42
    :cond_3
    const/4 v3, 0x2

    if-ne p0, v3, :cond_5

    .line 43
    if-eqz v2, :cond_4

    const-string/jumbo v3, "press_voice_input_button_from_sogou"

    :goto_3
    const-string/jumbo v4, "1"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 52
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "isSogou":Z
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "VoiceInputReporter"

    const-string/jumbo v4, "report event fail"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 43
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "data":Lorg/json/JSONObject;
    .restart local v2    # "isSogou":Z
    :cond_4
    :try_start_1
    const-string/jumbo v3, "press_voice_input_button_from_baidu"

    goto :goto_3

    .line 44
    :cond_5
    const/4 v3, 0x3

    if-ne p0, v3, :cond_7

    .line 45
    if-eqz v2, :cond_6

    const-string/jumbo v3, "show_no_network_dialog_from_sogou"

    :goto_4
    const-string/jumbo v4, "1"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "show_no_network_dialog_from_baidu"

    goto :goto_4

    .line 47
    :cond_7
    const-string/jumbo v3, "VoiceInputReporter"

    const-string/jumbo v4, "event type is wrong"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 48
    return-void
.end method
