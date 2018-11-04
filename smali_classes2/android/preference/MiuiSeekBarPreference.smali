.class public Landroid/preference/MiuiSeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "MiuiSeekBarPreference.java"

# interfaces
.implements Landroid/preference/MiuiSeekBar$OnSeekBarHintProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/MiuiSeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field public CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:I

.field private mHintStyle:Ljava/lang/String;

.field private mHintWidth:I

.field private mMax:I

.field private mMin:I

.field private mMiuiSeekBar:Landroid/preference/MiuiSeekBar;

.field private mPrSfSummary:[Ljava/lang/String;

.field private mProgress:I

.field private mShow:Z

.field private mStep:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/preference/MiuiCoreSettingsPreference;

    invoke-direct {v0}, Landroid/preference/MiuiCoreSettingsPreference;-><init>()V

    iput-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    iput-object p1, p0, Landroid/preference/MiuiSeekBarPreference;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {p0}, Landroid/preference/MiuiSeekBarPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/preference/MiuiCoreSettingsPreference;->initialization(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {p0}, Landroid/preference/MiuiSeekBarPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/MiuiCoreSettingsPreference;->initSummary(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->mPrSfSummary:[Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "Show"

    invoke-interface {p2, v0, v1, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/MiuiSeekBarPreference;->mShow:Z

    invoke-direct {p0}, Landroid/preference/MiuiSeekBarPreference;->initialization()V

    return-void
.end method

.method private initialization()V
    .locals 5

    const/16 v3, 0x64

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string/jumbo v1, "min"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/preference/MiuiCoreSettingsPreference;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/MiuiSeekBarPreference;->setMin(I)V

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string/jumbo v1, "max"

    invoke-virtual {v0, v1, v3}, Landroid/preference/MiuiCoreSettingsPreference;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/MiuiSeekBarPreference;->setMax(I)V

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string/jumbo v1, "step"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/preference/MiuiCoreSettingsPreference;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/MiuiSeekBarPreference;->setStep(I)V

    iget-boolean v0, p0, Landroid/preference/MiuiSeekBarPreference;->mShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v1, "HintWidth"

    invoke-virtual {v0, v1, v3}, Landroid/preference/MiuiCoreSettingsPreference;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/MiuiSeekBarPreference;->mHintWidth:I

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v1, "HintStyle"

    invoke-virtual {v0, v1}, Landroid/preference/MiuiCoreSettingsPreference;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->mHintStyle:Ljava/lang/String;

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v1, "HintOffset"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/preference/MiuiCoreSettingsPreference;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/MiuiSeekBarPreference;->mYOffset:I

    :cond_0
    return-void
.end method

.method private setProgress(IZ)V
    .locals 1

    iget v0, p0, Landroid/preference/MiuiSeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    iget p1, p0, Landroid/preference/MiuiSeekBarPreference;->mMax:I

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget v0, p0, Landroid/preference/MiuiSeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Landroid/preference/MiuiSeekBarPreference;->mProgress:I

    invoke-virtual {p0, p1}, Landroid/preference/MiuiSeekBarPreference;->persistInt(I)Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/preference/MiuiSeekBarPreference;->notifyChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getDependents(Ljava/lang/Integer;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    const/16 v1, 0xa

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string/jumbo v2, "miui_seekbar"

    invoke-virtual {v0, v2}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/preference/MiuiSeekBar;

    iput-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->mMiuiSeekBar:Landroid/preference/MiuiSeekBar;

    iget-boolean v0, p0, Landroid/preference/MiuiSeekBarPreference;->mShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->mMiuiSeekBar:Landroid/preference/MiuiSeekBar;

    iget v2, p0, Landroid/preference/MiuiSeekBarPreference;->mHintWidth:I

    invoke-virtual {v0, v2}, Landroid/preference/MiuiSeekBar;->setHintWidth(I)V

    :goto_0
    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->mMiuiSeekBar:Landroid/preference/MiuiSeekBar;

    iget v2, p0, Landroid/preference/MiuiSeekBarPreference;->mYOffset:I

    iput v2, v0, Landroid/preference/MiuiSeekBar;->mYOffset:I

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->mMiuiSeekBar:Landroid/preference/MiuiSeekBar;

    iget-object v2, p0, Landroid/preference/MiuiSeekBarPreference;->mHintStyle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/preference/MiuiSeekBar;->setHintStyle(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->mMiuiSeekBar:Landroid/preference/MiuiSeekBar;

    iget-object v2, p0, Landroid/preference/MiuiSeekBarPreference;->mMiuiSeekBar:Landroid/preference/MiuiSeekBar;

    invoke-virtual {v0, p1, v2}, Landroid/preference/MiuiSeekBar;->setHintView(Landroid/view/View;Landroid/widget/SeekBar;)V

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->mMiuiSeekBar:Landroid/preference/MiuiSeekBar;

    invoke-virtual {v0, p0}, Landroid/preference/MiuiSeekBar;->setOnProgressChangeListener(Landroid/preference/MiuiSeekBar$OnSeekBarHintProgressChangeListener;)V

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->mMiuiSeekBar:Landroid/preference/MiuiSeekBar;

    iget v2, p0, Landroid/preference/MiuiSeekBarPreference;->mMax:I

    iput v2, v0, Landroid/preference/MiuiSeekBar;->mMax:I

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->mMiuiSeekBar:Landroid/preference/MiuiSeekBar;

    iget v2, p0, Landroid/preference/MiuiSeekBarPreference;->mMin:I

    iput v2, v0, Landroid/preference/MiuiSeekBar;->mMin:I

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->mMiuiSeekBar:Landroid/preference/MiuiSeekBar;

    iget v2, p0, Landroid/preference/MiuiSeekBarPreference;->mStep:I

    iput v2, v0, Landroid/preference/MiuiSeekBar;->mStep:I

    iget-object v2, p0, Landroid/preference/MiuiSeekBarPreference;->mMiuiSeekBar:Landroid/preference/MiuiSeekBar;

    iget v0, p0, Landroid/preference/MiuiSeekBarPreference;->mYOffset:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/preference/MiuiSeekBarPreference;->mYOffset:I

    :goto_1
    iput v0, v2, Landroid/preference/MiuiSeekBar;->mYOffset:I

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->mMiuiSeekBar:Landroid/preference/MiuiSeekBar;

    iget v1, p0, Landroid/preference/MiuiSeekBarPreference;->mProgress:I

    iput v1, v0, Landroid/preference/MiuiSeekBar;->mProgress:I

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->mMiuiSeekBar:Landroid/preference/MiuiSeekBar;

    iget v1, p0, Landroid/preference/MiuiSeekBarPreference;->mMax:I

    iget v2, p0, Landroid/preference/MiuiSeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/preference/MiuiSeekBarPreference;->mStep:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/MiuiSeekBar;->setMax(I)V

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->mMiuiSeekBar:Landroid/preference/MiuiSeekBar;

    iget v1, p0, Landroid/preference/MiuiSeekBarPreference;->mProgress:I

    iget v2, p0, Landroid/preference/MiuiSeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/preference/MiuiSeekBarPreference;->mStep:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/MiuiSeekBar;->setProgress(I)V

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->mMiuiSeekBar:Landroid/preference/MiuiSeekBar;

    invoke-virtual {p0}, Landroid/preference/MiuiSeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/MiuiSeekBar;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->mMiuiSeekBar:Landroid/preference/MiuiSeekBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/MiuiSeekBar;->setHintWidth(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/preference/MiuiSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v2, p0, Landroid/preference/MiuiSeekBarPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string/jumbo v3, "seekbar_preference_layout"

    invoke-virtual {v2, v3}, Landroid/preference/MiuiCoreSettingsPreference;->LayoutToID(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/preference/MiuiSeekBarPreference;->mDefaultValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onHintTextChanged(Landroid/preference/MiuiSeekBar;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onMiuiSeekBarProgress(I)V
    .locals 2

    iget v0, p0, Landroid/preference/MiuiSeekBarPreference;->mStep:I

    mul-int/2addr v0, p1

    iget v1, p0, Landroid/preference/MiuiSeekBarPreference;->mMin:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/preference/MiuiSeekBarPreference;->mProgress:I

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->mMiuiSeekBar:Landroid/preference/MiuiSeekBar;

    iget v1, p0, Landroid/preference/MiuiSeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/preference/MiuiSeekBar;->setProgress(I)V

    iget v0, p0, Landroid/preference/MiuiSeekBarPreference;->mProgress:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/MiuiSeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget v0, p0, Landroid/preference/MiuiSeekBarPreference;->mProgress:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/MiuiSeekBarPreference;->getDependents(Ljava/lang/Integer;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/MiuiSeekBarPreference;->notifyDependencyChange(Z)V

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    iget v1, p0, Landroid/preference/MiuiSeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/preference/MiuiCoreSettingsPreference;->setIntegerValue(I)V

    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {v0}, Landroid/preference/MiuiCoreSettingsPreference;->sendIntent()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/MiuiSeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/preference/MiuiSeekBarPreference$SavedState;

    invoke-virtual {v0}, Landroid/preference/MiuiSeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Landroid/preference/MiuiSeekBarPreference$SavedState;->progress:I

    iput v1, p0, Landroid/preference/MiuiSeekBarPreference;->mProgress:I

    iget v1, v0, Landroid/preference/MiuiSeekBarPreference$SavedState;->max:I

    iput v1, p0, Landroid/preference/MiuiSeekBarPreference;->mMax:I

    iget v1, v0, Landroid/preference/MiuiSeekBarPreference$SavedState;->step:I

    iput v1, p0, Landroid/preference/MiuiSeekBarPreference;->mStep:I

    iget v1, v0, Landroid/preference/MiuiSeekBarPreference$SavedState;->min:I

    iput v1, p0, Landroid/preference/MiuiSeekBarPreference;->mMin:I

    invoke-virtual {p0}, Landroid/preference/MiuiSeekBarPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/MiuiSeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Landroid/preference/MiuiSeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/MiuiSeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Landroid/preference/MiuiSeekBarPreference;->mProgress:I

    iput v2, v0, Landroid/preference/MiuiSeekBarPreference$SavedState;->progress:I

    iget v2, p0, Landroid/preference/MiuiSeekBarPreference;->mMax:I

    iput v2, v0, Landroid/preference/MiuiSeekBarPreference$SavedState;->max:I

    iget v2, p0, Landroid/preference/MiuiSeekBarPreference;->mMin:I

    iput v2, v0, Landroid/preference/MiuiSeekBarPreference$SavedState;->min:I

    iget v2, p0, Landroid/preference/MiuiSeekBarPreference;->mStep:I

    iput v2, v0, Landroid/preference/MiuiSeekBarPreference$SavedState;->step:I

    move-object v1, v0

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 3

    iget-object v2, p0, Landroid/preference/MiuiSeekBarPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    if-eqz p2, :cond_1

    iget v1, p0, Landroid/preference/MiuiSeekBarPreference;->mDefaultValue:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/MiuiCoreSettingsPreference;->getIntegerValue(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-gt v1, v2, :cond_3

    if-nez p1, :cond_2

    iget-object v1, p0, Landroid/preference/MiuiSeekBarPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {v1, v0}, Landroid/preference/MiuiCoreSettingsPreference;->setIntegerValue(I)V

    invoke-virtual {p0, v0}, Landroid/preference/MiuiSeekBarPreference;->setProgress(I)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/MiuiSeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/preference/MiuiSeekBarPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {v1}, Landroid/preference/MiuiCoreSettingsPreference;->sendIntent()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/preference/MiuiSeekBarPreference;->setProgress(I)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/MiuiSeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Landroid/preference/MiuiSeekBarPreference;->setProgress(I)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/MiuiSeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget v1, p0, Landroid/preference/MiuiSeekBarPreference;->mDefaultValue:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/preference/MiuiSeekBarPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {v1}, Landroid/preference/MiuiCoreSettingsPreference;->sendIntent()V

    goto :goto_1
.end method

.method public setMax(I)V
    .locals 1

    iget v0, p0, Landroid/preference/MiuiSeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/preference/MiuiSeekBarPreference;->mMax:I

    invoke-virtual {p0}, Landroid/preference/MiuiSeekBarPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setMin(I)V
    .locals 1

    iget v0, p0, Landroid/preference/MiuiSeekBarPreference;->mMin:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/preference/MiuiSeekBarPreference;->mMin:I

    invoke-virtual {p0}, Landroid/preference/MiuiSeekBarPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/preference/MiuiSeekBarPreference;->setProgress(IZ)V

    return-void
.end method

.method public setStep(I)V
    .locals 1

    iget v0, p0, Landroid/preference/MiuiSeekBarPreference;->mStep:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/preference/MiuiSeekBarPreference;->mStep:I

    invoke-virtual {p0}, Landroid/preference/MiuiSeekBarPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/preference/MiuiSeekBarPreference;->mPrSfSummary:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/MiuiSeekBarPreference;->mPrSfSummary:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 80
    iget-object v0, p0, Landroid/preference/MiuiSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/preference/MiuiArmourSettingsPreference;->checkSummary(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/preference/MiuiSeekBarPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    iget v2, p0, Landroid/preference/MiuiSeekBarPreference;->mProgress:I

    invoke-virtual {v1, v2}, Landroid/preference/MiuiCoreSettingsPreference;->getIntegerValue(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
