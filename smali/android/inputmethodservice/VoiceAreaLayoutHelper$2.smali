.class Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;
.super Ljava/lang/Object;
.source "VoiceAreaLayoutHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/VoiceAreaLayoutHelper;->getVoiceInputButton()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

.field final synthetic val$voiceButtonHint:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/VoiceAreaLayoutHelper;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/VoiceAreaLayoutHelper;
    .param p2, "val$voiceButtonHint"    # Landroid/widget/TextView;

    .prologue
    .line 89
    iput-object p1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    iput-object p2, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->val$voiceButtonHint:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 93
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 94
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 95
    const-string/jumbo v3, "start voice recognizer...ACTION_DOWN"

    invoke-static {v3}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    .line 98
    invoke-static {v6}, Landroid/inputmethodservice/VoiceInputHelper;->setIsInSpeech(Z)V

    .line 100
    iget-object v3, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->val$voiceButtonHint:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v4}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->-get0(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110900f5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v3, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v3}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->-wrap0(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/PopupWindow;

    move-result-object v3

    iget-object v4, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v4}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->-get3(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 103
    iget-object v3, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v3}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->-get0(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x1104000b

    .line 102
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 104
    .local v1, "animation":Landroid/view/animation/Animation;
    iget-object v3, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v3}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->-get4(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    iget-object v3, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v3}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->-get0(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 109
    .local v2, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 110
    iget-object v3, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v3}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->-get0(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/inputmethodservice/VoiceInputHelper;->startListening(Ljava/lang/String;)V

    .line 118
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v3}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->-get0(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4, v3}, Landroid/inputmethodservice/VoiceInputReporter;->reportEvent(ILjava/lang/String;)V

    .line 126
    .end local v1    # "animation":Landroid/view/animation/Animation;
    .end local v2    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_1
    :goto_1
    return v6

    .line 111
    .restart local v1    # "animation":Landroid/view/animation/Animation;
    .restart local v2    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_2
    iget-object v3, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    iget-object v3, v3, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    if-eqz v3, :cond_0

    .line 112
    iget-object v3, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    iget-object v3, v3, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->mCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    .line 113
    iget-object v4, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v4}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->-get0(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110900f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-interface {v3, v4, v6}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateText(Ljava/lang/String;Z)V

    .line 115
    const-string/jumbo v3, "No connectivity service"

    invoke-static {v3}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v3}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->-get0(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/inputmethodservice/VoiceInputReporter;->reportEvent(ILjava/lang/String;)V

    goto :goto_0

    .line 119
    .end local v1    # "animation":Landroid/view/animation/Animation;
    .end local v2    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_3
    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    if-ne v0, v7, :cond_1

    .line 120
    :cond_4
    const-string/jumbo v3, "stop voice recognizer...ACTION_UP or ACTION_CANCEL"

    invoke-static {v3}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->log(Ljava/lang/String;)V

    .line 122
    iget-object v3, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->val$voiceButtonHint:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v4}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->-get0(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110900f4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v3, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$2;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v3}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->-wrap1(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)V

    .line 124
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->stopListening()V

    goto :goto_1
.end method
