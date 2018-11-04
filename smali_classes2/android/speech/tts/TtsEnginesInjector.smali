.class Landroid/speech/tts/TtsEnginesInjector;
.super Ljava/lang/Object;
.source "TtsEnginesInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findFirstEngineSupportLocale(Landroid/speech/tts/TtsEngines;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .param p0, "ttsEngines"    # Landroid/speech/tts/TtsEngines;
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v3

    .line 38
    .local v3, "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "engine$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 39
    .local v0, "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    iget-object v4, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 40
    .local v2, "engineDefaultLocale":Ljava/util/Locale;
    invoke-virtual {v2, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    iget-object v4, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    return-object v4

    .line 45
    .end local v0    # "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    .end local v2    # "engineDefaultLocale":Ljava/util/Locale;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method static getRecommendEngineForLocale(Landroid/speech/tts/TtsEngines;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p0, "ttsEngines"    # Landroid/speech/tts/TtsEngines;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 16
    const-string/jumbo v1, "com.baidu.duersdk.opensdk"

    .line 17
    .local v1, "openSdkSpeechEngine":Ljava/lang/String;
    const-string/jumbo v0, "com.xiaomi.mibrain.speech"

    .line 18
    .local v0, "mibrainEngine":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    const-string/jumbo v2, "com.xiaomi.mibrain.speech"

    invoke-virtual {p0, v2}, Landroid/speech/tts/TtsEngines;->isEngineInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    const-string/jumbo v2, "com.xiaomi.mibrain.speech"

    return-object v2

    .line 22
    :cond_0
    const-string/jumbo v2, "com.baidu.duersdk.opensdk"

    invoke-virtual {p0, v2}, Landroid/speech/tts/TtsEngines;->isEngineInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    const-string/jumbo v2, "com.baidu.duersdk.opensdk"

    return-object v2

    .line 26
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method
