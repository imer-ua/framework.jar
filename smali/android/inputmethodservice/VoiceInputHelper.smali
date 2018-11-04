.class public Landroid/inputmethodservice/VoiceInputHelper;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/VoiceInputHelper$1;,
        Landroid/inputmethodservice/VoiceInputHelper$2;,
        Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;,
        Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;
    }
.end annotation


# static fields
.field public static final API_KEY:Ljava/lang/String; = "GKGRAg3Rim3Ku6_ZLM77dwjADiVKLrhtva7D8A-9now"

.field public static final CLIENT_ID:Ljava/lang/String; = "2882303761517744214"

.field private static final DEBUG:Z = true

.field private static final DETECTION_PREFIX:Ljava/lang/String; = "..."

.field private static final DETECTION_SHOW_MAX_LEN:I = 0xe

.field public static final MI_BRAIN_ASR_SERVICE:Ljava/lang/String; = "com.xiaomi.mibrain.speech.asr.AsrService"

.field public static final MI_BRAIN_PKG:Ljava/lang/String; = "com.xiaomi.mibrain.speech"

.field public static final PERMISSION_RECORD_AUDIO:Ljava/lang/String; = "android.permission.RECORD_AUDIO"

.field public static final SIGN_SECRET:Ljava/lang/String; = "iQGcaANtifIKTw3bRdXOmzpxx9h1jegkIlMsQt2ly6T8udJcLw7VYy7PuyCcE59tuatzhCwzZUMoR1qHa992jw"

.field private static final TAG:Ljava/lang/String; = "VoiceInputHelper"

.field private static blacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

.field private static sIsInSpeech:Z

.field private static sIsSpeechRecognizerReady:Z

.field private static sRandom:Ljava/util/Random;

.field private static sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field private static supportedImes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;
    .locals 1

    sget-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Landroid/inputmethodservice/VoiceInputHelper;->sIsInSpeech:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    sput-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsInSpeech:Z

    .line 43
    sput-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    .line 45
    sput-object v1, Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    .line 46
    sput-object v1, Landroid/inputmethodservice/VoiceInputHelper;->sRandom:Ljava/util/Random;

    .line 53
    new-instance v0, Landroid/inputmethodservice/VoiceInputHelper$1;

    invoke-direct {v0}, Landroid/inputmethodservice/VoiceInputHelper$1;-><init>()V

    sput-object v0, Landroid/inputmethodservice/VoiceInputHelper;->blacklist:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Landroid/inputmethodservice/VoiceInputHelper$2;

    invoke-direct {v0}, Landroid/inputmethodservice/VoiceInputHelper$2;-><init>()V

    sput-object v0, Landroid/inputmethodservice/VoiceInputHelper;->supportedImes:Ljava/util/Set;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    sget-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 121
    sput-object v1, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 122
    const/4 v0, 0x0

    sput-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    .line 123
    const-string/jumbo v0, "destroy...success."

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string/jumbo v0, "destroy...sSpeechRecognizer already is null."

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static enforceAudioPermission(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 189
    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static enforceMiSpeechSupport(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.xiaomi.mibrain.speech"

    const-string/jumbo v5, "com.xiaomi.mibrain.speech.asr.AsrService"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 178
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 180
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enforceMiSpeechSupport, service size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    .line 181
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static formatText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 412
    const-string/jumbo v0, ""

    .line 413
    .local v0, "formatted":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-le v1, v2, :cond_1

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0xe

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    :cond_0
    :goto_0
    return-object v0

    .line 415
    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static getErrorStr(I)Ljava/lang/String;
    .locals 1
    .param p0, "error"    # I

    .prologue
    .line 370
    const-string/jumbo v0, "UNKNOWN"

    .line 371
    .local v0, "errorReason":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 400
    :goto_0
    return-object v0

    .line 373
    :pswitch_0
    const-string/jumbo v0, "ERROR_NETWORK_TIMEOUT"

    goto :goto_0

    .line 376
    :pswitch_1
    const-string/jumbo v0, "ERROR_NETWORK"

    goto :goto_0

    .line 379
    :pswitch_2
    const-string/jumbo v0, "ERROR_AUDIO"

    goto :goto_0

    .line 382
    :pswitch_3
    const-string/jumbo v0, "ERROR_SERVER"

    goto :goto_0

    .line 385
    :pswitch_4
    const-string/jumbo v0, "ERROR_CLIENT"

    goto :goto_0

    .line 388
    :pswitch_5
    const-string/jumbo v0, "ERROR_SPEECH_TIMEOUT"

    goto :goto_0

    .line 391
    :pswitch_6
    const-string/jumbo v0, "ERROR_NO_MATCH"

    goto :goto_0

    .line 394
    :pswitch_7
    const-string/jumbo v0, "ERROR_RECOGNIZER_BUSY"

    goto :goto_0

    .line 397
    :pswitch_8
    const-string/jumbo v0, "ERROR_INSUFFICIENT_PERMISSIONS"

    goto :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static initSpeech(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/inputmethodservice/VoiceInputHelper;->initSpeech(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;)V

    .line 81
    return-void
.end method

.method public static initSpeech(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ims"    # Landroid/inputmethodservice/InputMethodService;
    .param p2, "callback"    # Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    .prologue
    const/4 v3, 0x1

    .line 86
    const-string/jumbo v0, "initSpeech....start"

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    .line 91
    invoke-static {p0}, Landroid/inputmethodservice/VoiceInputHelper;->enforceAudioPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const-string/jumbo v0, "No permission:android.permission.RECORD_AUDIO"

    invoke-static {v3, v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    .line 93
    return-void

    .line 97
    :cond_0
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->destroy()V

    .line 100
    invoke-static {p0}, Landroid/inputmethodservice/VoiceInputHelper;->enforceMiSpeechSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.xiaomi.mibrain.speech"

    const-string/jumbo v2, "com.xiaomi.mibrain.speech.asr.AsrService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p0, v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 104
    const-string/jumbo v0, "Mi brain supported."

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    .line 111
    sget-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    new-instance v1, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;

    invoke-direct {v1, p0, p1}, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;-><init>(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;)V

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 112
    sput-boolean v3, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    .line 113
    sput-object p2, Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    .line 115
    const-string/jumbo v0, "initSpeech...success."

    invoke-static {v3, v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    .line 85
    return-void

    .line 108
    :cond_1
    const-string/jumbo v0, "Mi brain UN-supported."

    invoke-static {v3, v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    .line 109
    return-void
.end method

.method public static isSpeechRecognizerReady()Z
    .locals 1

    .prologue
    .line 185
    sget-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 421
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    .line 420
    return-void
.end method

.method public static log(ZLjava/lang/String;)V
    .locals 3
    .param p0, "debug"    # Z
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 425
    if-nez p0, :cond_0

    .line 426
    :cond_0
    const-string/jumbo v0, "VoiceInputHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Niel..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void
.end method

.method public static setCallback(Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;)V
    .locals 0
    .param p0, "callback"    # Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    .prologue
    .line 78
    sput-object p0, Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    .line 77
    return-void
.end method

.method public static setIsInSpeech(Z)V
    .locals 0
    .param p0, "inSpeech"    # Z

    .prologue
    .line 130
    sput-boolean p0, Landroid/inputmethodservice/VoiceInputHelper;->sIsInSpeech:Z

    .line 129
    return-void
.end method

.method public static showSpeechBar(Landroid/view/inputmethod/EditorInfo;ZLjava/lang/String;)Z
    .locals 8
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p1, "isFullScreenMode"    # Z
    .param p2, "imePkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 194
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->isSpeechRecognizerReady()Z

    move-result v6

    if-nez v6, :cond_0

    .line 195
    const-string/jumbo v6, "SpeechRecognizer is NOT ready!"

    invoke-static {v4, v6}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    .line 196
    return v5

    .line 200
    :cond_0
    if-nez p1, :cond_1

    sget-boolean v6, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v6, :cond_1

    if-nez p0, :cond_3

    .line 201
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isFullScreenMode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 202
    const-string/jumbo v6, ", isInternationalBuild="

    .line 201
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 202
    sget-boolean v6, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 201
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 203
    const-string/jumbo v6, ", editorInfo="

    .line 201
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 203
    if-nez p0, :cond_2

    const-string/jumbo p0, "null"

    .line 201
    .end local p0    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :cond_2
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    .line 204
    return v5

    .line 208
    .restart local p0    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :cond_3
    iget v6, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v3, v6, 0xff0

    .line 209
    .local v3, "textVariation":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "inputType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", textVariation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    .line 210
    and-int/lit8 v6, v3, 0x10

    const/16 v7, 0x10

    if-eq v6, v7, :cond_4

    .line 211
    and-int/lit16 v6, v3, 0x90

    const/16 v7, 0x90

    if-ne v6, v7, :cond_5

    .line 213
    :cond_4
    const-string/jumbo v4, "showSpeechBar...password!"

    invoke-static {v4}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    .line 214
    return v5

    .line 212
    :cond_5
    and-int/lit16 v6, v3, 0x80

    const/16 v7, 0x80

    if-eq v6, v7, :cond_4

    .line 218
    sget-object v6, Landroid/inputmethodservice/VoiceInputHelper;->supportedImes:Ljava/util/Set;

    invoke-interface {v6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 219
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IME not supported, pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    .line 220
    return v5

    .line 224
    :cond_6
    sget-object v6, Landroid/inputmethodservice/VoiceInputHelper;->blacklist:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pkg$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 225
    .local v1, "pkg":Ljava/lang/String;
    iget-object v6, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showSpeechBar...hit blacklist, pkgName="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    .line 227
    return v5

    .line 232
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_8
    iget v6, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v6, 0xff

    .line 233
    .local v0, "imeOptions":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Masked imeOptions="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    .line 234
    const/4 v6, 0x3

    if-eq v0, v6, :cond_9

    .line 235
    const/4 v6, 0x2

    if-ne v0, v6, :cond_a

    .line 234
    :cond_9
    :goto_0
    return v4

    :cond_a
    move v4, v5

    .line 235
    goto :goto_0
.end method

.method public static startListening(Ljava/lang/String;)V
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 134
    sget-boolean v1, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v1, :cond_1

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[START]voice recognizer...pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    const-string/jumbo v1, "calling_package"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    :cond_0
    const-string/jumbo v1, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    const-string/jumbo v1, "useVad"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    const-string/jumbo v1, "client_id"

    const-string/jumbo v2, "2882303761517744214"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string/jumbo v1, "api_key"

    const-string/jumbo v2, "GKGRAg3Rim3Ku6_ZLM77dwjADiVKLrhtva7D8A-9now"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string/jumbo v1, "sign_secret"

    const-string/jumbo v2, "iQGcaANtifIKTw3bRdXOmzpxx9h1jegkIlMsQt2ly6T8udJcLw7VYy7PuyCcE59tuatzhCwzZUMoR1qHa992jw"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string/jumbo v1, "miref"

    const-string/jumbo v2, "com.miui.im_voice"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    sget-object v1, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 133
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 155
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[START]failed, sIsSpeechRecognizerReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public static stopListening()V
    .locals 2

    .prologue
    .line 160
    sget-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsInSpeech:Z

    if-nez v0, :cond_0

    .line 161
    const-string/jumbo v0, "[STOP]ignore, engine already stopped by itself automatically."

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    .line 162
    return-void

    .line 165
    :cond_0
    sget-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_1

    .line 166
    sget-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    .line 167
    const-string/jumbo v0, "[STOP]voice recognizer..."

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 169
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[STOP]ignore, sIsSpeechRecognizerReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    goto :goto_0
.end method
