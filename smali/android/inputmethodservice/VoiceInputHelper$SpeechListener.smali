.class Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/VoiceInputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpeechListener"
.end annotation


# instance fields
.field hasResult:Z

.field imsWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/inputmethodservice/InputMethodService;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->mContext:Landroid/content/Context;

    .line 246
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->imsWeakRef:Ljava/lang/ref/WeakReference;

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->hasResult:Z

    .line 244
    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 3

    .prologue
    .line 255
    const-string/jumbo v0, "onBeginningOfSpeech"

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    .line 256
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110900f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateText(Ljava/lang/String;)V

    .line 259
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->-set0(Z)Z

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->hasResult:Z

    .line 254
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .param p1, "buffer"    # [B

    .prologue
    .line 267
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    const-string/jumbo v0, "onEndOfSpeech..."

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateAnimation(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V

    .line 275
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->-set0(Z)Z

    .line 270
    return-void
.end method

.method public onError(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    const/4 v3, 0x0

    .line 280
    const-string/jumbo v0, ""

    .line 282
    .local v0, "hintToUser":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 292
    :pswitch_0
    iget-object v1, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110900f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/inputmethodservice/VoiceInputHelper;->getErrorStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    .line 296
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 297
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateAnimation(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V

    .line 298
    iget-boolean v1, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->hasResult:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    :cond_0
    :goto_1
    return-void

    .line 285
    :pswitch_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 289
    :pswitch_2
    iget-object v1, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110900f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 299
    :cond_1
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateText(Ljava/lang/String;Z)V

    goto :goto_1

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "eventType"    # I
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 355
    const-string/jumbo v0, "onEvent"

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "partialResults"    # Landroid/os/Bundle;

    .prologue
    .line 338
    const-string/jumbo v4, "results_recognition"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 339
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 340
    return-void

    .line 342
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPartialResults, matched size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    .line 343
    const-string/jumbo v1, ""

    .line 344
    .local v1, "partial":Ljava/lang/String;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "val$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 345
    .local v2, "val":Ljava/lang/String;
    move-object v1, v2

    goto :goto_0

    .line 347
    .end local v2    # "val":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 337
    :cond_2
    :goto_1
    return-void

    .line 348
    :cond_3
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateText(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v4

    sget-object v5, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_HAS_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    invoke-interface {v4, v5}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateAnimation(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V

    goto :goto_1
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 251
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "results"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 307
    const-string/jumbo v6, "results_recognition"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 308
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 309
    return-void

    .line 311
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onResults, matched size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    .line 312
    const-string/jumbo v3, ""

    .line 313
    .local v3, "ret":Ljava/lang/String;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "val$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 314
    .local v4, "val":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 315
    move-object v3, v4

    .line 320
    .end local v4    # "val":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 321
    iget-object v6, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->imsWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->imsWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/inputmethodservice/InputMethodService;

    move-object v1, v6

    .line 322
    .local v1, "ims":Landroid/inputmethodservice/InputMethodService;
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 323
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    :cond_3
    if-eqz v0, :cond_7

    .line 324
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 325
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateText(Ljava/lang/String;)V

    .line 327
    :cond_4
    invoke-interface {v0, v3, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 328
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "commitText="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    .line 329
    iput-boolean v8, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->hasResult:Z

    .line 305
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v1    # "ims":Landroid/inputmethodservice/InputMethodService;
    :cond_5
    :goto_1
    return-void

    :cond_6
    move-object v1, v0

    .line 321
    goto :goto_0

    .line 331
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v1    # "ims":Landroid/inputmethodservice/InputMethodService;
    :cond_7
    const-string/jumbo v6, "input connection is null"

    invoke-static {v8, v6}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    goto :goto_1
.end method

.method public onRmsChanged(F)V
    .locals 0
    .param p1, "rmsdB"    # F

    .prologue
    .line 264
    return-void
.end method
