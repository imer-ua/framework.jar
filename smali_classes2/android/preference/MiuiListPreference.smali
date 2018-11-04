.class public Landroid/preference/MiuiListPreference;
.super Landroid/preference/ListPreference;
.source "MiuiListPreference.java"


# instance fields
.field public CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

.field private mContext:Landroid/content/Context;

.field private mLastState:Ljava/lang/String;

.field private mPrSfSummary:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Landroid/preference/MiuiCoreSettingsPreference;

    invoke-direct {v0}, Landroid/preference/MiuiCoreSettingsPreference;-><init>()V

    iput-object v0, p0, Landroid/preference/MiuiListPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    .line 24
    iput-object p1, p0, Landroid/preference/MiuiListPreference;->mContext:Landroid/content/Context;

    .line 25
    iget-object v0, p0, Landroid/preference/MiuiListPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {p0}, Landroid/preference/MiuiListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/preference/MiuiCoreSettingsPreference;->initialization(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 27
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

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    invoke-virtual {p0}, Landroid/preference/MiuiListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/MiuiListPreference;->mLastState:Ljava/lang/String;

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/preference/MiuiListPreference;->getDependents(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/preference/MiuiListPreference;->notifyDependencyChange(Z)V

    iget-object v1, p0, Landroid/preference/MiuiListPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {v1, v0}, Landroid/preference/MiuiCoreSettingsPreference;->setStringValue(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/preference/MiuiCoreSettingsPreference;->sendIntent()V

    iput-object v0, p0, Landroid/preference/MiuiListPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/preference/MiuiListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/MiuiListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/preference/MiuiListPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/MiuiCoreSettingsPreference;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/MiuiListPreference;->mLastState:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/preference/MiuiListPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/MiuiListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/preference/MiuiListPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    iget-object v1, p0, Landroid/preference/MiuiListPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/MiuiCoreSettingsPreference;->setStringValue(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/preference/MiuiListPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {v0}, Landroid/preference/MiuiCoreSettingsPreference;->sendIntent()V

    invoke-virtual {p0}, Landroid/preference/MiuiListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/MiuiListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/preference/MiuiListPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/MiuiListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/preference/MiuiListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/MiuiListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/preference/MiuiListPreference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/preference/MiuiArmourSettingsPreference;->checkSummary(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/preference/MiuiListPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

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
