.class public Landroid/inputmethodservice/InputMethodService;
.super Landroid/inputmethodservice/AbstractInputMethodService;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodService$1;,
        Landroid/inputmethodservice/InputMethodService$2;,
        Landroid/inputmethodservice/InputMethodService$3;,
        Landroid/inputmethodservice/InputMethodService$InputMethodImpl;,
        Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;,
        Landroid/inputmethodservice/InputMethodService$Insets;,
        Landroid/inputmethodservice/InputMethodService$SettingsObserver;
    }
.end annotation


# static fields
.field public static final BACK_DISPOSITION_DEFAULT:I = 0x0

.field public static final BACK_DISPOSITION_WILL_DISMISS:I = 0x2

.field public static final BACK_DISPOSITION_WILL_NOT_DISMISS:I = 0x1

.field static final DEBUG:Z = false

.field public static final IME_ACTIVE:I = 0x1

.field public static final IME_VISIBLE:I = 0x2

.field static final MOVEMENT_DOWN:I = -0x1

.field static final MOVEMENT_UP:I = -0x2

.field static final TAG:Ljava/lang/String; = "InputMethodService"


# instance fields
.field final mActionClickListener:Landroid/view/View$OnClickListener;

.field mBackDisposition:I

.field mCandidatesFrame:Landroid/widget/FrameLayout;

.field mCandidatesViewStarted:Z

.field mCandidatesVisibility:I

.field mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field mExtractAccessories:Landroid/view/ViewGroup;

.field mExtractAction:Landroid/view/View;

.field mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

.field mExtractFrame:Landroid/widget/FrameLayout;

.field mExtractView:Landroid/view/View;

.field mExtractViewHidden:Z

.field mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field mExtractedToken:I

.field mFullscreenApplied:Z

.field mFullscreenArea:Landroid/view/ViewGroup;

.field mHardwareAccelerated:Z

.field mHasInitVoiceAreaLayout:Z

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field mInShowWindow:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mInitialized:Z

.field mInputBinding:Landroid/view/inputmethod/InputBinding;

.field mInputConnection:Landroid/view/inputmethod/InputConnection;

.field mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field mInputFrame:Landroid/widget/FrameLayout;

.field mInputStarted:Z

.field mInputView:Landroid/view/View;

.field mInputViewStarted:Z

.field final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field mIsFullscreen:Z

.field mIsInputViewShown:Z

.field mIsShowVoiceArea:Z

.field mLastShowInputRequested:Z

.field private final mMiBrainSpeechEngineMonitor:Lcom/android/internal/content/PackageMonitor;

.field mRootView:Landroid/view/View;

.field private mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

.field mShouldClearInsetOfPreviousIme:Z

.field mShowInputFlags:I

.field mShowInputRequested:Z

.field mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

.field mStatusIcon:I

.field mTheme:I

.field mThemeAttrs:Landroid/content/res/TypedArray;

.field final mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field final mTmpLocation:[I

.field mToken:Landroid/os/IBinder;

.field mVoiceAreaLayoutHelper:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

.field mWindow:Landroid/inputmethodservice/SoftInputWindow;

.field mWindowAdded:Z

.field mWindowCreated:Z

.field mWindowVisible:Z

.field mWindowWasVisible:Z


# direct methods
.method static synthetic -wrap0(Landroid/inputmethodservice/InputMethodService;IZ)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "configChange"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->dispatchOnShowInputRequested(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->clearInsetOfPreviousIme()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    return-void
.end method

.method static synthetic -wrap3(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->initVoiceInput()V

    return-void
.end method

.method static synthetic -wrap4(Landroid/inputmethodservice/InputMethodService;II)V
    .locals 0
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onToggleSoftInput(II)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->resetStateForNewConfiguration()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 238
    invoke-direct {p0}, Landroid/inputmethodservice/AbstractInputMethodService;-><init>()V

    .line 271
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 272
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mHardwareAccelerated:Z

    .line 335
    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    .line 336
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    .line 339
    new-instance v0, Landroid/inputmethodservice/InputMethodService$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$1;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    .line 338
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 359
    new-instance v0, Landroid/inputmethodservice/InputMethodService$2;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$2;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    .line 750
    new-instance v0, Landroid/inputmethodservice/InputMethodService$3;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$3;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mMiBrainSpeechEngineMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 238
    return-void
.end method

.method private afterParentPanelChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1510
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->isShowVoiceArea()Z

    move-result v0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsShowVoiceArea:Z

    .line 1511
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsShowVoiceArea:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mHasInitVoiceAreaLayout:Z

    if-eqz v0, :cond_1

    .line 1509
    :cond_0
    :goto_0
    return-void

    .line 1512
    :cond_1
    const-string/jumbo v0, "afterParentPanelChanged called"

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    .line 1513
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1514
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mVoiceAreaLayoutHelper:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-virtual {v1}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->getVoiceInputButton()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1515
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mHasInitVoiceAreaLayout:Z

    .line 1516
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method private beforeParentPanelChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1500
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mVoiceAreaLayoutHelper:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsShowVoiceArea:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mHasInitVoiceAreaLayout:Z

    if-eqz v0, :cond_1

    .line 1501
    :cond_0
    const-string/jumbo v0, "beforeParentPanelChanged called"

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    .line 1502
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mVoiceAreaLayoutHelper:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->restoreCandidatesFrame(Landroid/widget/FrameLayout;)V

    .line 1504
    :cond_1
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsShowVoiceArea:Z

    .line 1505
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mHasInitVoiceAreaLayout:Z

    .line 1499
    return-void
.end method

.method private clearInsetOfPreviousIme()V
    .locals 2

    .prologue
    .line 1836
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    if-nez v0, :cond_0

    return-void

    .line 1838
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->clearLastInputMethodWindowForTransition(Landroid/os/IBinder;)V

    .line 1839
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    .line 1833
    return-void
.end method

.method private dispatchOnShowInputRequested(IZ)Z
    .locals 2
    .param p1, "flags"    # I
    .param p2, "configChange"    # Z

    .prologue
    .line 1677
    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    move-result v0

    .line 1678
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 1679
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 1683
    :goto_0
    return v0

    .line 1681
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    goto :goto_0
.end method

.method private doHideWindow()V
    .locals 4

    .prologue
    .line 1795
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 1796
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 1794
    return-void
.end method

.method private finishViews()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1783
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-eqz v0, :cond_1

    .line 1785
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 1790
    :cond_0
    :goto_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1791
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1782
    return-void

    .line 1786
    :cond_1
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-eqz v0, :cond_0

    .line 1788
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    goto :goto_0
.end method

.method private getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;
    .locals 1

    .prologue
    .line 2088
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2091
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    return-object v0

    .line 2089
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getIconForImeAction(I)I
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 2533
    and-int/lit16 v0, p1, 0xff

    packed-switch v0, :pswitch_data_0

    .line 2547
    const v0, 0x108036b

    return v0

    .line 2535
    :pswitch_0
    const v0, 0x1080368

    return v0

    .line 2537
    :pswitch_1
    const v0, 0x108036c

    return v0

    .line 2539
    :pswitch_2
    const v0, 0x108036d

    return v0

    .line 2541
    :pswitch_3
    const v0, 0x1080369

    return v0

    .line 2543
    :pswitch_4
    const v0, 0x1080367

    return v0

    .line 2545
    :pswitch_5
    const v0, 0x108036a

    return v0

    .line 2533
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private handleBack(Z)Z
    .locals 3
    .param p1, "doIt"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2062
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v0, :cond_1

    .line 2065
    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 2066
    :cond_0
    return v2

    .line 2067
    :cond_1
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_4

    .line 2068
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v0, :cond_3

    .line 2071
    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 2078
    :cond_2
    :goto_0
    return v2

    .line 2076
    :cond_3
    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_0

    .line 2080
    :cond_4
    return v1
.end method

.method private initVoiceInput()V
    .locals 1

    .prologue
    .line 846
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/inputmethodservice/VoiceInputHelper;->initSpeech(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;)V

    .line 847
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mVoiceAreaLayoutHelper:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    if-nez v0, :cond_0

    .line 848
    new-instance v0, Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mVoiceAreaLayoutHelper:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    .line 850
    :cond_0
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->isSpeechRecognizerReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mVoiceAreaLayoutHelper:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-virtual {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->getSpeechRecognizationCallback()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v0

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->setCallback(Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;)V

    .line 845
    :cond_1
    return-void
.end method

.method private isShowVoiceArea()Z
    .locals 3

    .prologue
    .line 1532
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->isSpeechRecognizerReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1533
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->initVoiceInput()V

    .line 1535
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isSpecialMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1536
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1538
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1537
    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/VoiceInputHelper;->showSpeechBar(Landroid/view/inputmethod/EditorInfo;ZLjava/lang/String;)Z

    move-result v0

    .line 1535
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onToggleSoftInput(II)V
    .locals 1
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    .prologue
    .line 2206
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2207
    invoke-virtual {p0, p2}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 2204
    :goto_0
    return-void

    .line 2209
    :cond_0
    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->requestShowSelf(I)V

    goto :goto_0
.end method

.method private requestShowSelf(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 2058
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 2057
    return-void
.end method

.method private resetStateForNewConfiguration()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 959
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 960
    .local v4, "visible":Z
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 961
    .local v1, "showFlags":I
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 962
    .local v3, "showingInput":Z
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 963
    .local v0, "completions":[Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    .line 964
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 965
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 966
    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v6, :cond_0

    .line 967
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 968
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v7

    .line 967
    invoke-virtual {p0, v6, v7, v8}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 970
    :cond_0
    if-eqz v4, :cond_3

    .line 971
    if-eqz v3, :cond_5

    .line 973
    invoke-direct {p0, v1, v8}, Landroid/inputmethodservice/InputMethodService;->dispatchOnShowInputRequested(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 974
    invoke-virtual {p0, v8}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 975
    if-eqz v0, :cond_1

    .line 976
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 977
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 991
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v2

    .line 992
    .local v2, "showing":Z
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    if-eqz v2, :cond_2

    const/4 v5, 0x2

    :cond_2
    or-int/lit8 v5, v5, 0x1

    .line 993
    iget v8, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    .line 992
    invoke-virtual {v6, v7, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 958
    .end local v2    # "showing":Z
    :cond_3
    return-void

    .line 980
    :cond_4
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_0

    .line 982
    :cond_5
    iget v6, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v6, :cond_6

    .line 985
    invoke-virtual {p0, v5}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    goto :goto_0

    .line 988
    :cond_6
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_0
.end method


# virtual methods
.method doFinishInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1880
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-eqz v0, :cond_2

    .line 1882
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 1887
    :cond_0
    :goto_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1888
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1889
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v0, :cond_1

    .line 1891
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 1893
    :cond_1
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    .line 1894
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1895
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1879
    return-void

    .line 1883
    :cond_2
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-eqz v0, :cond_0

    .line 1885
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    goto :goto_0
.end method

.method doMovementKey(ILandroid/view/KeyEvent;I)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "count"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2236
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    move-result-object v1

    .line 2237
    .local v1, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v1, :cond_3

    .line 2241
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v3

    .line 2242
    .local v3, "movement":Landroid/text/method/MovementMethod;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 2243
    .local v2, "layout":Landroid/text/Layout;
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 2246
    const/4 v5, -0x1

    if-ne p3, v5, :cond_0

    .line 2247
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v3, v1, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2248
    invoke-virtual {p0, p1, v6}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    .line 2249
    return v6

    .line 2251
    :cond_0
    const/4 v5, -0x2

    if-ne p3, v5, :cond_1

    .line 2252
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v3, v1, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2253
    return v6

    .line 2256
    :cond_1
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v3, v1, v5, p2}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2257
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    .line 2274
    :cond_2
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 2283
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "movement":Landroid/text/method/MovementMethod;
    :cond_3
    return v7

    .line 2259
    .restart local v2    # "layout":Landroid/text/Layout;
    .restart local v3    # "movement":Landroid/text/method/MovementMethod;
    :cond_4
    invoke-static {p2, v7}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 2260
    .local v0, "down":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v3, v1, v5, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2261
    invoke-static {p2, v6}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v4

    .line 2262
    .local v4, "up":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v3, v1, v5, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 2263
    :goto_1
    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_5

    .line 2264
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v3, v1, v5, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 2265
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v3, v1, v5, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 2267
    :cond_5
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    goto :goto_0

    .line 2279
    .end local v0    # "down":Landroid/view/KeyEvent;
    .end local v4    # "up":Landroid/view/KeyEvent;
    :pswitch_0
    return v6

    .line 2274
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 2
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1899
    if-nez p3, :cond_0

    .line 1900
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    .line 1902
    :cond_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    .line 1903
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1904
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1905
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1907
    invoke-virtual {p0, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1908
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_1

    .line 1909
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v0, :cond_2

    .line 1911
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1912
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1913
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 1898
    :cond_1
    :goto_0
    return-void

    .line 1914
    :cond_2
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v0, :cond_1

    .line 1916
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1917
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, p3}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2747
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2748
    .local v0, "p":Landroid/util/Printer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Input method service state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mWindowCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2750
    const-string/jumbo v2, " mWindowAdded="

    .line 2749
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2750
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    .line 2749
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mWindowVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2752
    const-string/jumbo v2, " mWindowWasVisible="

    .line 2751
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2752
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 2751
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2753
    const-string/jumbo v2, " mInShowWindow="

    .line 2751
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2753
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    .line 2751
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Configuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mInputBinding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mStartedInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mInputStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2760
    const-string/jumbo v2, " mInputViewStarted="

    .line 2759
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2760
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 2759
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2761
    const-string/jumbo v2, " mCandidatesViewStarted="

    .line 2759
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2761
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 2759
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2763
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_0

    .line 2764
    const-string/jumbo v1, "  mInputEditorInfo:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2765
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2770
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mShowInputRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2771
    const-string/jumbo v2, " mLastShowInputRequested="

    .line 2770
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2771
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    .line 2770
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2772
    const-string/jumbo v2, " mShowInputFlags=0x"

    .line 2770
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2772
    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 2770
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mCandidatesVisibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2774
    const-string/jumbo v2, " mFullscreenApplied="

    .line 2773
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2774
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    .line 2773
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2775
    const-string/jumbo v2, " mIsFullscreen="

    .line 2773
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2775
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    .line 2773
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2776
    const-string/jumbo v2, " mExtractViewHidden="

    .line 2773
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2776
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    .line 2773
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2778
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v1, :cond_1

    .line 2779
    const-string/jumbo v1, "  mExtractedText:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v2, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " chars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2781
    const-string/jumbo v2, " startOffset="

    .line 2780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2781
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 2780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    selectionStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2783
    const-string/jumbo v2, " selectionEnd="

    .line 2782
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2783
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 2782
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2784
    const-string/jumbo v2, " flags=0x"

    .line 2782
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2784
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 2782
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2788
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mExtractedToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mIsInputViewShown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2790
    const-string/jumbo v2, " mStatusIcon="

    .line 2789
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2790
    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    .line 2789
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2791
    const-string/jumbo v1, "Last computed insets:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  contentTopInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2793
    const-string/jumbo v2, " visibleTopInsets="

    .line 2792
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2793
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 2792
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2794
    const-string/jumbo v2, " touchableInsets="

    .line 2792
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2794
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 2792
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2795
    const-string/jumbo v2, " touchableRegion="

    .line 2792
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2795
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    .line 2792
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mShouldClearInsetOfPreviousIme="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mSettingsObserver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2746
    return-void

    .line 2767
    :cond_0
    const-string/jumbo v1, "  mInputEditorInfo: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2786
    :cond_1
    const-string/jumbo v1, "  mExtractedText: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public enableHardwareAcceleration()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 804
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_0

    .line 805
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mHardwareAccelerated:Z

    .line 809
    return v1

    .line 811
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final exposeContent(Landroid/view/inputmethod/InputContentInfo;Landroid/view/inputmethod/InputConnection;)V
    .locals 3
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "inputConnection"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 2733
    if-nez p2, :cond_0

    .line 2734
    return-void

    .line 2736
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eq v0, p2, :cond_1

    .line 2737
    return-void

    .line 2739
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->exposeContent(Landroid/os/IBinder;Landroid/view/inputmethod/InputContentInfo;Landroid/view/inputmethod/EditorInfo;)V

    .line 2732
    return-void
.end method

.method public getBackDisposition()I
    .locals 1

    .prologue
    .line 1028
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    return v0
.end method

.method public getCandidatesHiddenVisibility()I
    .locals 1

    .prologue
    .line 1377
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getCurrentInputBinding()Landroid/view/inputmethod/InputBinding;
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    return-object v0
.end method

.method public getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1066
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1067
    return-object v0

    .line 1069
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v1
.end method

.method public getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public getCurrentInputStarted()Z
    .locals 1

    .prologue
    .line 1073
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    return v0
.end method

.method public getInputMethodWindowRecommendedHeight()I
    .locals 1

    .prologue
    .line 2716
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    move-result v0

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getMaxWidth()I
    .locals 2

    .prologue
    .line 1048
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1049
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    return v1
.end method

.method public getTextForImeAction(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 2503
    and-int/lit16 v0, p1, 0xff

    packed-switch v0, :pswitch_data_0

    .line 2519
    const v0, 0x1040481

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2505
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 2507
    :pswitch_1
    const v0, 0x104047b

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2509
    :pswitch_2
    const v0, 0x104047c

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2511
    :pswitch_3
    const v0, 0x104047d

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2513
    :pswitch_4
    const v0, 0x104047e

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2515
    :pswitch_5
    const v0, 0x104047f

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2517
    :pswitch_6
    const v0, 0x1040480

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2503
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getWindow()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    return-object v0
.end method

.method public hideStatusIcon()V
    .locals 2

    .prologue
    .line 1386
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    .line 1387
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideStatusIcon(Landroid/os/IBinder;)V

    .line 1385
    return-void
.end method

.method public hideWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1800
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->finishViews()V

    .line 1801
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_0

    .line 1802
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->hide()V

    .line 1804
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->beforeParentPanelChanged()V

    .line 1805
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 1806
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    .line 1807
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1809
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 1799
    return-void
.end method

.method initViews()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 874
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    .line 875
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    .line 876
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 877
    iput v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 879
    sget-object v0, Landroid/R$styleable;->InputMethodService:[I

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    .line 880
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    .line 881
    const v1, 0x109006c

    .line 880
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    .line 882
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    .line 883
    const/16 v1, 0x300

    .line 882
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 884
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/SoftInputWindow;->setContentView(Landroid/view/View;)V

    .line 885
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 886
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 887
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 888
    const-string/jumbo v1, "fancy_ime_animations"

    .line 887
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 890
    const v1, 0x10302ef

    .line 889
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 892
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v1, 0x102038d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    .line 893
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    .line 894
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v1, 0x102001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    .line 895
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    .line 896
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 897
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 898
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    .line 899
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    .line 901
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v1, 0x102001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    .line 902
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v1, 0x102001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    .line 903
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    .line 904
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    .line 906
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 907
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    .line 908
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 909
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 873
    return-void
.end method

.method initialize()V
    .locals 1

    .prologue
    .line 867
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    if-nez v0, :cond_0

    .line 868
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    .line 869
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onInitializeInterface()V

    .line 866
    :cond_0
    return-void
.end method

.method public isExtractViewShown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1213
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFullscreenMode()Z
    .locals 1

    .prologue
    .line 1163
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    return v0
.end method

.method public isInputViewShown()Z
    .locals 1

    .prologue
    .line 1312
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowInputRequested()Z
    .locals 1

    .prologue
    .line 1303
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    return v0
.end method

.method public isSpecialMode()Z
    .locals 1

    .prologue
    .line 1528
    const/4 v0, 0x1

    return v0
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 2198
    return-void
.end method

.method public onBindInput()V
    .locals 0

    .prologue
    .line 1849
    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 4
    .param p1, "outInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    .prologue
    const/4 v3, 0x1

    .line 1254
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    .line 1255
    .local v1, "loc":[I
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1256
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 1261
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1263
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1264
    .local v0, "decor":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 1268
    .end local v0    # "decor":Landroid/view/View;
    :goto_1
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1269
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 1271
    :cond_0
    aget v2, v1, v3

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 1272
    const/4 v2, 0x2

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 1273
    iget-object v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 1253
    return-void

    .line 1258
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1259
    .restart local v0    # "decor":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    aput v2, v1, v3

    goto :goto_0

    .line 1266
    .end local v0    # "decor":Landroid/view/View;
    :cond_2
    aget v2, v1, v3

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 952
    invoke-super {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 954
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->beforeParentPanelChanged()V

    .line 955
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->resetStateForNewConfiguration()V

    .line 951
    return-void
.end method

.method public onConfigureWindow(Landroid/view/Window;ZZ)V
    .locals 5
    .param p1, "win"    # Landroid/view/Window;
    .param p2, "isFullscreen"    # Z
    .param p3, "isCandidatesOnly"    # Z

    .prologue
    .line 1148
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v2}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1149
    .local v0, "currentHeight":I
    if-eqz p2, :cond_1

    const/4 v1, -0x1

    .line 1150
    .local v1, "newHeight":I
    :goto_0
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eqz v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 1151
    const-string/jumbo v2, "InputMethodService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Window size has been changed. This may cause jankiness of resizing window: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1152
    const-string/jumbo v4, " -> "

    .line 1151
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v2}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/view/Window;->setLayout(II)V

    .line 1147
    return-void

    .line 1149
    .end local v1    # "newHeight":I
    :cond_1
    const/4 v1, -0x2

    .restart local v1    # "newHeight":I
    goto :goto_0
.end method

.method public onCreate()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v4, 0x103013e

    const/4 v9, 0x0

    .line 815
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 816
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 817
    const v2, 0x1030054

    .line 818
    const v3, 0x103007f

    move v5, v4

    .line 815
    invoke-static/range {v0 .. v5}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 821
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    invoke-super {p0, v0}, Landroid/inputmethodservice/AbstractInputMethodService;->setTheme(I)V

    .line 822
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreate()V

    .line 823
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 824
    invoke-static {p0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->createAndRegister(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    .line 827
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    .line 829
    const-string/jumbo v0, "layout_inflater"

    .line 828
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    .line 830
    new-instance v0, Landroid/inputmethodservice/SoftInputWindow;

    const-string/jumbo v2, "InputMethod"

    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    .line 831
    const/16 v7, 0x7db

    const/16 v8, 0x50

    move-object v1, p0

    move-object v4, v10

    move-object v5, v10

    .line 830
    invoke-direct/range {v0 .. v9}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/inputmethodservice/SoftInputWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 832
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mHardwareAccelerated:Z

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 835
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    .line 836
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 839
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mMiBrainSpeechEngineMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v9}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 840
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->initVoiceInput()V

    .line 814
    return-void

    :cond_1
    move v0, v9

    .line 827
    goto :goto_0
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1479
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateExtractTextView()Landroid/view/View;
    .locals 3

    .prologue
    .line 1464
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    .line 1465
    const v1, 0x109006d

    const/4 v2, 0x0

    .line 1464
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
    .locals 1

    .prologue
    .line 1003
    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public onCreateInputMethodSessionInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
    .locals 1

    .prologue
    .line 1012
    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1494
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0
    .param p1, "newSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 2692
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 913
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onDestroy()V

    .line 914
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 915
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 914
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 916
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    .line 917
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 922
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->dismiss()V

    .line 924
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    if-eqz v0, :cond_1

    .line 925
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->unregister()V

    .line 926
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    .line 930
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mMiBrainSpeechEngineMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 931
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->destroy()V

    .line 912
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 1950
    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1175
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1176
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1177
    return v3

    .line 1179
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_1

    .line 1180
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 1181
    return v3

    .line 1183
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onEvaluateInputViewShown()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1328
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    if-nez v3, :cond_0

    .line 1329
    const-string/jumbo v1, "InputMethodService"

    const-string/jumbo v3, "onEvaluateInputViewShown: mSettingsObserver must not be null here."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    return v2

    .line 1332
    :cond_0
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-static {v3}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-wrap0(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1333
    return v1

    .line 1335
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1336
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v1, :cond_2

    .line 1337
    iget v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1336
    :cond_2
    :goto_0
    return v1

    :cond_3
    move v1, v2

    .line 1337
    goto :goto_0
.end method

.method public onExtractTextContextMenuItem(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 2484
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2485
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2486
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 2488
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onExtractedCursorMovement(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v1, 0x0

    .line 2467
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 2468
    :cond_0
    return-void

    .line 2470
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2471
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 2466
    :cond_2
    return-void
.end method

.method public onExtractedDeleteText(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2405
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2406
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2407
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2408
    invoke-interface {v0, p1, p1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 2409
    sub-int v1, p2, p1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2404
    :cond_0
    return-void
.end method

.method public onExtractedReplaceText(IILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2417
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2418
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2419
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 2420
    const/4 v1, 0x1

    invoke-interface {v0, p3, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2416
    :cond_0
    return-void
.end method

.method public onExtractedSelectionChanged(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2395
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2396
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2397
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 2394
    :cond_0
    return-void
.end method

.method public onExtractedSetSpan(Ljava/lang/Object;III)V
    .locals 6
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v5, 0x1

    .line 2428
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2429
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 2430
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2431
    :cond_0
    invoke-interface {v0, v5}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2432
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 2433
    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2434
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 2435
    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2427
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public onExtractedTextClicked()V
    .locals 1

    .prologue
    .line 2448
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_0

    .line 2449
    return-void

    .line 2451
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2452
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 2447
    :cond_1
    return-void
.end method

.method public onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V
    .locals 1
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 2633
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_0

    .line 2634
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 2632
    :cond_0
    return-void
.end method

.method public onFinishCandidatesView(Z)V
    .locals 1
    .param p1, "finishingInput"    # Z

    .prologue
    .line 1616
    if-nez p1, :cond_0

    .line 1617
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1618
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1619
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1615
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-void
.end method

.method public onFinishInput()V
    .locals 1

    .prologue
    .line 1935
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1936
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1937
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1934
    :cond_0
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 1
    .param p1, "finishingInput"    # Z

    .prologue
    .line 1571
    if-nez p1, :cond_0

    .line 1572
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1573
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1574
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1570
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2195
    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeInterface()V
    .locals 0

    .prologue
    .line 862
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2108
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 2109
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    move-result-object v0

    .line 2110
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2111
    return v4

    .line 2113
    :cond_0
    invoke-direct {p0, v3}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2114
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 2115
    return v4

    .line 2117
    :cond_1
    return v3

    .line 2119
    .end local v0    # "eet":Landroid/inputmethodservice/ExtractEditText;
    :cond_2
    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v1}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v1

    return v1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2128
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2144
    invoke-virtual {p0, p1, p3, p2}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 2160
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 2161
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    move-result-object v0

    .line 2162
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2163
    return v3

    .line 2165
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2169
    .end local v0    # "eet":Landroid/inputmethodservice/ExtractEditText;
    :cond_1
    const/4 v1, -0x2

    invoke-virtual {p0, p1, p2, v1}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v1

    return v1

    .line 2166
    .restart local v0    # "eet":Landroid/inputmethodservice/ExtractEditText;
    :cond_2
    invoke-direct {p0, v3}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result v1

    return v1
.end method

.method public onShowInputRequested(IZ)Z
    .locals 3
    .param p1, "flags"    # I
    .param p2, "configChange"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1640
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1641
    return v1

    .line 1643
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    .line 1644
    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1650
    return v1

    .line 1652
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-wrap0(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1653
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v2, :cond_2

    .line 1657
    return v1

    .line 1660
    :cond_2
    return v2
.end method

.method public onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 1598
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 1875
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 1553
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2182
    const/4 v0, 0x0

    return v0
.end method

.method public onUnbindInput()V
    .locals 0

    .prologue
    .line 1859
    return-void
.end method

.method public onUpdateCursor(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "newCursor"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2023
    return-void
.end method

.method public onUpdateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 0
    .param p1, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .prologue
    .line 2034
    return-void
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 1961
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    if-eq v0, p1, :cond_0

    .line 1962
    return-void

    .line 1964
    :cond_0
    if-eqz p2, :cond_1

    .line 1965
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_1

    .line 1966
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 1967
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V

    .line 1960
    :cond_1
    return-void
.end method

.method public onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V
    .locals 6
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 2587
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2588
    return-void

    .line 2591
    :cond_0
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 2592
    return-void

    .line 2594
    :cond_1
    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-nez v3, :cond_3

    .line 2595
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v3, v3, 0xff

    if-eq v3, v1, :cond_5

    .line 2596
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-nez v3, :cond_5

    .line 2597
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v3, :cond_4

    :goto_0
    move v0, v1

    .line 2598
    .local v0, "hasAction":Z
    :goto_1
    if-eqz v0, :cond_9

    .line 2599
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2600
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 2601
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_7

    .line 2602
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageButton;

    .line 2603
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-direct {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getIconForImeAction(I)I

    move-result v2

    .line 2602
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2604
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    .line 2605
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2616
    :goto_2
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2586
    :cond_2
    :goto_3
    return-void

    .end local v0    # "hasAction":Z
    :cond_3
    move v0, v1

    .line 2594
    goto :goto_1

    :cond_4
    move v1, v2

    .line 2597
    goto :goto_0

    :cond_5
    move v0, v2

    .line 2594
    goto :goto_1

    .line 2607
    .restart local v0    # "hasAction":Z
    :cond_6
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getTextForImeAction(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2610
    :cond_7
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    .line 2611
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2613
    :cond_8
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getTextForImeAction(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2619
    :cond_9
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2620
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 2621
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method

.method public onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v2, 0x0

    .line 2561
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_0

    .line 2562
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2564
    :cond_0
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    .line 2565
    return-void

    .line 2568
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    .line 2560
    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 4
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    .line 1989
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1990
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v3, :cond_2

    .line 1991
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v3, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 1992
    .local v2, "off":I
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    .line 1993
    sub-int/2addr p3, v2

    .line 1994
    sub-int/2addr p4, v2

    .line 1995
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1996
    .local v1, "len":I
    if-gez p3, :cond_3

    const/4 p3, 0x0

    .line 1998
    :cond_0
    :goto_0
    if-gez p4, :cond_4

    const/4 p4, 0x0

    .line 2000
    :cond_1
    :goto_1
    invoke-virtual {v0, p3, p4}, Landroid/inputmethodservice/ExtractEditText;->setSelection(II)V

    .line 2001
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 1988
    .end local v1    # "len":I
    .end local v2    # "off":I
    :cond_2
    return-void

    .line 1997
    .restart local v1    # "len":I
    .restart local v2    # "off":I
    :cond_3
    if-le p3, v1, :cond_0

    move p3, v1

    goto :goto_0

    .line 1999
    :cond_4
    if-le p4, v1, :cond_1

    move p4, v1

    goto :goto_1
.end method

.method public onViewClicked(Z)V
    .locals 0
    .param p1, "focusChanged"    # Z

    .prologue
    .line 2012
    return-void
.end method

.method public onWindowHidden()V
    .locals 0

    .prologue
    .line 1825
    return-void
.end method

.method public onWindowShown()V
    .locals 0

    .prologue
    .line 1817
    return-void
.end method

.method reportExtractedMovement(II)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "count"    # I

    .prologue
    .line 2217
    const/4 v0, 0x0

    .local v0, "dx":I
    const/4 v1, 0x0

    .line 2218
    .local v1, "dy":I
    packed-switch p1, :pswitch_data_0

    .line 2232
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/InputMethodService;->onExtractedCursorMovement(II)V

    .line 2216
    return-void

    .line 2220
    :pswitch_0
    neg-int v0, p2

    .line 2221
    goto :goto_0

    .line 2223
    :pswitch_1
    move v0, p2

    .line 2224
    goto :goto_0

    .line 2226
    :pswitch_2
    neg-int v1, p2

    .line 2227
    goto :goto_0

    .line 2229
    :pswitch_3
    move v1, p2

    .line 2230
    goto :goto_0

    .line 2218
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestHideSelf(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 2047
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 2046
    return-void
.end method

.method public sendDefaultEditorAction(Z)Z
    .locals 6
    .param p1, "fromEnterKey"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2334
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 2335
    .local v0, "ei":Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_2

    .line 2336
    if-eqz p1, :cond_0

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 2337
    const/high16 v3, 0x40000000    # 2.0f

    .line 2336
    and-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 2338
    :cond_0
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v5, :cond_2

    .line 2343
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 2344
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    .line 2345
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 2347
    :cond_1
    return v5

    .line 2350
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    return v4
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 13
    .param p1, "keyEventCode"    # I

    .prologue
    .line 2306
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2307
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    return-void

    .line 2308
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2309
    .local v2, "eventTime":J
    new-instance v1, Landroid/view/KeyEvent;

    .line 2310
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 2311
    const/4 v12, 0x6

    move-wide v4, v2

    move v7, p1

    .line 2309
    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2312
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2313
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 2314
    const/4 v12, 0x6

    move v7, p1

    .line 2312
    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2305
    return-void
.end method

.method public sendKeyChar(C)V
    .locals 3
    .param p1, "charCode"    # C

    .prologue
    const/4 v2, 0x1

    .line 2368
    packed-switch p1, :pswitch_data_0

    .line 2376
    const/16 v1, 0x30

    if-lt p1, v1, :cond_1

    const/16 v1, 0x39

    if-gt p1, v1, :cond_1

    .line 2377
    add-int/lit8 v1, p1, -0x30

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    .line 2367
    :cond_0
    :goto_0
    return-void

    .line 2370
    :pswitch_0
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->sendDefaultEditorAction(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2371
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    goto :goto_0

    .line 2379
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2380
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2381
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 2368
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public setBackDisposition(I)V
    .locals 0
    .param p1, "disposition"    # I

    .prologue
    .line 1024
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    .line 1023
    return-void
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1433
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mVoiceAreaLayoutHelper:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1437
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1438
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1439
    const/4 v2, -0x1

    .line 1440
    const/4 v3, -0x2

    .line 1438
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1431
    return-void

    .line 1434
    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mVoiceAreaLayoutHelper:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->setCandidatesViewGroup(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public setCandidatesViewShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 1345
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    .line 1346
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eq v0, p1, :cond_0

    .line 1350
    if-eqz p1, :cond_1

    .line 1351
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 1344
    :cond_0
    :goto_0
    return-void

    .line 1353
    :cond_1
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_0
.end method

.method public setExtractView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1402
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1403
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1406
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    .line 1407
    if-eqz p1, :cond_1

    .line 1409
    const v0, 0x1020025

    .line 1408
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/ExtractEditText;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1410
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0, p0}, Landroid/inputmethodservice/ExtractEditText;->setIME(Landroid/inputmethodservice/InputMethodService;)V

    .line 1412
    const v0, 0x102038f

    .line 1411
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    .line 1413
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1415
    const v0, 0x102038e

    .line 1414
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 1417
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 1401
    :goto_0
    return-void

    .line 1419
    :cond_1
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1420
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 1421
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    goto :goto_0
.end method

.method public setExtractViewShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 1196
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-ne v0, p1, :cond_0

    .line 1197
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    .line 1198
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    .line 1195
    :cond_0
    return-void

    .line 1197
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setInputView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1450
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1451
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1452
    const/4 v2, -0x1

    .line 1453
    const/4 v3, -0x2

    .line 1451
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1454
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    .line 1449
    return-void
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "theme"    # I

    .prologue
    .line 785
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_0

    .line 786
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 788
    :cond_0
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 784
    return-void
.end method

.method public showStatusIcon(I)V
    .locals 3
    .param p1, "iconResId"    # I

    .prologue
    .line 1381
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    .line 1382
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/inputmethod/InputMethodManager;->showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 1380
    return-void
.end method

.method public showWindow(Z)V
    .locals 4
    .param p1, "showInput"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1695
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    if-eqz v1, :cond_0

    .line 1696
    const-string/jumbo v1, "InputMethodService"

    const-string/jumbo v2, "Re-entrance in to showWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    return-void

    .line 1701
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1702
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    .line 1703
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->showWindowInner(Z)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1717
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1718
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    .line 1686
    return-void

    .line 1704
    :catch_0
    move-exception v0

    .line 1708
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 1709
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    .line 1714
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1715
    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    :catchall_0
    move-exception v1

    .line 1717
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1718
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    .line 1715
    throw v1
.end method

.method showWindowInner(Z)V
    .locals 9
    .param p1, "showInput"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1723
    const/4 v0, 0x0

    .line 1725
    .local v0, "doShowInput":Z
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v4, :cond_6

    move v4, v5

    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v8

    :goto_1
    or-int v2, v4, v7

    .line 1726
    .local v2, "previousImeWindowStatus":I
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 1727
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 1728
    const/4 v0, 0x1

    .line 1729
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 1733
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1734
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 1735
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateInputViewShown()V

    .line 1737
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    if-eqz v4, :cond_8

    .line 1748
    :cond_1
    :goto_2
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v4, :cond_9

    .line 1749
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-nez v4, :cond_2

    .line 1751
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1752
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v4, v6}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1760
    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 1761
    invoke-virtual {p0, v6}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 1764
    :cond_3
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_4
    or-int/lit8 v1, v8, 0x1

    .line 1765
    .local v1, "nextImeWindowStatus":I
    if-eq v2, v1, :cond_4

    .line 1766
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    iget v7, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-virtual {v4, v5, v1, v7}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 1768
    :cond_4
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_5

    .line 1770
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowShown()V

    .line 1773
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v4}, Landroid/inputmethodservice/SoftInputWindow;->showWithTokenCheck()V

    .line 1776
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    .line 1779
    :cond_5
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->afterParentPanelChanged()V

    .line 1722
    return-void

    .end local v1    # "nextImeWindowStatus":I
    .end local v2    # "previousImeWindowStatus":I
    :cond_6
    move v4, v6

    .line 1725
    goto :goto_0

    :cond_7
    move v7, v6

    goto :goto_1

    .line 1738
    .restart local v2    # "previousImeWindowStatus":I
    :cond_8
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    .line 1739
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    .line 1740
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1742
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v3

    .line 1744
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1745
    invoke-virtual {p0, v3}, Landroid/inputmethodservice/InputMethodService;->setCandidatesView(Landroid/view/View;)V

    goto :goto_2

    .line 1754
    .end local v3    # "v":Landroid/view/View;
    :cond_9
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-nez v4, :cond_2

    .line 1756
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1757
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v4, v6}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_3

    :cond_a
    move v8, v6

    .line 1764
    goto :goto_4
.end method

.method startExtractingText(Z)V
    .locals 9
    .param p1, "inputChanged"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 2639
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 2640
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputStarted()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2641
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v6

    .line 2640
    if-eqz v6, :cond_3

    .line 2642
    iget v6, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    .line 2643
    new-instance v4, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v4}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 2644
    .local v4, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    iget v6, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    iput v6, v4, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 2645
    iput v8, v4, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 2646
    const/16 v6, 0xa

    iput v6, v4, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    .line 2647
    const/16 v6, 0x2710

    iput v6, v4, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    .line 2648
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 2649
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_4

    :goto_0
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 2651
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    .line 2652
    :cond_0
    const-string/jumbo v5, "InputMethodService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unexpected null in startExtractingText : mExtractedText = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2653
    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 2652
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2653
    const-string/jumbo v7, ", input connection = "

    .line 2652
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 2658
    .local v1, "ei":Landroid/view/inputmethod/EditorInfo;
    :try_start_0
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    .line 2659
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V

    .line 2660
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V

    .line 2661
    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 2662
    .local v3, "inputType":I
    and-int/lit8 v5, v3, 0xf

    if-ne v5, v8, :cond_2

    .line 2664
    const/high16 v5, 0x40000

    and-int/2addr v5, v3

    if-eqz v5, :cond_2

    .line 2665
    const/high16 v5, 0x20000

    or-int/2addr v3, v5

    .line 2668
    :cond_2
    invoke-virtual {v0, v3}, Landroid/inputmethodservice/ExtractEditText;->setInputType(I)V

    .line 2669
    iget-object v5, v1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2670
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v5, :cond_5

    .line 2671
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    .line 2672
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2678
    :goto_1
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 2681
    if-eqz p1, :cond_3

    .line 2682
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V

    .line 2638
    .end local v1    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "inputType":I
    .end local v4    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_3
    return-void

    .line 2650
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v4    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_4
    invoke-interface {v2, v4, v8}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v5

    goto :goto_0

    .line 2674
    .restart local v1    # "ei":Landroid/view/inputmethod/EditorInfo;
    .restart local v3    # "inputType":I
    :cond_5
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    .line 2675
    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2677
    .end local v3    # "inputType":I
    :catchall_0
    move-exception v5

    .line 2678
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 2677
    throw v5
.end method

.method public switchInputMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1398
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1397
    return-void
.end method

.method updateCandidatesVisibility(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 1359
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1360
    .local v0, "vis":I
    :goto_0
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-eq v1, v0, :cond_0

    .line 1361
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1362
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    .line 1358
    :cond_0
    return-void

    .line 1359
    .end local v0    # "vis":I
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    move-result v0

    .restart local v0    # "vis":I
    goto :goto_0
.end method

.method updateExtractFrameVisibility()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1218
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1219
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    .line 1221
    .local v1, "vis":I
    :goto_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1226
    :goto_1
    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    .line 1227
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 1228
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    if-nez v1, :cond_4

    :goto_3
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 1232
    .local v0, "animRes":I
    if-eqz v0, :cond_0

    .line 1233
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1237
    .end local v0    # "animRes":I
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1216
    return-void

    .line 1219
    .end local v1    # "vis":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "vis":I
    goto :goto_0

    .line 1223
    .end local v1    # "vis":I
    :cond_2
    const/4 v1, 0x0

    .line 1224
    .restart local v1    # "vis":I
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v2, v4

    .line 1226
    goto :goto_2

    .line 1230
    :cond_4
    const/4 v3, 0x2

    goto :goto_3
.end method

.method public updateFullscreenMode()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 1089
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v2

    .line 1090
    :goto_0
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    iget-boolean v8, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eq v5, v8, :cond_2

    const/4 v0, 0x1

    .line 1091
    .local v0, "changed":Z
    :goto_1
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    if-ne v5, v2, :cond_3

    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    if-eqz v5, :cond_3

    .line 1124
    :goto_2
    if-eqz v0, :cond_0

    .line 1125
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v5}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v8

    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v5, :cond_8

    move v5, v6

    :goto_3
    invoke-virtual {p0, v8, v2, v5}, Landroid/inputmethodservice/InputMethodService;->onConfigureWindow(Landroid/view/Window;ZZ)V

    .line 1126
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    .line 1088
    :cond_0
    return-void

    .line 1089
    .end local v0    # "changed":Z
    :cond_1
    const/4 v2, 0x0

    .local v2, "isFullscreen":Z
    goto :goto_0

    .line 1090
    .end local v2    # "isFullscreen":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_1

    .line 1092
    :cond_3
    const/4 v0, 0x1

    .line 1093
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    .line 1094
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1095
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_4

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    .line 1096
    :cond_4
    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    .line 1097
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1099
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1098
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1100
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v2, :cond_7

    .line 1101
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    invoke-virtual {v8, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1103
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1104
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1110
    :goto_4
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1111
    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    .line 1110
    invoke-virtual {v5, v8, v3}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1112
    if-eqz v2, :cond_6

    .line 1113
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    if-nez v5, :cond_5

    .line 1114
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateExtractTextView()Landroid/view/View;

    move-result-object v4

    .line 1115
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_5

    .line 1116
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->setExtractView(Landroid/view/View;)V

    .line 1119
    .end local v4    # "v":Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v6}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 1121
    :cond_6
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    goto :goto_2

    .line 1106
    :cond_7
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1107
    const/4 v5, -0x2

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1108
    const/4 v5, 0x0

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_4

    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    move v5, v7

    .line 1125
    goto :goto_3
.end method

.method public updateInputViewShown()V
    .locals 4

    .prologue
    .line 1285
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v0

    .line 1286
    :goto_0
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eq v2, v0, :cond_0

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v2, :cond_0

    .line 1287
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    .line 1288
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1289
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1290
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1291
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateInputView()Landroid/view/View;

    move-result-object v1

    .line 1292
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1293
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setInputView(Landroid/view/View;)V

    .line 1284
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    return-void

    .line 1285
    :cond_1
    const/4 v0, 0x0

    .local v0, "isShown":Z
    goto :goto_0

    .line 1288
    .end local v0    # "isShown":Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method
