.class public Landroid/preference/MiuiColorPickerDialog;
.super Landroid/app/Dialog;
.source "MiuiColorPickerDialog.java"

# interfaces
.implements Landroid/preference/MiuiColorPickerView$OnColorChangedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/MiuiColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field public CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

.field private mBlack:Landroid/preference/MiuiColorPickerPanelView;

.field private mBlue:Landroid/preference/MiuiColorPickerPanelView;

.field private mColorPicker:Landroid/preference/MiuiColorPickerView;

.field private mGreen:Landroid/preference/MiuiColorPickerPanelView;

.field private mHexDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mHexText:Landroid/widget/TextView;

.field private mHexVal:Landroid/widget/EditText;

.field private mHexValueEnabled:Z

.field private mLayout:Landroid/view/View;

.field private mListener:Landroid/preference/MiuiColorPickerDialog$OnColorChangedListener;

.field public mMiuiColorPickerPreference:Landroid/preference/MiuiColorPickerPreference;

.field private mNewColor:Landroid/preference/MiuiColorPickerPanelView;

.field private mOldColor:Landroid/preference/MiuiColorPickerPanelView;

.field private mOrientation:I

.field private mRed:Landroid/preference/MiuiColorPickerPanelView;

.field private mSetButton:Landroid/widget/ImageView;

.field private mWhite:Landroid/preference/MiuiColorPickerPanelView;

.field private mYellow:Landroid/preference/MiuiColorPickerPanelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/preference/MiuiCoreSettingsPreference;

    invoke-direct {v0}, Landroid/preference/MiuiCoreSettingsPreference;-><init>()V

    iput-object v0, p0, Landroid/preference/MiuiColorPickerDialog;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/MiuiColorPickerDialog;->mHexValueEnabled:Z

    iget-object v0, p0, Landroid/preference/MiuiColorPickerDialog;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/preference/MiuiCoreSettingsPreference;->setBridge(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p2}, Landroid/preference/MiuiColorPickerDialog;->initialization(I)V

    return-void
.end method

.method static synthetic access$000(Landroid/preference/MiuiColorPickerDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Landroid/preference/MiuiColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Landroid/preference/MiuiColorPickerDialog;)Landroid/preference/MiuiColorPickerView;
    .locals 1

    iget-object v0, p0, Landroid/preference/MiuiColorPickerDialog;->mColorPicker:Landroid/preference/MiuiColorPickerView;

    return-object v0
.end method

.method static synthetic access$200(Landroid/preference/MiuiColorPickerDialog;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/preference/MiuiColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method private initialization(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/preference/MiuiColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    invoke-direct {p0, p1}, Landroid/preference/MiuiColorPickerDialog;->setUp(I)V

    return-void
.end method

.method private setUp(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/preference/MiuiColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v2, "color_preference_layout"

    invoke-virtual {v1, v2}, Landroid/preference/MiuiCoreSettingsPreference;->LayoutToID(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Landroid/preference/MiuiColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Landroid/preference/MiuiColorPickerDialog;->mOrientation:I

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mLayout:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/preference/MiuiColorPickerDialog;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroid/preference/MiuiColorPickerDialog;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v3, "color_picker_view"

    invoke-virtual {v2, v3}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/preference/MiuiColorPickerView;

    iput-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mColorPicker:Landroid/preference/MiuiColorPickerView;

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroid/preference/MiuiColorPickerDialog;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string/jumbo v3, "old_color_panel"

    invoke-virtual {v2, v3}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/preference/MiuiColorPickerPanelView;

    iput-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mOldColor:Landroid/preference/MiuiColorPickerPanelView;

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroid/preference/MiuiColorPickerDialog;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string/jumbo v3, "new_color_panel"

    invoke-virtual {v2, v3}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/preference/MiuiColorPickerPanelView;

    iput-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mNewColor:Landroid/preference/MiuiColorPickerPanelView;

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroid/preference/MiuiColorPickerDialog;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string/jumbo v3, "white_panel"

    invoke-virtual {v2, v3}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/preference/MiuiColorPickerPanelView;

    iput-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mWhite:Landroid/preference/MiuiColorPickerPanelView;

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroid/preference/MiuiColorPickerDialog;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v3, "black_panel"

    invoke-virtual {v2, v3}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/preference/MiuiColorPickerPanelView;

    iput-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mBlack:Landroid/preference/MiuiColorPickerPanelView;

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroid/preference/MiuiColorPickerDialog;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v3, "blue_panel"

    invoke-virtual {v2, v3}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/preference/MiuiColorPickerPanelView;

    iput-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mBlue:Landroid/preference/MiuiColorPickerPanelView;

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroid/preference/MiuiColorPickerDialog;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string/jumbo v3, "red_panel"

    invoke-virtual {v2, v3}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/preference/MiuiColorPickerPanelView;

    iput-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mRed:Landroid/preference/MiuiColorPickerPanelView;

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroid/preference/MiuiColorPickerDialog;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v3, "green_panel"

    invoke-virtual {v2, v3}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/preference/MiuiColorPickerPanelView;

    iput-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mGreen:Landroid/preference/MiuiColorPickerPanelView;

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroid/preference/MiuiColorPickerDialog;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string/jumbo v3, "yellow_panel"

    invoke-virtual {v2, v3}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/preference/MiuiColorPickerPanelView;

    iput-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mYellow:Landroid/preference/MiuiColorPickerPanelView;

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroid/preference/MiuiColorPickerDialog;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v3, "hex"

    invoke-virtual {v2, v3}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroid/preference/MiuiColorPickerDialog;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v3, "hex_text"

    invoke-virtual {v2, v3}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mHexText:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v2, p0, Landroid/preference/MiuiColorPickerDialog;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v3, "enter"

    invoke-virtual {v2, v3}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mSetButton:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-instance v2, Landroid/preference/MiuiColorPickerDialog$1;

    invoke-direct {v2, p0}, Landroid/preference/MiuiColorPickerDialog$1;-><init>(Landroid/preference/MiuiColorPickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mOldColor:Landroid/preference/MiuiColorPickerPanelView;

    invoke-virtual {v1}, Landroid/preference/MiuiColorPickerPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/preference/MiuiColorPickerDialog;->mColorPicker:Landroid/preference/MiuiColorPickerView;

    invoke-virtual {v2}, Landroid/preference/MiuiColorPickerView;->getDrawingOffset()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Landroid/preference/MiuiColorPickerDialog;->mColorPicker:Landroid/preference/MiuiColorPickerView;

    invoke-virtual {v3}, Landroid/preference/MiuiColorPickerView;->getDrawingOffset()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mOldColor:Landroid/preference/MiuiColorPickerPanelView;

    invoke-virtual {v1, p0}, Landroid/preference/MiuiColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mNewColor:Landroid/preference/MiuiColorPickerPanelView;

    invoke-virtual {v1, p0}, Landroid/preference/MiuiColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mColorPicker:Landroid/preference/MiuiColorPickerView;

    invoke-virtual {v1, p0}, Landroid/preference/MiuiColorPickerView;->setOnColorChangedListener(Landroid/preference/MiuiColorPickerView$OnColorChangedListener;)V

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mOldColor:Landroid/preference/MiuiColorPickerPanelView;

    invoke-virtual {v1, p1}, Landroid/preference/MiuiColorPickerPanelView;->setColor(I)V

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mColorPicker:Landroid/preference/MiuiColorPickerView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/preference/MiuiColorPickerView;->setColor(IZ)V

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mSetButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mSetButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/preference/MiuiColorPickerDialog$2;

    invoke-direct {v2, p0}, Landroid/preference/MiuiColorPickerDialog$2;-><init>(Landroid/preference/MiuiColorPickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mWhite:Landroid/preference/MiuiColorPickerPanelView;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/preference/MiuiColorPickerDialog;->setColorInTemplate(Landroid/preference/MiuiColorPickerPanelView;I)V

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mBlack:Landroid/preference/MiuiColorPickerPanelView;

    const/high16 v2, -0x1000000

    invoke-virtual {p0, v1, v2}, Landroid/preference/MiuiColorPickerDialog;->setColorInTemplate(Landroid/preference/MiuiColorPickerPanelView;I)V

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mBlue:Landroid/preference/MiuiColorPickerPanelView;

    const v2, -0xffff01

    invoke-virtual {p0, v1, v2}, Landroid/preference/MiuiColorPickerDialog;->setColorInTemplate(Landroid/preference/MiuiColorPickerPanelView;I)V

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mRed:Landroid/preference/MiuiColorPickerPanelView;

    const/high16 v2, -0x10000

    invoke-virtual {p0, v1, v2}, Landroid/preference/MiuiColorPickerDialog;->setColorInTemplate(Landroid/preference/MiuiColorPickerPanelView;I)V

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mGreen:Landroid/preference/MiuiColorPickerPanelView;

    const v2, -0xff0100

    invoke-virtual {p0, v1, v2}, Landroid/preference/MiuiColorPickerDialog;->setColorInTemplate(Landroid/preference/MiuiColorPickerPanelView;I)V

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mYellow:Landroid/preference/MiuiColorPickerPanelView;

    const/16 v2, -0x100

    invoke-virtual {p0, v1, v2}, Landroid/preference/MiuiColorPickerDialog;->setColorInTemplate(Landroid/preference/MiuiColorPickerPanelView;I)V

    return-void
.end method

.method private updateHexLengthFilter()V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/preference/MiuiColorPickerDialog;->getAlphaSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/MiuiColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/preference/MiuiColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private updateHexValue(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/preference/MiuiColorPickerDialog;->getAlphaSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/MiuiColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-static {p1}, Landroid/preference/MiuiColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Landroid/preference/MiuiColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/preference/MiuiColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-static {p1}, Landroid/preference/MiuiColorPickerPreference;->convertToRGB(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getAlphaSliderVisible()Z
    .locals 1

    iget-object v0, p0, Landroid/preference/MiuiColorPickerDialog;->mColorPicker:Landroid/preference/MiuiColorPickerView;

    invoke-virtual {v0}, Landroid/preference/MiuiColorPickerView;->getAlphaSliderVisible()Z

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Landroid/preference/MiuiColorPickerDialog;->mColorPicker:Landroid/preference/MiuiColorPickerView;

    invoke-virtual {v0}, Landroid/preference/MiuiColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public getHexValueEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/preference/MiuiColorPickerDialog;->mHexValueEnabled:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Landroid/preference/MiuiColorPickerDialog;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string/jumbo v3, "new_color_panel"

    invoke-virtual {v2, v3}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mListener:Landroid/preference/MiuiColorPickerDialog$OnColorChangedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mNewColor:Landroid/preference/MiuiColorPickerPanelView;

    invoke-virtual {v1}, Landroid/preference/MiuiColorPickerPanelView;->getColor()I

    move-result v0

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mMiuiColorPickerPreference:Landroid/preference/MiuiColorPickerPreference;

    invoke-virtual {v1, v0}, Landroid/preference/MiuiColorPickerPreference;->setNewColor(I)V

    iget-object v1, p0, Landroid/preference/MiuiColorPickerDialog;->mListener:Landroid/preference/MiuiColorPickerDialog$OnColorChangedListener;

    invoke-interface {v1, v0}, Landroid/preference/MiuiColorPickerDialog$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/preference/MiuiColorPickerDialog;->dismiss()V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 1

    iget-object v0, p0, Landroid/preference/MiuiColorPickerDialog;->mNewColor:Landroid/preference/MiuiColorPickerPanelView;

    invoke-virtual {v0, p1}, Landroid/preference/MiuiColorPickerPanelView;->setColor(I)V

    iget-boolean v0, p0, Landroid/preference/MiuiColorPickerDialog;->mHexValueEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/preference/MiuiColorPickerDialog;->updateHexValue(I)V

    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    invoke-virtual {p0}, Landroid/preference/MiuiColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Landroid/preference/MiuiColorPickerDialog;->mOrientation:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/preference/MiuiColorPickerDialog;->mOldColor:Landroid/preference/MiuiColorPickerPanelView;

    invoke-virtual {v2}, Landroid/preference/MiuiColorPickerPanelView;->getColor()I

    move-result v1

    iget-object v2, p0, Landroid/preference/MiuiColorPickerDialog;->mNewColor:Landroid/preference/MiuiColorPickerPanelView;

    invoke-virtual {v2}, Landroid/preference/MiuiColorPickerPanelView;->getColor()I

    move-result v0

    iget-object v2, p0, Landroid/preference/MiuiColorPickerDialog;->mLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0, v1}, Landroid/preference/MiuiColorPickerDialog;->setUp(I)V

    iget-object v2, p0, Landroid/preference/MiuiColorPickerDialog;->mNewColor:Landroid/preference/MiuiColorPickerPanelView;

    invoke-virtual {v2, v0}, Landroid/preference/MiuiColorPickerPanelView;->setColor(I)V

    iget-object v2, p0, Landroid/preference/MiuiColorPickerDialog;->mColorPicker:Landroid/preference/MiuiColorPickerView;

    invoke-virtual {v2, v0}, Landroid/preference/MiuiColorPickerView;->setColor(I)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/preference/MiuiColorPickerDialog;->mOldColor:Landroid/preference/MiuiColorPickerPanelView;

    const-string/jumbo v1, "old_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/MiuiColorPickerPanelView;->setColor(I)V

    iget-object v0, p0, Landroid/preference/MiuiColorPickerDialog;->mColorPicker:Landroid/preference/MiuiColorPickerView;

    const-string/jumbo v1, "new_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/preference/MiuiColorPickerView;->setColor(IZ)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "old_color"

    iget-object v2, p0, Landroid/preference/MiuiColorPickerDialog;->mOldColor:Landroid/preference/MiuiColorPickerPanelView;

    invoke-virtual {v2}, Landroid/preference/MiuiColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "new_color"

    iget-object v2, p0, Landroid/preference/MiuiColorPickerDialog;->mNewColor:Landroid/preference/MiuiColorPickerPanelView;

    invoke-virtual {v2}, Landroid/preference/MiuiColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 1

    iget-object v0, p0, Landroid/preference/MiuiColorPickerDialog;->mColorPicker:Landroid/preference/MiuiColorPickerView;

    invoke-virtual {v0, p1}, Landroid/preference/MiuiColorPickerView;->setAlphaSliderVisible(Z)V

    iget-boolean v0, p0, Landroid/preference/MiuiColorPickerDialog;->mHexValueEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/preference/MiuiColorPickerDialog;->updateHexLengthFilter()V

    invoke-virtual {p0}, Landroid/preference/MiuiColorPickerDialog;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/MiuiColorPickerDialog;->updateHexValue(I)V

    :cond_0
    return-void
.end method

.method public setColorInTemplate(Landroid/preference/MiuiColorPickerPanelView;I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/preference/MiuiColorPickerPanelView;->setColor(I)V

    new-instance v0, Landroid/preference/MiuiColorPickerDialog$3;

    invoke-direct {v0, p0, p2}, Landroid/preference/MiuiColorPickerDialog$3;-><init>(Landroid/preference/MiuiColorPickerDialog;I)V

    invoke-virtual {p1, v0}, Landroid/preference/MiuiColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setHexValueEnabled(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iput-boolean p1, p0, Landroid/preference/MiuiColorPickerDialog;->mHexValueEnabled:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/preference/MiuiColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Landroid/preference/MiuiColorPickerDialog;->mHexText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/preference/MiuiColorPickerDialog;->mSetButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Landroid/preference/MiuiColorPickerDialog;->updateHexLengthFilter()V

    invoke-virtual {p0}, Landroid/preference/MiuiColorPickerDialog;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/MiuiColorPickerDialog;->updateHexValue(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/preference/MiuiColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Landroid/preference/MiuiColorPickerDialog;->mHexText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/preference/MiuiColorPickerDialog;->mSetButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMiuiColoPickerPreference(Landroid/preference/MiuiColorPickerPreference;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/MiuiColorPickerDialog;->mMiuiColorPickerPreference:Landroid/preference/MiuiColorPickerPreference;

    return-void
.end method

.method public setOnColorChangedListener(Landroid/preference/MiuiColorPickerDialog$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/MiuiColorPickerDialog;->mListener:Landroid/preference/MiuiColorPickerDialog$OnColorChangedListener;

    return-void
.end method
