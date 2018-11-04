.class Lmiui/maml/ActionCommand$RingModeCommand;
.super Lmiui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingModeCommand"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mToggleHelper:Lmiui/maml/ActionCommand$ModeToggleHelper;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 3
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string/jumbo v0, "ring_mode"

    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/ActionCommand$NotificationReceiver;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v0, Lmiui/maml/ActionCommand$ModeToggleHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/maml/ActionCommand$ModeToggleHelper;-><init>(Lmiui/maml/ActionCommand$ModeToggleHelper;)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lmiui/maml/ActionCommand$ModeToggleHelper;

    .line 222
    iget-object v0, p0, Lmiui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lmiui/maml/ActionCommand$ModeToggleHelper;

    const-string/jumbo v1, "normal"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/ActionCommand$ModeToggleHelper;->addMode(Ljava/lang/String;I)V

    .line 223
    iget-object v0, p0, Lmiui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lmiui/maml/ActionCommand$ModeToggleHelper;

    const-string/jumbo v1, "silent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/maml/ActionCommand$ModeToggleHelper;->addMode(Ljava/lang/String;I)V

    .line 224
    iget-object v0, p0, Lmiui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lmiui/maml/ActionCommand$ModeToggleHelper;

    const-string/jumbo v1, "vibrate"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/ActionCommand$ModeToggleHelper;->addMode(Ljava/lang/String;I)V

    .line 225
    iget-object v0, p0, Lmiui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lmiui/maml/ActionCommand$ModeToggleHelper;

    invoke-virtual {v0, p2}, Lmiui/maml/ActionCommand$ModeToggleHelper;->build(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    const-string/jumbo v0, "ActionCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid ring mode command value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void

    .line 220
    :cond_0
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 2

    .prologue
    .line 233
    iget-object v1, p0, Lmiui/maml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 234
    return-void

    .line 236
    :cond_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lmiui/maml/ActionCommand$ModeToggleHelper;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$ModeToggleHelper;->click()V

    .line 237
    iget-object v1, p0, Lmiui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lmiui/maml/ActionCommand$ModeToggleHelper;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$ModeToggleHelper;->getModeId()I

    move-result v0

    .line 238
    .local v0, "mode":I
    iget-object v1, p0, Lmiui/maml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 239
    invoke-virtual {p0, v0}, Lmiui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    .line 232
    return-void
.end method

.method protected update()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lmiui/maml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 246
    const-string/jumbo v1, "audio"

    .line 245
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lmiui/maml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    .line 248
    :cond_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 249
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lmiui/maml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    .line 243
    return-void
.end method
