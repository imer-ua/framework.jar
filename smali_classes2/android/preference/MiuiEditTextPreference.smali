.class public Landroid/preference/MiuiEditTextPreference;
.super Landroid/preference/EditTextPreference;
.source "MiuiEditTextPreference.java"


# instance fields
.field public CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

.field private mLastState:Ljava/lang/String;

.field private mPrSfSummary:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/preference/MiuiCoreSettingsPreference;

    invoke-direct {v0}, Landroid/preference/MiuiCoreSettingsPreference;-><init>()V

    iput-object v0, p0, Landroid/preference/MiuiEditTextPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    iget-object v0, p0, Landroid/preference/MiuiEditTextPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {p0}, Landroid/preference/MiuiEditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/preference/MiuiCoreSettingsPreference;->initialization(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/preference/MiuiEditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/MiuiCoreSettingsPreference;->initSummary(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/MiuiEditTextPreference;->mPrSfSummary:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDependents(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    invoke-virtual {p0}, Landroid/preference/MiuiEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/MiuiEditTextPreference;->mLastState:Ljava/lang/String;

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/preference/MiuiEditTextPreference;->getDependents(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/preference/MiuiEditTextPreference;->notifyDependencyChange(Z)V

    iget-object v1, p0, Landroid/preference/MiuiEditTextPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {v1, v0}, Landroid/preference/MiuiCoreSettingsPreference;->setStringValue(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/preference/MiuiCoreSettingsPreference;->sendIntent()V

    iput-object v0, p0, Landroid/preference/MiuiEditTextPreference;->mLastState:Ljava/lang/String;

    iget-object v1, p0, Landroid/preference/MiuiEditTextPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/MiuiEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 3

    iget-object v2, p0, Landroid/preference/MiuiEditTextPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/preference/MiuiCoreSettingsPreference;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/MiuiEditTextPreference;->mLastState:Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-gt v1, v0, :cond_0

    if-nez p1, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/MiuiEditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/preference/MiuiCoreSettingsPreference;->setStringValue(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/preference/MiuiCoreSettingsPreference;->sendIntent()V

    invoke-virtual {p0, v0}, Landroid/preference/MiuiEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/preference/MiuiEditTextPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/MiuiEditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/preference/MiuiEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPersistent(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->setPersistent(Z)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 3

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

    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/preference/MiuiEditTextPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {v1}, Landroid/preference/MiuiCoreSettingsPreference;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
