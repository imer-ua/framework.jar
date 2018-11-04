.class Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;
.super Ljava/lang/Object;
.source "VoiceAreaLayoutHelper.java"

# interfaces
.implements Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/VoiceAreaLayoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    .prologue
    .line 40
    iput-object p1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateAnimation(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V
    .locals 1
    .param p1, "type"    # Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->-get2(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/inputmethodservice/RecodingStateAnimatorView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->-get2(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/inputmethodservice/RecodingStateAnimatorView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/RecodingStateAnimatorView;->setPreState(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V

    .line 43
    return-void
.end method

.method public updateText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;->updateText(Ljava/lang/String;Z)V

    .line 51
    return-void
.end method

.method public updateText(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "needFormat"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->-get1(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 58
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->-get1(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/inputmethodservice/VoiceInputHelper;->formatText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "text":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_1
    return-void
.end method
