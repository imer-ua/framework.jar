.class public Landroid/preference/MiuiSeekBar;
.super Landroid/widget/SeekBar;
.source "MiuiSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/MiuiSeekBar$OnSeekBarHintProgressChangeListener;
    }
.end annotation


# static fields
.field public static final HINT_FIXED:I = 0x1

.field public static final HINT_FOLLOW:I


# instance fields
.field public CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

.field private mExternalListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mHint:Landroid/widget/PopupWindow;

.field private mHintStyle:I

.field private mHintTextView:Landroid/widget/TextView;

.field private mHintWidth:I

.field private mInternalListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public mMax:I

.field public mMin:I

.field private mPopupView:Landroid/view/View;

.field public mProgress:I

.field private mProgressChangeListener:Landroid/preference/MiuiSeekBar$OnSeekBarHintProgressChangeListener;

.field public mStep:I

.field public mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/preference/MiuiCoreSettingsPreference;

    invoke-direct {v0}, Landroid/preference/MiuiCoreSettingsPreference;-><init>()V

    iput-object v0, p0, Landroid/preference/MiuiSeekBar;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-direct {p0, p1, p2}, Landroid/preference/MiuiSeekBar;->initialization(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v0, p0, Landroid/preference/MiuiSeekBar;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/preference/MiuiCoreSettingsPreference;->initialization(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V

    return-void
.end method

.method private getFollowPosition(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/preference/MiuiSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/preference/MiuiSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/preference/MiuiSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/2addr v0, p1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/preference/MiuiSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getHorizontalOffset(I)I
    .locals 2

    invoke-direct {p0, p1}, Landroid/preference/MiuiSeekBar;->getFollowPosition(I)I

    move-result v0

    iget-object v1, p0, Landroid/preference/MiuiSeekBar;->mPopupView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/preference/MiuiSeekBar;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getVerticalOffset()I
    .locals 2

    invoke-virtual {p0}, Landroid/preference/MiuiSeekBar;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/preference/MiuiSeekBar;->mPopupView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/preference/MiuiSeekBar;->mYOffset:I

    add-int/2addr v0, v1

    neg-int v0, v0

    return v0
.end method

.method private hideHintPopup()V
    .locals 1

    iget-object v0, p0, Landroid/preference/MiuiSeekBar;->mHint:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/MiuiSeekBar;->mHint:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private initialization(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-virtual {p0, p0}, Landroid/preference/MiuiSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private initializationHintPopup()V
    .locals 7

    const/4 v6, 0x0

    const-string v0, ""

    invoke-virtual {p0}, Landroid/preference/MiuiSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iget-object v2, p0, Landroid/preference/MiuiSeekBar;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string/jumbo v3, "seekbar_hint_layout"

    invoke-virtual {v2, v3}, Landroid/preference/MiuiCoreSettingsPreference;->LayoutToID(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/MiuiSeekBar;->mPopupView:Landroid/view/View;

    iget-object v2, p0, Landroid/preference/MiuiSeekBar;->mPopupView:Landroid/view/View;

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/preference/MiuiSeekBar;->mPopupView:Landroid/view/View;

    iget v4, p0, Landroid/preference/MiuiSeekBar;->mHintWidth:I

    const/4 v5, -0x2

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Landroid/preference/MiuiSeekBar;->mHint:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/preference/MiuiSeekBar;->mPopupView:Landroid/view/View;

    iget-object v3, p0, Landroid/preference/MiuiSeekBar;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v4, "HintText"

    invoke-virtual {v3, v4}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/preference/MiuiSeekBar;->mHintTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/preference/MiuiSeekBar;->mHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/preference/MiuiSeekBar;->mHint:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/preference/MiuiSeekBar;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v4, "Animation_PopupWindow_ActionMode"

    invoke-virtual {v3, v4}, Landroid/preference/MiuiCoreSettingsPreference;->StyleToID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/preference/MiuiSeekBar;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setSHintStyle(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "fixed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private showHintPopup()V
    .locals 7

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    iget v0, p0, Landroid/preference/MiuiSeekBar;->mHintStyle:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Landroid/preference/MiuiSeekBar;->mHint:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0, v1, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Landroid/preference/MiuiSeekBar;->mHint:Landroid/widget/PopupWindow;

    iget v2, v6, Landroid/graphics/Point;->x:I

    iget v3, v6, Landroid/graphics/Point;->y:I

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroid/preference/MiuiSeekBar;->getFollowHintOffset()Landroid/graphics/Point;

    move-result-object v6

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/preference/MiuiSeekBar;->getFixedHintOffset()Landroid/graphics/Point;

    move-result-object v6

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getFixedHintOffset()Landroid/graphics/Point;
    .locals 4

    invoke-virtual {p0}, Landroid/preference/MiuiSeekBar;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Landroid/preference/MiuiSeekBar;->mPopupView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v0, v2, v3

    invoke-direct {p0}, Landroid/preference/MiuiSeekBar;->getVerticalOffset()I

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method protected getFollowHintOffset()Landroid/graphics/Point;
    .locals 3

    invoke-virtual {p0}, Landroid/preference/MiuiSeekBar;->getProgress()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/preference/MiuiSeekBar;->getHorizontalOffset(I)I

    move-result v0

    invoke-direct {p0}, Landroid/preference/MiuiSeekBar;->getVerticalOffset()I

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public getHintStyle()I
    .locals 1

    iget v0, p0, Landroid/preference/MiuiSeekBar;->mHintStyle:I

    return v0
.end method

.method public getHintWidth()I
    .locals 1

    iget v0, p0, Landroid/preference/MiuiSeekBar;->mHintWidth:I

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8

    const/4 v4, -0x1

    const/4 v7, 0x0

    iget-object v0, p0, Landroid/preference/MiuiSeekBar;->mProgressChangeListener:Landroid/preference/MiuiSeekBar$OnSeekBarHintProgressChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/MiuiSeekBar;->mProgressChangeListener:Landroid/preference/MiuiSeekBar$OnSeekBarHintProgressChangeListener;

    invoke-virtual {p0}, Landroid/preference/MiuiSeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Landroid/preference/MiuiSeekBar;->mStep:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/preference/MiuiSeekBar;->mMin:I

    add-int/2addr v1, v2

    invoke-interface {v0, p0, v1}, Landroid/preference/MiuiSeekBar$OnSeekBarHintProgressChangeListener;->onHintTextChanged(Landroid/preference/MiuiSeekBar;I)Ljava/lang/String;

    move-result-object v7

    :cond_0
    iget-object v0, p0, Landroid/preference/MiuiSeekBar;->mExternalListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/preference/MiuiSeekBar;->mExternalListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_1
    iget-object v0, p0, Landroid/preference/MiuiSeekBar;->mHintTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_3

    :goto_0
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Landroid/preference/MiuiSeekBar;->mHintStyle:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/preference/MiuiSeekBar;->getFollowHintOffset()Landroid/graphics/Point;

    move-result-object v6

    iget-object v0, p0, Landroid/preference/MiuiSeekBar;->mHint:Landroid/widget/PopupWindow;

    iget v2, v6, Landroid/graphics/Point;->x:I

    iget v3, v6, Landroid/graphics/Point;->y:I

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :cond_2
    return-void

    :cond_3
    iget v1, p0, Landroid/preference/MiuiSeekBar;->mStep:I

    mul-int/2addr v1, p2

    iget v2, p0, Landroid/preference/MiuiSeekBar;->mMin:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Landroid/preference/MiuiSeekBar;->mExternalListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/MiuiSeekBar;->mExternalListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    invoke-direct {p0}, Landroid/preference/MiuiSeekBar;->showHintPopup()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Landroid/preference/MiuiSeekBar;->mExternalListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/MiuiSeekBar;->mExternalListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    iget-object v0, p0, Landroid/preference/MiuiSeekBar;->mProgressChangeListener:Landroid/preference/MiuiSeekBar$OnSeekBarHintProgressChangeListener;

    invoke-virtual {p0}, Landroid/preference/MiuiSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/preference/MiuiSeekBar$OnSeekBarHintProgressChangeListener;->onMiuiSeekBarProgress(I)V

    invoke-direct {p0}, Landroid/preference/MiuiSeekBar;->hideHintPopup()V

    return-void
.end method

.method public setHintStyle(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/MiuiSeekBar;->setSHintStyle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/preference/MiuiSeekBar;->mHintStyle:I

    return-void
.end method

.method public setHintView(Landroid/view/View;Landroid/widget/SeekBar;)V
    .locals 0

    invoke-direct {p0}, Landroid/preference/MiuiSeekBar;->initializationHintPopup()V

    return-void
.end method

.method public setHintWidth(I)V
    .locals 0

    iput p1, p0, Landroid/preference/MiuiSeekBar;->mHintWidth:I

    return-void
.end method

.method public setOnProgressChangeListener(Landroid/preference/MiuiSeekBar$OnSeekBarHintProgressChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/MiuiSeekBar;->mProgressChangeListener:Landroid/preference/MiuiSeekBar$OnSeekBarHintProgressChangeListener;

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/preference/MiuiSeekBar;->mInternalListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/preference/MiuiSeekBar;->mInternalListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/preference/MiuiSeekBar;->mExternalListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    goto :goto_0
.end method
