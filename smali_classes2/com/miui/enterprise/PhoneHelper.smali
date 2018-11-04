.class public Lcom/miui/enterprise/PhoneHelper;
.super Ljava/lang/Object;
.source "PhoneHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Enterprise"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCallRestriction(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    const-string/jumbo v4, "ep_call_restriction_mode"

    invoke-static {p0, v4, v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 77
    .local v1, "restrictionMode":I
    packed-switch v1, :pswitch_data_0

    .line 87
    return v3

    .line 80
    :pswitch_0
    const-string/jumbo v3, "ep_call_black_list"

    .line 79
    invoke-static {p0, v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 81
    .local v0, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 84
    .end local v0    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    const-string/jumbo v4, "ep_call_white_list"

    .line 83
    invoke-static {p0, v4}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 85
    .local v2, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static checkEntDataRestriction(Landroid/content/Context;Z)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "origin"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 24
    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_0

    .line 25
    return p1

    .line 27
    :cond_0
    const-string/jumbo v1, "ep_cellular_status"

    invoke-static {p0, v1, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 28
    .local v0, "dateState":I
    if-ne v0, v2, :cond_1

    .line 29
    return p1

    .line 31
    :cond_1
    if-nez v0, :cond_2

    .line 32
    return v3

    .line 34
    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 35
    return v2

    .line 37
    :cond_3
    return p1
.end method

.method private static checkSMSRestriction(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 124
    const-string/jumbo v4, "ep_sms_restriction_mode"

    invoke-static {p0, v4, v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 126
    .local v1, "restrictionMode":I
    packed-switch v1, :pswitch_data_0

    .line 136
    return v3

    .line 129
    :pswitch_0
    const-string/jumbo v3, "ep_sms_black_list"

    .line 128
    invoke-static {p0, v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 130
    .local v0, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 133
    .end local v0    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    const-string/jumbo v4, "ep_sms_white_list"

    .line 132
    invoke-static {p0, v4}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 134
    .local v2, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static inCallRestricted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 58
    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_0

    .line 59
    return v2

    .line 61
    :cond_0
    const-string/jumbo v1, "ep_phone_call_status"

    invoke-static {p0, v1, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 63
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 64
    const-string/jumbo v1, "Enterprise"

    const-string/jumbo v2, "in call is restricted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return v4

    .line 66
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/enterprise/PhoneHelper;->checkCallRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    const-string/jumbo v1, "Enterprise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in call from number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is restricted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return v4

    .line 70
    :cond_2
    return v2
.end method

.method public static outgoingCallRestricted(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 41
    sget-boolean v2, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v2, :cond_0

    .line 42
    return v3

    .line 44
    :cond_0
    invoke-static {p1, p0}, Lmiui/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "number":Ljava/lang/String;
    const-string/jumbo v2, "ep_phone_call_status"

    invoke-static {p0, v2, v3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 47
    .local v0, "flags":I
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 48
    const-string/jumbo v2, "Enterprise"

    const-string/jumbo v3, "outgoing call is restricted"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return v5

    .line 50
    :cond_1
    invoke-static {p0, v1}, Lcom/miui/enterprise/PhoneHelper;->checkCallRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    const-string/jumbo v2, "Enterprise"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "outgoing call is restricted for number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return v5

    .line 54
    :cond_2
    return v3
.end method

.method public static smsReceiveRestricted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 108
    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_0

    .line 109
    return v2

    .line 111
    :cond_0
    const-string/jumbo v1, "ep_sms_status"

    invoke-static {p0, v1, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 113
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 114
    const-string/jumbo v1, "Enterprise"

    const-string/jumbo v2, "SMS receive blocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v4

    .line 116
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/enterprise/PhoneHelper;->checkSMSRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    const-string/jumbo v1, "Enterprise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SMS from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " blocked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v4

    .line 120
    :cond_2
    return v2
.end method

.method public static smsSendRestricted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "destAddr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 92
    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_0

    .line 93
    return v2

    .line 95
    :cond_0
    const-string/jumbo v1, "ep_sms_status"

    invoke-static {p0, v1, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 97
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 98
    const-string/jumbo v1, "Enterprise"

    const-string/jumbo v2, "SMS send abort: enterprise restricted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return v4

    .line 100
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/enterprise/PhoneHelper;->checkSMSRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    const-string/jumbo v1, "Enterprise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SMS send abort: address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is restricted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return v4

    .line 104
    :cond_2
    return v2
.end method
