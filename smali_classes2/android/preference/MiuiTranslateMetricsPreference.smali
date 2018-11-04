.class public Landroid/preference/MiuiTranslateMetricsPreference;
.super Ljava/lang/Object;
.source "MiuiTranslateMetricsPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field public metrics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-direct {p0}, Landroid/preference/MiuiTranslateMetricsPreference;->initHashLocale()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/MiuiTranslateMetricsPreference;->metrics:Ljava/util/Map;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Landroid/preference/MiuiTranslateMetricsPreference;->mContext:Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Landroid/preference/MiuiTranslateMetricsPreference;->initHashLocale()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/MiuiTranslateMetricsPreference;->metrics:Ljava/util/Map;

    .line 25
    return-void
.end method

.method private initHashLocale()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v5, "ruRU"

    aput-object v5, v2, v4

    const/4 v5, 0x1

    const-string/jumbo v6, "ukUA"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string v6, "beBY"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string v6, "bgBG"

    aput-object v6, v2, v5

    .line 29
    .local v2, "languages":[Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 30
    .local v3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v1, v2, v4

    .line 31
    .local v1, "language":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    .local v0, "lang":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "ruRU"

    if-ne v1, v6, :cond_0

    .line 33
    const-string v6, "mAh"

    const-string/jumbo v7, "\u043c\u0410\u0447"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v6, "%dmAh"

    const-string v7, "%d \u043c\u0410\u0447"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    const-string/jumbo v6, "ukUA"

    if-ne v1, v6, :cond_1

    .line 70
    const-string v6, "mAh"

    const-string/jumbo v7, "\u043c\u0410\u0433"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v6, "%dmAh"

    const-string v7, "%d \u043c\u0410\u0433"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_1
    const-string v6, "beBY"

    if-ne v1, v6, :cond_2

    .line 74
    const-string v6, "mAh"

    const-string/jumbo v7, "\u043c\u0410\u0433"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v6, "%dmAh"

    const-string v7, "%d \u043c\u0410\u0433"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_2
    const-string v6, "GB"

    const-string/jumbo v7, "\u0413\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v6, "TB"

    const-string/jumbo v7, "\u0422\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v6, "KB"

    const-string/jumbo v7, "\u041a\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v6, "MB"

    const-string/jumbo v7, "\u041c\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v6, "s"

    const-string/jumbo v7, "\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v6, "/s"

    const-string v7, "/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v6, "KB/s"

    const-string/jumbo v7, "\u041a\u0431/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v6, "MB/s"

    const-string/jumbo v7, "\u041c\u0431/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v6, "Kbps"

    const-string/jumbo v7, "\u041a\u0431\u0438\u0442/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v6, "Mbps"

    const-string/jumbo v7, "\u041c\u0431\u0438\u0442/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v6, "Gbps"

    const-string/jumbo v7, "\u0413\u0431\u0438\u0442/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v6, "%1.1f KB"

    const-string v7, "%1.1f \u041a\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v6, "%1.1f MB"

    const-string v7, "%1.1f \u041c\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v6, "%1.1f GB"

    const-string v7, "%1.1f \u0413\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v6, "%.1fKB"

    const-string v7, "%.1f \u041a\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v6, "%.1fMB"

    const-string v7, "%.1f \u041c\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v6, "%.1fGB"

    const-string v7, "%.1f \u0413\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v6, "G"

    const-string/jumbo v7, "\u0413\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v6, "M"

    const-string/jumbo v7, "\u041c\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v6, "B"

    const-string/jumbo v7, "\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v6, "%.0fG"

    const-string v7, "%.0f \u0413\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v6, "%.1fG"

    const-string v7, "%.1f \u0413\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v6, "%1$.2fGB"

    const-string v7, "%1$.2f \u0413\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v6, "%1$.2fMB"

    const-string v7, "%1$.2f \u041c\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v6, "%.2fKB"

    const-string v7, "%.2f \u041a\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v6, "%.2fMB"

    const-string v7, "%.2f \u041c\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v6, "0K"

    const-string v7, "0 \u041a\u0431/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v6, "64K"

    const-string v7, "64 \u041a\u0431/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v6, "128K"

    const-string v7, "128 \u041a\u0431/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v6, "256K"

    const-string v7, "256 \u041a\u0431/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v6, "512k"

    const-string v7, "512 \u041a\u0431/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v6, "512K"

    const-string v7, "512 \u041a\u0431/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v6, "1M"

    const-string v7, "1 \u041c\u0431/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v6, "2M"

    const-string v7, "2 \u041c\u0431/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v6, "4M"

    const-string v7, "4 \u041c\u0431/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v6, "5M"

    const-string v7, "5 \u041c\u0431/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v6, "10M"

    const-string v7, "10 \u041c\u0431/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v6, "20M"

    const-string v7, "20 \u041c\u0431/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v6, "30M"

    const-string v7, "30 \u041c\u0431/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v6, "40M"

    const-string v7, "40 \u041c\u0431/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v6, "50M"

    const-string v7, "50 \u041c\u0431/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v6, "100M"

    const-string v7, "100 \u041c\u0431/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v6, "0B"

    const-string v7, "0 \u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v6, "%.2f KB"

    const-string v7, "%.2f \u041a\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v6, "%.2f MB"

    const-string v7, "%.2f \u041c\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v6, "%.2f GB"

    const-string v7, "%.2f \u0413\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v6, "%d bytes"

    const-string v7, "%d \u0431\u0430\u0439\u0442"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v6, "0.1MB"

    const-string v7, "0.1 \u041c\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v6, "0MB"

    const-string v7, "0 \u041c\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v6, "0.1KB"

    const-string v7, "0.1 \u041a\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v6, "0KB"

    const-string v7, "0 \u041a\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v6, "0.1GB"

    const-string v7, "0.1 \u0413\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v6, "0GB"

    const-string v7, "0 \u0413\u0431"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 133
    .end local v0    # "lang":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "language":Ljava/lang/String;
    :cond_3
    return-object v3
.end method

.method public static translateMetrics(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 150
    new-instance v6, Ljava/lang/String;

    const-string v7, "cm8uYnVpbGQuZGlzcGxheS5pZA=="

    invoke-static {v7, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "sc":Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    const-string v7, "TWl1aVBybw=="

    invoke-static {v7, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 152
    new-instance v6, Landroid/preference/MiuiTranslateMetricsPreference;

    invoke-direct {v6}, Landroid/preference/MiuiTranslateMetricsPreference;-><init>()V

    iget-object v2, v6, Landroid/preference/MiuiTranslateMetricsPreference;->metrics:Ljava/util/Map;

    .line 153
    .local v2, "metricsTranslate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object v3, p0

    .line 154
    .local v3, "result":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "locale":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    move v5, v6

    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 170
    :goto_1
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_2
    const-string v5, "MiuiTranslateMetrics"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "String="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Locale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "TranslateString="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v5, "/\u0441"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "/s"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 180
    .end local v1    # "locale":Ljava/lang/String;
    .end local v2    # "metricsTranslate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "result":Ljava/lang/String;
    :cond_1
    :goto_3
    return-object v3

    .line 155
    .restart local v1    # "locale":Ljava/lang/String;
    .restart local v2    # "metricsTranslate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v3    # "result":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v7, "ruRU"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "ukUA"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :sswitch_2
    const-string v5, "beBY"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    :sswitch_3
    const-string v5, "bgBG"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    .line 157
    :pswitch_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "result":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 158
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_1

    .line 160
    :pswitch_1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "result":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 161
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 163
    :pswitch_2
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "result":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 164
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 166
    :pswitch_3
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "result":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/NullPointerException;
    move-object v3, p0

    goto/16 :goto_2

    .line 178
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .end local v1    # "locale":Ljava/lang/String;
    .end local v2    # "metricsTranslate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "result":Ljava/lang/String;
    :cond_3
    move-object v3, p0

    .line 180
    goto :goto_3

    nop

    .line 155
    :sswitch_data_0
    .sparse-switch
        0x2e0fda -> :sswitch_2
        0x2e174a -> :sswitch_3
        0x3593c6 -> :sswitch_0
        0x36cba2 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static translateNetworkSpeed([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "input"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 137
    new-instance v4, Ljava/lang/String;

    const-string v5, "cm8uYnVpbGQuZGlzcGxheS5pZA=="

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "sc":Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    const-string v5, "TWl1aVBybw=="

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    new-instance v4, Landroid/preference/MiuiTranslateMetricsPreference;

    invoke-direct {v4}, Landroid/preference/MiuiTranslateMetricsPreference;-><init>()V

    iget-object v2, v4, Landroid/preference/MiuiTranslateMetricsPreference;->metrics:Ljava/util/Map;

    .line 140
    .local v2, "metricsTranslate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "locale":Ljava/lang/String;
    const-string/jumbo v4, "ruRU"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "ukUA"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "beBY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "bgBG"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 142
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 143
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    aget-object v5, p0, v0

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, p0, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "i":I
    .end local v1    # "locale":Ljava/lang/String;
    .end local v2    # "metricsTranslate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    return-object p0
.end method
