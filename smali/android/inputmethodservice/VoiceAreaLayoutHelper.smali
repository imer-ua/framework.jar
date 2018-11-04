.class public Landroid/inputmethodservice/VoiceAreaLayoutHelper;
.super Ljava/lang/Object;
.source "VoiceAreaLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final VOICE_TO_TEXT_HINT:Ljava/lang/String;

.field mCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

.field private mCandidatesViewGroup:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mDynamicVoiceInput:Landroid/widget/TextView;

.field private mRealCandidatesView:Landroid/view/View;

.field private mRecodingStateAnimatorView:Landroid/inputmethodservice/RecodingStateAnimatorView;

.field private mVoiceInputButton:Landroid/widget/LinearLayout;

.field private mVoiceToTextLayout:Landroid/widget/LinearLayout;

.field private mVoiceToTextWindow:Landroid/widget/PopupWindow;


# direct methods
.method static synthetic -get0(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mDynamicVoiceInput:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/inputmethodservice/RecodingStateAnimatorView;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mRecodingStateAnimatorView:Landroid/inputmethodservice/RecodingStateAnimatorView;

    return-object v0
.end method

.method static synthetic -get3(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceInputButton:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get4(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get5(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/PopupWindow;
    .locals 1

    invoke-direct {p0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->getVoiceToTextWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->hidePopupWindow()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "VoiceAreaLayoutHelper"

    sput-object v0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->DEBUG:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;-><init>(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)V

    .line 39
    iput-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    .line 64
    iput-object p1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;

    const v1, 0x110900f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->VOICE_TO_TEXT_HINT:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private getVoiceToTextWindow()Landroid/widget/PopupWindow;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 175
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 176
    const-string/jumbo v0, "new popupWindow"

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->initVoiceToTextLayout()V

    .line 178
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceInputButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 179
    iget-object v3, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceInputButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v3

    aget v3, v3, v5

    .line 178
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextWindow:Landroid/widget/PopupWindow;

    .line 180
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextLayout:Landroid/widget/LinearLayout;

    .line 181
    iget-object v1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11070028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 180
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 182
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 183
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 184
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 186
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    iget-object v1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->VOICE_TO_TEXT_HINT:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateText(Ljava/lang/String;Z)V

    .line 188
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mRecodingStateAnimatorView:Landroid/inputmethodservice/RecodingStateAnimatorView;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mRecodingStateAnimatorView:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-virtual {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->init()V

    .line 192
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private hidePopupWindow()V
    .locals 3

    .prologue
    .line 196
    iget-object v1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 197
    const-string/jumbo v1, "hide popupWindow"

    invoke-static {v1}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;

    const v2, 0x1104000c

    .line 198
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 200
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 201
    new-instance v1, Landroid/inputmethodservice/VoiceAreaLayoutHelper$3;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper$3;-><init>(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 195
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private initVoiceToTextLayout()V
    .locals 3

    .prologue
    .line 217
    const-string/jumbo v0, "initVoiceToTextLayout"

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x11030023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 218
    iput-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextLayout:Landroid/widget/LinearLayout;

    .line 222
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextLayout:Landroid/widget/LinearLayout;

    const v1, 0x110c0064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/RecodingStateAnimatorView;

    .line 221
    iput-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mRecodingStateAnimatorView:Landroid/inputmethodservice/RecodingStateAnimatorView;

    .line 224
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceToTextLayout:Landroid/widget/LinearLayout;

    const v1, 0x110c0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 223
    iput-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mDynamicVoiceInput:Landroid/widget/TextView;

    .line 216
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(ZLjava/lang/String;)V

    .line 227
    return-void
.end method

.method public static log(ZLjava/lang/String;)V
    .locals 1
    .param p0, "debug"    # Z
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 232
    if-nez p0, :cond_0

    sget-boolean v0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    sget-object v0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_1
    return-void
.end method


# virtual methods
.method public getSpeechRecognizationCallback()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    return-object v0
.end method

.method public getVoiceInputButton()Landroid/widget/LinearLayout;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 70
    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x11030022

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 69
    iput-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceInputButton:Landroid/widget/LinearLayout;

    .line 72
    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCandidatesViewGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 73
    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mRealCandidatesView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 74
    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCandidatesViewGroup:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mRealCandidatesView:Landroid/view/View;

    .line 76
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCandidatesViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 77
    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mRealCandidatesView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 78
    const-string/jumbo v2, "add real candidatesView"

    invoke-static {v2}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceInputButton:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mRealCandidatesView:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 80
    const/4 v5, -0x1

    .line 81
    const/4 v6, -0x2

    .line 82
    const/16 v7, 0x50

    .line 79
    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    :cond_1
    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceInputButton:Landroid/widget/LinearLayout;

    const v3, 0x110c0062

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 88
    .local v0, "voiceButton":Landroid/widget/LinearLayout;
    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceInputButton:Landroid/widget/LinearLayout;

    const v3, 0x110c0063

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 89
    .local v1, "voiceButtonHint":Landroid/widget/TextView;
    new-instance v2, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;

    invoke-direct {v2, p0, v1}, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;-><init>(Landroid/inputmethodservice/VoiceAreaLayoutHelper;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    const-string/jumbo v2, "init voice area layout"

    invoke-static {v2}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Landroid/inputmethodservice/VoiceInputReporter;->reportEvent(ILjava/lang/String;)V

    .line 132
    iget-object v2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceInputButton:Landroid/widget/LinearLayout;

    return-object v2
.end method

.method public removeLayout(Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "candidatesFrame"    # Landroid/widget/FrameLayout;

    .prologue
    .line 146
    const-string/jumbo v0, "removeLayout called"

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceInputButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mVoiceInputButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 150
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 145
    return-void
.end method

.method public restoreCandidatesFrame(Landroid/widget/FrameLayout;)V
    .locals 6
    .param p1, "candidatesFrame"    # Landroid/widget/FrameLayout;

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 154
    const-string/jumbo v0, "restoreCandidatesFrame called"

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->hidePopupWindow()V

    .line 156
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->removeLayout(Landroid/widget/FrameLayout;)V

    .line 158
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCandidatesViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mRealCandidatesView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mRealCandidatesView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCandidatesViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mRealCandidatesView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 162
    const/16 v3, 0x50

    .line 159
    invoke-direct {v2, v5, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCandidatesViewGroup:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    :goto_0
    return-void

    .line 170
    :cond_0
    const-string/jumbo v0, "fail to restoreCandidatesFrame"

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCandidatesViewGroup(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "candidatesViewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 140
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCandidatesViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 141
    iput-object p1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCandidatesViewGroup:Landroid/view/ViewGroup;

    .line 139
    :cond_0
    return-void
.end method
