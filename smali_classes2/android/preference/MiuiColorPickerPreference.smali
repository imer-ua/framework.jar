.class public Landroid/preference/MiuiColorPickerPreference;
.super Landroid/preference/Preference;
.source "MiuiColorPickerPreference.java"

# interfaces
.implements Landroid/preference/MiuiColorPickerDialog$OnColorChangedListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/MiuiColorPickerPreference$SavedState;
    }
.end annotation


# instance fields
.field public CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

.field private mAlphaSliderEnabled:Z

.field private mDensity:F

.field mDialog:Landroid/preference/MiuiColorPickerDialog;

.field private mHexValueEnabled:Z

.field private mValue:I

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/preference/MiuiCoreSettingsPreference;

    invoke-direct {v0}, Landroid/preference/MiuiCoreSettingsPreference;-><init>()V

    iput-object v0, p0, Landroid/preference/MiuiColorPickerPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const/high16 v0, -0x1000000

    iput v0, p0, Landroid/preference/MiuiColorPickerPreference;->mValue:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/MiuiColorPickerPreference;->mDensity:F

    iput-boolean v1, p0, Landroid/preference/MiuiColorPickerPreference;->mAlphaSliderEnabled:Z

    iput-boolean v1, p0, Landroid/preference/MiuiColorPickerPreference;->mHexValueEnabled:Z

    invoke-direct {p0, p1, p2}, Landroid/preference/MiuiColorPickerPreference;->initialization(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static convertToARGB(I)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static convertToColorInt(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static convertToRGB(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 11

    const/4 v10, 0x1

    iget v8, p0, Landroid/preference/MiuiColorPickerPreference;->mDensity:F

    const/high16 v9, 0x41f80000    # 31.0f

    mul-float/2addr v8, v9

    float-to-int v3, v8

    iget v2, p0, Landroid/preference/MiuiColorPickerPreference;->mValue:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v1, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_4

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_3

    if-le v5, v10, :cond_0

    if-le v6, v10, :cond_0

    add-int/lit8 v8, v7, -0x2

    if-ge v5, v8, :cond_0

    add-int/lit8 v8, v4, -0x2

    if-lt v6, v8, :cond_2

    :cond_0
    const v1, -0x777778

    :goto_2
    invoke-virtual {v0, v5, v6, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    if-eq v5, v6, :cond_1

    invoke-virtual {v0, v6, v5, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private initialization(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/preference/MiuiColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/preference/MiuiColorPickerPreference;->mDensity:F

    invoke-virtual {p0, p0}, Landroid/preference/MiuiColorPickerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/preference/MiuiColorPickerPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {p0}, Landroid/preference/MiuiColorPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/preference/MiuiCoreSettingsPreference;->initialization(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V

    const-string v0, "alphaSlider"

    invoke-interface {p2, v3, v0, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/MiuiColorPickerPreference;->mAlphaSliderEnabled:Z

    const-string v0, "hexValue"

    invoke-interface {p2, v3, v0, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/MiuiColorPickerPreference;->mHexValueEnabled:Z

    :cond_0
    return-void
.end method

.method private setPreviewColor()V
    .locals 8

    const/4 v7, 0x0

    iget-object v3, p0, Landroid/preference/MiuiColorPickerPreference;->mView:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/preference/MiuiColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Landroid/preference/MiuiColorPickerPreference;->mView:Landroid/view/View;

    const v4, 0x1020018

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    iget v5, p0, Landroid/preference/MiuiColorPickerPreference;->mDensity:F

    const/high16 v6, 0x41000000    # 8.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v2, v7, v0}, Landroid/widget/LinearLayout;->removeViews(II)V

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    new-instance v3, Landroid/preference/MiuiColorAlphaPatternDrawable;

    const/high16 v4, 0x40a00000    # 5.0f

    iget v5, p0, Landroid/preference/MiuiColorPickerPreference;->mDensity:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v3, v4}, Landroid/preference/MiuiColorAlphaPatternDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Landroid/preference/MiuiColorPickerPreference;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iput-object p1, p0, Landroid/preference/MiuiColorPickerPreference;->mView:Landroid/view/View;

    invoke-direct {p0}, Landroid/preference/MiuiColorPickerPreference;->setPreviewColor()V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/preference/MiuiColorPickerPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/preference/MiuiColorPickerPreference;->persistInt(I)Z

    :cond_0
    iput p1, p0, Landroid/preference/MiuiColorPickerPreference;->mValue:I

    invoke-direct {p0}, Landroid/preference/MiuiColorPickerPreference;->setPreviewColor()V

    :try_start_0
    invoke-virtual {p0}, Landroid/preference/MiuiColorPickerPreference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/preference/MiuiColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/high16 v2, -0x1000000

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/MiuiColorPickerPreference;->showDialog(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/preference/MiuiColorPickerPreference$SavedState;

    if-nez v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/preference/MiuiColorPickerPreference$SavedState;

    invoke-virtual {v0}, Landroid/preference/MiuiColorPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, v0, Landroid/preference/MiuiColorPickerPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/preference/MiuiColorPickerPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/MiuiColorPickerPreference;->mDialog:Landroid/preference/MiuiColorPickerDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/preference/MiuiColorPickerPreference;->mDialog:Landroid/preference/MiuiColorPickerDialog;

    invoke-virtual {v2}, Landroid/preference/MiuiColorPickerDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/preference/MiuiColorPickerPreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/MiuiColorPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v2, p0, Landroid/preference/MiuiColorPickerPreference;->mDialog:Landroid/preference/MiuiColorPickerDialog;

    invoke-virtual {v2}, Landroid/preference/MiuiColorPickerDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Landroid/preference/MiuiColorPickerPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/preference/MiuiColorPickerPreference;->onSetInitialValueMin(ZLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/preference/MiuiColorPickerPreference;->onSetInitialValueMax(ZLjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onSetInitialValueMax(ZLjava/lang/Object;)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v1, p0, Landroid/preference/MiuiColorPickerPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/MiuiCoreSettingsPreference;->getIntegerValue(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/MiuiColorPickerPreference;->onColorChanged(I)V

    invoke-static {v0}, Landroid/preference/MiuiColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/MiuiColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/preference/MiuiCoreSettingsPreference;->sendIntent()V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/preference/MiuiColorPickerPreference;->onSetInitialValueMin(ZLjava/lang/Object;)V

    return-void
.end method

.method public onSetInitialValueMin(ZLjava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Landroid/preference/MiuiColorPickerPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    if-nez p1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/MiuiColorPickerPreference;->onColorChanged(I)V

    invoke-virtual {v1, v0}, Landroid/preference/MiuiCoreSettingsPreference;->setIntegerValue(I)V

    invoke-virtual {v1}, Landroid/preference/MiuiCoreSettingsPreference;->sendIntent()V

    :goto_0
    invoke-static {v0}, Landroid/preference/MiuiColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/MiuiColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget v0, p0, Landroid/preference/MiuiColorPickerPreference;->mValue:I

    invoke-virtual {p0, v0}, Landroid/preference/MiuiColorPickerPreference;->getPersistedInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/MiuiCoreSettingsPreference;->getIntegerValue(I)Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Landroid/preference/MiuiColorPickerPreference;->onColorChanged(I)V

    goto :goto_0
.end method

.method public setAlphaSliderEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/preference/MiuiColorPickerPreference;->mAlphaSliderEnabled:Z

    return-void
.end method

.method public setHexValueEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/preference/MiuiColorPickerPreference;->mHexValueEnabled:Z

    return-void
.end method

.method public setNewColor(I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/preference/MiuiColorPickerPreference;->onColorChanged(I)V

    iget-object v0, p0, Landroid/preference/MiuiColorPickerPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {v0, p1}, Landroid/preference/MiuiCoreSettingsPreference;->setIntegerValue(I)V

    invoke-virtual {v0}, Landroid/preference/MiuiCoreSettingsPreference;->sendIntent()V

    invoke-static {p1}, Landroid/preference/MiuiColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/MiuiColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 96
    new-instance v1, Ljava/lang/String;

    const-string v2, "cm8uYnVpbGQuZGlzcGxheS5pZA=="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "sc":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const-string v2, "TWl1aVBybw=="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    new-instance p1, Ljava/lang/String;

    .end local p1    # "summary":Ljava/lang/CharSequence;
    const-string/jumbo v1, "wqkgTWl1aVByby5pbmZv"

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    .line 100
    .restart local p1    # "summary":Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/preference/MiuiColorPickerDialog;

    invoke-virtual {p0}, Landroid/preference/MiuiColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/preference/MiuiColorPickerPreference;->mValue:I

    invoke-direct {v0, v1, v2}, Landroid/preference/MiuiColorPickerDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/preference/MiuiColorPickerPreference;->mDialog:Landroid/preference/MiuiColorPickerDialog;

    iget-object v0, p0, Landroid/preference/MiuiColorPickerPreference;->mDialog:Landroid/preference/MiuiColorPickerDialog;

    invoke-virtual {v0, p0}, Landroid/preference/MiuiColorPickerDialog;->setOnColorChangedListener(Landroid/preference/MiuiColorPickerDialog$OnColorChangedListener;)V

    iget-object v0, p0, Landroid/preference/MiuiColorPickerPreference;->mDialog:Landroid/preference/MiuiColorPickerDialog;

    invoke-virtual {v0, p0}, Landroid/preference/MiuiColorPickerDialog;->setMiuiColoPickerPreference(Landroid/preference/MiuiColorPickerPreference;)V

    iget-boolean v0, p0, Landroid/preference/MiuiColorPickerPreference;->mAlphaSliderEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/MiuiColorPickerPreference;->mDialog:Landroid/preference/MiuiColorPickerDialog;

    invoke-virtual {v0, v3}, Landroid/preference/MiuiColorPickerDialog;->setAlphaSliderVisible(Z)V

    :cond_0
    iget-boolean v0, p0, Landroid/preference/MiuiColorPickerPreference;->mHexValueEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/preference/MiuiColorPickerPreference;->mDialog:Landroid/preference/MiuiColorPickerDialog;

    invoke-virtual {v0, v3}, Landroid/preference/MiuiColorPickerDialog;->setHexValueEnabled(Z)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/preference/MiuiColorPickerPreference;->mDialog:Landroid/preference/MiuiColorPickerDialog;

    invoke-virtual {v0, p1}, Landroid/preference/MiuiColorPickerDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_2
    iget-object v0, p0, Landroid/preference/MiuiColorPickerPreference;->mDialog:Landroid/preference/MiuiColorPickerDialog;

    invoke-virtual {v0}, Landroid/preference/MiuiColorPickerDialog;->show()V

    return-void
.end method
