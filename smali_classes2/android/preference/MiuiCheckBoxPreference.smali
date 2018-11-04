.class public Landroid/preference/MiuiCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "MiuiCheckBoxPreference.java"


# instance fields
.field public CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

.field private mDefaultValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/preference/MiuiCoreSettingsPreference;

    invoke-direct {v0}, Landroid/preference/MiuiCoreSettingsPreference;-><init>()V

    iput-object v0, p0, Landroid/preference/MiuiCheckBoxPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    iget-object v0, p0, Landroid/preference/MiuiCheckBoxPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {p0}, Landroid/preference/MiuiCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/preference/MiuiCoreSettingsPreference;->initialization(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Landroid/preference/MiuiCheckBoxPreference;->mDefaultValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/preference/MiuiCheckBoxPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    iget v1, p0, Landroid/preference/MiuiCheckBoxPreference;->mDefaultValue:I

    invoke-virtual {v0, v1}, Landroid/preference/MiuiCoreSettingsPreference;->getIntegerValue(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/preference/MiuiCheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v2, p0, Landroid/preference/MiuiCheckBoxPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    iget v1, p0, Landroid/preference/MiuiCheckBoxPreference;->mDefaultValue:I

    invoke-virtual {v2, v1}, Landroid/preference/MiuiCoreSettingsPreference;->getIntegerValue(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/preference/MiuiCoreSettingsPreference;->setIntegerValue(I)V

    invoke-virtual {v2}, Landroid/preference/MiuiCoreSettingsPreference;->sendIntent()V

    :cond_2
    return-void
.end method
