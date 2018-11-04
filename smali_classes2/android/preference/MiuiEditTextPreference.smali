.class public Landroid/preference/MiuiEditTextPreference;
.super Landroid/preference/EditTextPreference;
.source "MiuiEditTextPreference.java"


# instance fields
.field public CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

.field private isPassword:Z

.field private mA:Landroid/preference/MiuiArmourSettingsPreference;

.field private mContext:Landroid/content/Context;

.field private mLastState:Ljava/lang/String;

.field private mPrSfSummary:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    new-instance v1, Landroid/preference/MiuiCoreSettingsPreference;

    invoke-direct {v1}, Landroid/preference/MiuiCoreSettingsPreference;-><init>()V

    iput-object v1, p0, Landroid/preference/MiuiEditTextPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    .line 20
    iput-object p1, p0, Landroid/preference/MiuiEditTextPreference;->mContext:Landroid/content/Context;

    .line 21
    iget-object v1, p0, Landroid/preference/MiuiEditTextPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {p0}, Landroid/preference/MiuiEditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/preference/MiuiCoreSettingsPreference;->initialization(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 22
    new-instance v1, Landroid/preference/MiuiArmourSettingsPreference;

    iget-object v2, p0, Landroid/preference/MiuiEditTextPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/preference/MiuiArmourSettingsPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/preference/MiuiEditTextPreference;->mA:Landroid/preference/MiuiArmourSettingsPreference;

    .line 23
    iget-object v1, p0, Landroid/preference/MiuiEditTextPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {p0}, Landroid/preference/MiuiEditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/MiuiCoreSettingsPreference;->initSummary(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/MiuiEditTextPreference;->mPrSfSummary:[Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Landroid/preference/MiuiEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    and-int/lit16 v0, v1, 0xff0

    .line 25
    .local v0, "variation":I
    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/preference/MiuiEditTextPreference;->isPassword:Z

    .line 29
    return-void

    .line 25
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDependents(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, "result":Z
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gez v1, :cond_0

    .line 35
    const/4 v0, 0x1

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 37
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 106
    invoke-virtual {p0}, Landroid/preference/MiuiEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Landroid/preference/MiuiEditTextPreference;->mLastState:Ljava/lang/String;

    if-eq v1, v0, :cond_1

    .line 108
    invoke-virtual {p0, v0}, Landroid/preference/MiuiEditTextPreference;->getDependents(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/preference/MiuiEditTextPreference;->notifyDependencyChange(Z)V

    .line 109
    iget-boolean v1, p0, Landroid/preference/MiuiEditTextPreference;->isPassword:Z

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Landroid/preference/MiuiEditTextPreference;->mA:Landroid/preference/MiuiArmourSettingsPreference;

    invoke-virtual {v1, v0}, Landroid/preference/MiuiArmourSettingsPreference;->crC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_0
    iget-object v1, p0, Landroid/preference/MiuiEditTextPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {v1, v0}, Landroid/preference/MiuiCoreSettingsPreference;->setStringValue(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Landroid/preference/MiuiEditTextPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {v1}, Landroid/preference/MiuiCoreSettingsPreference;->sendIntent()V

    .line 114
    iput-object v0, p0, Landroid/preference/MiuiEditTextPreference;->mLastState:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Landroid/preference/MiuiEditTextPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/MiuiEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    :cond_1
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 3
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 79
    iget-object v2, p0, Landroid/preference/MiuiEditTextPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/preference/MiuiCoreSettingsPreference;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/MiuiEditTextPreference;->mLastState:Ljava/lang/String;

    .line 80
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-gt v1, v2, :cond_1

    .line 81
    if-nez p1, :cond_1

    move-object v0, p2

    .line 83
    check-cast v0, Ljava/lang/String;

    .line 84
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/preference/MiuiEditTextPreference;->setText(Ljava/lang/String;)V

    .line 85
    iget-boolean v1, p0, Landroid/preference/MiuiEditTextPreference;->isPassword:Z

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Landroid/preference/MiuiEditTextPreference;->mA:Landroid/preference/MiuiArmourSettingsPreference;

    invoke-virtual {v1, v0}, Landroid/preference/MiuiArmourSettingsPreference;->crC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    iget-object v1, p0, Landroid/preference/MiuiEditTextPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {v1, v0}, Landroid/preference/MiuiCoreSettingsPreference;->setStringValue(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Landroid/preference/MiuiEditTextPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {v1}, Landroid/preference/MiuiCoreSettingsPreference;->sendIntent()V

    .line 90
    invoke-virtual {p0, v0}, Landroid/preference/MiuiEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 101
    .end local v0    # "str":Ljava/lang/String;
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-boolean v1, p0, Landroid/preference/MiuiEditTextPreference;->isPassword:Z

    if-eqz v1, :cond_2

    .line 96
    iget-object v1, p0, Landroid/preference/MiuiEditTextPreference;->mA:Landroid/preference/MiuiArmourSettingsPreference;

    iget-object v2, p0, Landroid/preference/MiuiEditTextPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/MiuiArmourSettingsPreference;->dcC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/MiuiEditTextPreference;->mLastState:Ljava/lang/String;

    .line 98
    :cond_2
    iget-object v1, p0, Landroid/preference/MiuiEditTextPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/MiuiEditTextPreference;->setText(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Landroid/preference/MiuiEditTextPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/MiuiEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "persistent"    # Z

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->setPersistent(Z)V

    .line 74
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/preference/MiuiEditTextPreference;->isPassword:Z

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    new-array v1, v1, [C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    const-string v1, "\u0000"

    const-string v2, "*"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/preference/MiuiEditTextPreference;->mPrSfSummary:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/MiuiEditTextPreference;->mPrSfSummary:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    iget-object v0, p0, Landroid/preference/MiuiEditTextPreference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/preference/MiuiArmourSettingsPreference;->checkSummary(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Landroid/preference/MiuiEditTextPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {v1}, Landroid/preference/MiuiCoreSettingsPreference;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gez v1, :cond_0

    .line 49
    const/4 v0, 0x1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 51
    :catch_0
    move-exception v1

    goto :goto_0
.end method
