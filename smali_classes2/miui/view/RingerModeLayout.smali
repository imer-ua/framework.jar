.class public Lmiui/view/RingerModeLayout;
.super Landroid/widget/LinearLayout;
.source "RingerModeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/RingerModeLayout$1;,
        Lmiui/view/RingerModeLayout$2;,
        Lmiui/view/RingerModeLayout$3;,
        Lmiui/view/RingerModeLayout$4;,
        Lmiui/view/RingerModeLayout$5;,
        Lmiui/view/RingerModeLayout$H;,
        Lmiui/view/RingerModeLayout$SilenceModeObserver;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "RingerModeLayout"


# instance fields
.field private ContentHeight:I

.field private mAnimating:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mDialogView:Landroid/view/ViewGroup;

.field private mHandler:Lmiui/view/RingerModeLayout$H;

.field private mHelpBtn:Landroid/widget/ImageView;

.field private mHelpButtonListener:Landroid/view/View$OnClickListener;

.field private mLooper:Landroid/os/Looper;

.field private mOrignalMode:I

.field private mOrignalRemain:J

.field private mRadioButtonListener:Landroid/view/View$OnClickListener;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRemainTextShown:Z

.field private mRemainTime_1:Landroid/widget/TextView;

.field private mRemainTime_2:Landroid/widget/TextView;

.field private mSelectedText:Landroid/widget/TextView;

.field private mShowing:Z

.field private mSilenceButtonChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSilenceModeContent:Landroid/widget/RelativeLayout;

.field private mSilenceModeExpandContent:Landroid/widget/LinearLayout;

.field public mSilenceModeExpanded:Z

.field private final mSilenceModeObserver:Lmiui/view/RingerModeLayout$SilenceModeObserver;

.field private mSilenceModeTitle:Landroid/widget/TextView;

.field private mSlidingButton:Lmiui/widget/SlidingButton;

.field private mStandardBtn:Landroid/widget/RadioButton;

.field private mTimeLabel:Landroid/widget/RelativeLayout;

.field private mTimeLabelListener:Landroid/view/View$OnClickListener;

.field private mTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mTimeSeekbar:Lmiui/widget/SeekBar;

.field private mTotalBtn:Landroid/widget/RadioButton;

.field private mVolumeDialog:Lmiui/view/VolumeDialog;


# direct methods
.method static synthetic -get0(Lmiui/view/RingerModeLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/view/RingerModeLayout;->mAnimating:Z

    return v0
.end method

.method static synthetic -get1(Lmiui/view/RingerModeLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lmiui/view/RingerModeLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/view/RingerModeLayout;->mShowing:Z

    return v0
.end method

.method static synthetic -get11(Lmiui/view/RingerModeLayout;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get12(Lmiui/view/RingerModeLayout;)Lmiui/widget/SlidingButton;
    .locals 1

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mSlidingButton:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic -get13(Lmiui/view/RingerModeLayout;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeLabel:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get14(Lmiui/view/RingerModeLayout;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get15(Lmiui/view/RingerModeLayout;)Lmiui/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeSeekbar:Lmiui/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get16(Lmiui/view/RingerModeLayout;)Lmiui/view/VolumeDialog;
    .locals 1

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mVolumeDialog:Lmiui/view/VolumeDialog;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/view/RingerModeLayout;)I
    .locals 1

    iget v0, p0, Lmiui/view/RingerModeLayout;->mCurrentMode:I

    return v0
.end method

.method static synthetic -get3(Lmiui/view/RingerModeLayout;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get4(Lmiui/view/RingerModeLayout;)Lmiui/view/RingerModeLayout$H;
    .locals 1

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    return-object v0
.end method

.method static synthetic -get5(Lmiui/view/RingerModeLayout;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mHelpBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get6(Lmiui/view/RingerModeLayout;)Landroid/widget/RadioGroup;
    .locals 1

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic -get7(Lmiui/view/RingerModeLayout;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mRemainTime_1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lmiui/view/RingerModeLayout;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get9(Lmiui/view/RingerModeLayout;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mSelectedText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/view/RingerModeLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/view/RingerModeLayout;->mAnimating:Z

    return p1
.end method

.method static synthetic -set1(Lmiui/view/RingerModeLayout;I)I
    .locals 0

    iput p1, p0, Lmiui/view/RingerModeLayout;->mCurrentMode:I

    return p1
.end method

.method static synthetic -set2(Lmiui/view/RingerModeLayout;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lmiui/view/RingerModeLayout;->mSelectedText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -wrap0(Lmiui/view/RingerModeLayout;)Z
    .locals 1

    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->isSilenceModeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lmiui/view/RingerModeLayout;I)I
    .locals 1
    .param p1, "progress"    # I

    .prologue
    invoke-direct {p0, p1}, Lmiui/view/RingerModeLayout;->getProgressLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lmiui/view/RingerModeLayout;I)I
    .locals 1
    .param p1, "progress"    # I

    .prologue
    invoke-direct {p0, p1}, Lmiui/view/RingerModeLayout;->progressToMinute(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lmiui/view/RingerModeLayout;)V
    .locals 0

    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->updateRadioGroup()V

    return-void
.end method

.method static synthetic -wrap4(Lmiui/view/RingerModeLayout;)V
    .locals 0

    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->updateRemainTimeSeekbar()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    new-instance v0, Lmiui/view/RingerModeLayout$SilenceModeObserver;

    invoke-direct {v0, p0}, Lmiui/view/RingerModeLayout$SilenceModeObserver;-><init>(Lmiui/view/RingerModeLayout;)V

    .line 68
    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mSilenceModeObserver:Lmiui/view/RingerModeLayout$SilenceModeObserver;

    .line 249
    new-instance v0, Lmiui/view/RingerModeLayout$1;

    invoke-direct {v0, p0}, Lmiui/view/RingerModeLayout$1;-><init>(Lmiui/view/RingerModeLayout;)V

    .line 248
    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mSilenceButtonChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 277
    new-instance v0, Lmiui/view/RingerModeLayout$2;

    invoke-direct {v0, p0}, Lmiui/view/RingerModeLayout$2;-><init>(Lmiui/view/RingerModeLayout;)V

    .line 276
    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 316
    new-instance v0, Lmiui/view/RingerModeLayout$3;

    invoke-direct {v0, p0}, Lmiui/view/RingerModeLayout$3;-><init>(Lmiui/view/RingerModeLayout;)V

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mRadioButtonListener:Landroid/view/View$OnClickListener;

    .line 337
    new-instance v0, Lmiui/view/RingerModeLayout$4;

    invoke-direct {v0, p0}, Lmiui/view/RingerModeLayout$4;-><init>(Lmiui/view/RingerModeLayout;)V

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mHelpButtonListener:Landroid/view/View$OnClickListener;

    .line 357
    new-instance v0, Lmiui/view/RingerModeLayout$5;

    invoke-direct {v0, p0}, Lmiui/view/RingerModeLayout$5;-><init>(Lmiui/view/RingerModeLayout;)V

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeLabelListener:Landroid/view/View$OnClickListener;

    .line 84
    iput-object p1, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ExtraNotificationManager;->getRemainTime(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/view/RingerModeLayout;->mOrignalRemain:J

    .line 86
    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lmiui/view/RingerModeLayout;->mOrignalMode:I

    .line 82
    return-void
.end method

.method private changeSilenceModeTitle(Z)V
    .locals 3
    .param p1, "showTitle"    # Z

    .prologue
    .line 452
    if-eqz p1, :cond_1

    .line 453
    iget v1, p0, Lmiui/view/RingerModeLayout;->mCurrentMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 454
    const v0, 0x110900d8

    .line 455
    .local v0, "textRes":I
    :goto_0
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mSilenceModeTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 451
    .end local v0    # "textRes":I
    :goto_1
    return-void

    .line 454
    :cond_0
    const v0, 0x110900d9

    .restart local v0    # "textRes":I
    goto :goto_0

    .line 457
    .end local v0    # "textRes":I
    :cond_1
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mSilenceModeTitle:Landroid/widget/TextView;

    const v2, 0x110900d5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private getProgressLevel(I)I
    .locals 4
    .param p1, "progress"    # I

    .prologue
    const/16 v3, 0xc

    .line 220
    move v0, p1

    .line 222
    .local v0, "currentProgress":I
    if-gt p1, v3, :cond_0

    .line 223
    const/4 v1, 0x0

    .line 233
    .local v1, "level":I
    :goto_0
    return v1

    .line 224
    .end local v1    # "level":I
    :cond_0
    add-int/lit8 v2, p1, -0x19

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v3, :cond_1

    .line 225
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_0

    .line 226
    .end local v1    # "level":I
    :cond_1
    add-int/lit8 v2, p1, -0x32

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v3, :cond_2

    .line 227
    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_0

    .line 228
    .end local v1    # "level":I
    :cond_2
    add-int/lit8 v2, p1, -0x4b

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v3, :cond_3

    .line 229
    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_0

    .line 231
    .end local v1    # "level":I
    :cond_3
    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_0
.end method

.method private getXPosition(Lmiui/widget/SeekBar;)I
    .locals 6
    .param p1, "seekBar"    # Lmiui/widget/SeekBar;

    .prologue
    .line 528
    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v5, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 529
    .local v2, "textWidth":F
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v4

    int-to-float v0, v4

    .line 530
    .local v0, "leftMargin":F
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v3, v4

    .line 531
    .local v3, "width":F
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 532
    invoke-virtual {p1}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 531
    add-float/2addr v4, v5

    .line 532
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v2, v5

    .line 531
    sub-float/2addr v4, v5

    add-float v1, v4, v0

    .line 533
    .local v1, "pos":F
    float-to-int v4, v1

    return v4
.end method

.method private isSilenceModeEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 245
    iget v1, p0, Lmiui/view/RingerModeLayout;->mCurrentMode:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private progressToMinute(I)I
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "time":I
    const/16 v1, 0x32

    if-gt p1, v1, :cond_1

    .line 210
    div-int/lit8 v1, p1, 0x19

    mul-int/lit8 v0, v1, 0x1e

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 211
    :cond_1
    const/16 v1, 0x4b

    if-gt p1, v1, :cond_2

    .line 212
    const/16 v0, 0x78

    goto :goto_0

    .line 213
    :cond_2
    const/16 v1, 0x64

    if-gt p1, v1, :cond_0

    .line 214
    const/16 v0, 0x1e0

    goto :goto_0
.end method

.method private timeToMinute(J)I
    .locals 3
    .param p1, "timeMs"    # J

    .prologue
    .line 113
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    return v0

    .line 115
    :cond_0
    const-wide/32 v0, 0x1b7740

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 116
    const/16 v0, 0x1e

    return v0

    .line 117
    :cond_1
    const-wide/32 v0, 0x36ee80

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    .line 118
    const/16 v0, 0x3c

    return v0

    .line 119
    :cond_2
    const-wide/32 v0, 0x6ddd00

    cmp-long v0, p1, v0

    if-gtz v0, :cond_3

    .line 120
    const/16 v0, 0x78

    return v0

    .line 122
    :cond_3
    const/16 v0, 0x1e0

    return v0
.end method

.method private timeToProgress(J)I
    .locals 7
    .param p1, "time"    # J

    .prologue
    const-wide/16 v4, 0xe10

    .line 194
    const-wide/16 v0, 0x0

    .line 195
    .local v0, "progress":J
    cmp-long v2, p1, v4

    if-gtz v2, :cond_1

    .line 196
    const-wide/16 v2, 0x48

    div-long v0, p1, v2

    .line 204
    :cond_0
    :goto_0
    long-to-int v2, v0

    return v2

    .line 197
    :cond_1
    const-wide/16 v2, 0x1c20

    cmp-long v2, p1, v2

    if-gtz v2, :cond_2

    .line 198
    sub-long/2addr p1, v4

    .line 199
    const-wide/16 v2, 0x90

    div-long v2, p1, v2

    const-wide/16 v4, 0x32

    add-long v0, v2, v4

    goto :goto_0

    .line 200
    :cond_2
    const-wide/16 v2, 0x7080

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 201
    sub-long/2addr p1, v4

    .line 202
    const-wide/16 v2, 0x360

    div-long v2, p1, v2

    const-wide/16 v4, 0x4b

    add-long v0, v2, v4

    goto :goto_0
.end method

.method private turnMillSecondsToHour(J)Ljava/lang/String;
    .locals 13
    .param p1, "ms"    # J

    .prologue
    const-wide/32 v10, 0x36ee80

    const v5, 0xea60

    const/16 v8, 0xa

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    div-long v6, p1, v10

    long-to-int v0, v6

    .line 129
    .local v0, "hour":I
    rem-long v6, p1, v10

    long-to-int v1, v6

    .line 130
    .local v1, "lastms":I
    div-int v2, v1, v5

    .line 131
    .local v2, "min":I
    rem-int/2addr v1, v5

    .line 132
    div-int/lit16 v3, v1, 0x3e8

    .line 133
    .local v3, "seconds":I
    if-lez v0, :cond_1

    .line 134
    if-ge v0, v8, :cond_0

    .line 135
    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_1
    if-ge v2, v8, :cond_2

    .line 140
    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    if-ge v3, v8, :cond_3

    .line 144
    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private updateRadioGroup()V
    .locals 3

    .prologue
    .line 237
    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->isSilenceModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/view/RingerModeLayout;->mShowing:Z

    if-eqz v0, :cond_0

    .line 238
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    iget v0, p0, Lmiui/view/RingerModeLayout;->mCurrentMode:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 239
    const v0, 0x110c0040

    .line 238
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 240
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/view/RingerModeLayout;->changeSilenceModeTitle(Z)V

    .line 236
    :cond_0
    return-void

    .line 239
    :cond_1
    const v0, 0x110c0041

    goto :goto_0
.end method

.method private updateRemainText(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    .line 495
    iget-boolean v3, p0, Lmiui/view/RingerModeLayout;->mRemainTextShown:Z

    if-ne v3, p1, :cond_0

    .line 496
    return-void

    .line 498
    :cond_0
    const-string/jumbo v3, "RingerModeLayout"

    const-string/jumbo v4, "updateRemainText..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iput-boolean p1, p0, Lmiui/view/RingerModeLayout;->mRemainTextShown:Z

    .line 502
    if-eqz p1, :cond_1

    .line 503
    const/4 v1, 0x0

    .line 504
    .local v1, "from":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 510
    .local v2, "to":F
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 511
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v3, Lmiui/view/RingerModeLayout$7;

    invoke-direct {v3, p0}, Lmiui/view/RingerModeLayout$7;-><init>(Lmiui/view/RingerModeLayout;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 518
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 519
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 491
    return-void

    .line 506
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "from":F
    .end local v2    # "to":F
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 507
    .restart local v1    # "from":F
    const/4 v2, 0x0

    .restart local v2    # "to":F
    goto :goto_0
.end method

.method private updateRemainTimeSeekbar()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    iget-boolean v1, p0, Lmiui/view/RingerModeLayout;->mShowing:Z

    if-nez v1, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/ExtraNotificationManager;->getRemainTime(Landroid/content/Context;)J

    move-result-wide v2

    .line 167
    .local v2, "remain":J
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    .line 169
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mTimeLabel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-boolean v1, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpanded:Z

    if-eqz v1, :cond_1

    move v1, v4

    :goto_0
    invoke-direct {p0, v1}, Lmiui/view/RingerModeLayout;->updateRemainText(Z)V

    .line 173
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mTimeSeekbar:Lmiui/widget/SeekBar;

    div-long v6, v2, v10

    invoke-direct {p0, v6, v7}, Lmiui/view/RingerModeLayout;->timeToProgress(J)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 174
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mRemainTime_1:Landroid/widget/TextView;

    iget-object v6, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lmiui/view/RingerModeLayout;->turnMillSecondsToHour(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const v4, 0x110900e3

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lmiui/view/RingerModeLayout;->turnMillSecondsToHour(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 180
    .local v0, "paramsStrength":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mTimeSeekbar:Lmiui/widget/SeekBar;

    invoke-direct {p0, v1}, Lmiui/view/RingerModeLayout;->getXPosition(Lmiui/widget/SeekBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 181
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 161
    .end local v0    # "paramsStrength":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    return-void

    :cond_1
    move v1, v5

    .line 171
    goto :goto_0

    .line 186
    :cond_2
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mTimeLabel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 188
    invoke-direct {p0, v4}, Lmiui/view/RingerModeLayout;->updateRemainText(Z)V

    .line 189
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mTimeSeekbar:Lmiui/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 90
    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 91
    iget-boolean v4, p0, Lmiui/view/RingerModeLayout;->mShowing:Z

    if-nez v4, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/ExtraNotificationManager;->getRemainTime(Landroid/content/Context;)J

    move-result-wide v2

    .line 95
    .local v2, "remain":J
    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v0

    .line 97
    .local v0, "mode":I
    iget-wide v4, p0, Lmiui/view/RingerModeLayout;->mOrignalRemain:J

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    iget v4, p0, Lmiui/view/RingerModeLayout;->mOrignalMode:I

    if-eq v4, v0, :cond_2

    .line 98
    :cond_1
    invoke-direct {p0, v2, v3}, Lmiui/view/RingerModeLayout;->timeToMinute(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "params":Ljava/lang/String;
    const-string/jumbo v4, "silence_DND"

    .line 100
    sget-object v5, Landroid/provider/MiuiSettings$SilenceMode;->MISTAT_RINGERMODE_LIST:[Ljava/lang/String;

    aget-object v5, v5, v0

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 99
    invoke-static {v4, v5, v1, v6, v7}, Landroid/provider/MiuiSettings$SilenceMode;->reportRingerModeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 104
    .end local v1    # "params":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lmiui/view/RingerModeLayout;->mShowing:Z

    .line 105
    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mSilenceModeObserver:Lmiui/view/RingerModeLayout$SilenceModeObserver;

    invoke-virtual {v4}, Lmiui/view/RingerModeLayout$SilenceModeObserver;->unregister()V

    .line 106
    iput-object v8, p0, Lmiui/view/RingerModeLayout;->mTimeSeekbar:Lmiui/widget/SeekBar;

    .line 107
    iput-object v8, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    .line 108
    iput-object v8, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 109
    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 89
    return-void
.end method

.method public expandSilenceModeContent(Z)V
    .locals 7
    .param p1, "isExpanded"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 544
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    :goto_0
    iput-boolean v3, p0, Lmiui/view/RingerModeLayout;->mAnimating:Z

    .line 546
    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->isSilenceModeEnabled()Z

    move-result v3

    invoke-direct {p0, v3}, Lmiui/view/RingerModeLayout;->changeSilenceModeTitle(Z)V

    .line 548
    iget-boolean v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpanded:Z

    if-eq v3, p1, :cond_2

    .line 549
    if-eqz p1, :cond_0

    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 550
    :cond_0
    iget-boolean v3, p0, Lmiui/view/RingerModeLayout;->mAnimating:Z

    if-eqz v3, :cond_2

    .line 556
    iput-boolean p1, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpanded:Z

    .line 558
    if-eqz p1, :cond_3

    .line 559
    const/4 v1, 0x0

    .line 560
    .local v1, "fromYres":I
    iget v2, p0, Lmiui/view/RingerModeLayout;->ContentHeight:I

    .line 566
    .local v2, "toYres":I
    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v1, v3, v4

    aput v2, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 567
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v3, Lmiui/view/RingerModeLayout$8;

    invoke-direct {v3, p0}, Lmiui/view/RingerModeLayout$8;-><init>(Lmiui/view/RingerModeLayout;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 575
    new-instance v3, Lmiui/view/RingerModeLayout$9;

    invoke-direct {v3, p0}, Lmiui/view/RingerModeLayout$9;-><init>(Lmiui/view/RingerModeLayout;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 606
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 607
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 608
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 609
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 610
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 540
    return-void

    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "fromYres":I
    .end local v2    # "toYres":I
    :cond_1
    move v3, v4

    .line 544
    goto :goto_0

    .line 551
    :cond_2
    const-string/jumbo v3, "RingerModeLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Silence mode content is alread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iput-boolean v4, p0, Lmiui/view/RingerModeLayout;->mAnimating:Z

    .line 553
    return-void

    .line 562
    :cond_3
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 563
    .restart local v1    # "fromYres":I
    const/4 v2, 0x0

    .restart local v2    # "toYres":I
    goto :goto_1
.end method

.method public init()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 379
    const-string/jumbo v3, "RingerModeLayout"

    const-string/jumbo v4, "init..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const v3, 0x110c0039

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeContent:Landroid/widget/RelativeLayout;

    .line 381
    const v3, 0x110c003d

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    .line 382
    const v3, 0x110c003a

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeTitle:Landroid/widget/TextView;

    .line 383
    const v3, 0x110c004a

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/SeekBar;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mTimeSeekbar:Lmiui/widget/SeekBar;

    .line 384
    const v3, 0x110c003f

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 385
    const v3, 0x110c0040

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mStandardBtn:Landroid/widget/RadioButton;

    .line 386
    const v3, 0x110c0041

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mTotalBtn:Landroid/widget/RadioButton;

    .line 387
    const v3, 0x110c0042

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mHelpBtn:Landroid/widget/ImageView;

    .line 388
    const v3, 0x110c003b

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/SlidingButton;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mSlidingButton:Lmiui/widget/SlidingButton;

    .line 389
    const v3, 0x110c003c

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mRemainTime_1:Landroid/widget/TextView;

    .line 390
    const v3, 0x110c0049

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    .line 391
    const v3, 0x110c0043

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mTimeLabel:Landroid/widget/RelativeLayout;

    .line 393
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    .line 394
    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    const v3, 0x110c0044

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    const v3, 0x110c0047

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    const v3, 0x110c0046

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    const v3, 0x110c0048

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    const v3, 0x110c0045

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "v$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 401
    .local v1, "v":Landroid/widget/TextView;
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mTimeLabelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 404
    .end local v1    # "v":Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lmiui/view/RingerModeLayout;->mSelectedText:Landroid/widget/TextView;

    .line 405
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSelectedText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11070020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 406
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSelectedText:Landroid/widget/TextView;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 408
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v6, v6}, Landroid/view/View;->measure(II)V

    .line 409
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mStandardBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 410
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mTotalBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 411
    const v3, 0x110c003e

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 412
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v6}, Landroid/view/View;->measure(II)V

    .line 413
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lmiui/view/RingerModeLayout;->ContentHeight:I

    .line 414
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mHelpBtn:Landroid/widget/ImageView;

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mHelpButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iput-boolean v7, p0, Lmiui/view/RingerModeLayout;->mShowing:Z

    .line 417
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeObserver:Lmiui/view/RingerModeLayout$SilenceModeObserver;

    invoke-virtual {v3}, Lmiui/view/RingerModeLayout$SilenceModeObserver;->register()V

    .line 418
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeContent:Landroid/widget/RelativeLayout;

    new-instance v4, Lmiui/view/RingerModeLayout$6;

    invoke-direct {v4, p0}, Lmiui/view/RingerModeLayout$6;-><init>(Lmiui/view/RingerModeLayout;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lmiui/view/RingerModeLayout;->mCurrentMode:I

    .line 430
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->isSilenceModeEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 431
    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->updateRadioGroup()V

    .line 432
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSlidingButton:Lmiui/widget/SlidingButton;

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mSilenceButtonChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 433
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mTimeSeekbar:Lmiui/widget/SeekBar;

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mTimeSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 434
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mTotalBtn:Landroid/widget/RadioButton;

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mRadioButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mStandardBtn:Landroid/widget/RadioButton;

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mRadioButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 438
    iput-boolean v6, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpanded:Z

    .line 439
    iput-boolean v6, p0, Lmiui/view/RingerModeLayout;->mRemainTextShown:Z

    .line 441
    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->isSilenceModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 442
    iget v3, p0, Lmiui/view/RingerModeLayout;->mCurrentMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 443
    const v0, 0x110900d8

    .line 444
    .local v0, "textRes":I
    :goto_1
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 448
    .end local v0    # "textRes":I
    :goto_2
    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->updateRemainTimeSeekbar()V

    .line 377
    return-void

    .line 443
    :cond_1
    const v0, 0x110900d9

    .restart local v0    # "textRes":I
    goto :goto_1

    .line 446
    .end local v0    # "textRes":I
    :cond_2
    iget-object v3, p0, Lmiui/view/RingerModeLayout;->mSilenceModeTitle:Landroid/widget/TextView;

    const v4, 0x110900d5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method public setLooper(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 373
    iput-object p1, p0, Lmiui/view/RingerModeLayout;->mLooper:Landroid/os/Looper;

    .line 374
    new-instance v0, Lmiui/view/RingerModeLayout$H;

    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lmiui/view/RingerModeLayout$H;-><init>(Lmiui/view/RingerModeLayout;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    .line 372
    return-void
.end method

.method public setParentDialog(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 151
    iput-object p1, p0, Lmiui/view/RingerModeLayout;->mDialogView:Landroid/view/ViewGroup;

    .line 150
    return-void
.end method

.method public setVolumeDialog(Lmiui/view/VolumeDialog;)V
    .locals 0
    .param p1, "volumeDialog"    # Lmiui/view/VolumeDialog;

    .prologue
    .line 155
    iput-object p1, p0, Lmiui/view/RingerModeLayout;->mVolumeDialog:Lmiui/view/VolumeDialog;

    .line 154
    return-void
.end method
