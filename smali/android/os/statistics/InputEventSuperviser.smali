.class public Landroid/os/statistics/InputEventSuperviser;
.super Ljava/lang/Object;
.source "InputEventSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/InputEventSuperviser$InputEventFields;,
        Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;
    }
.end annotation


# static fields
.field private static final DEBUGGING:Z = false

.field public static final INPUT_EVENT_STAGE_DELIVERY:I = 0x1

.field public static final INPUT_EVENT_STAGE_DISPATCH:I = 0x0

.field public static final INPUT_EVENT_TYPE_KEY:I = 0x0

.field public static final INPUT_EVENT_TYPE_MOTION:I = 0x1

.field public static final INPUT_EVENT_TYPE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "InputEventSuperviser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p0, "inputEvent"    # Landroid/view/InputEvent;

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/statistics/InputEventSuperviser;->beginInputEvent(Landroid/view/InputEvent;I)V

    .line 220
    return-void
.end method

.method public static beginInputEvent(Landroid/view/InputEvent;I)V
    .locals 3
    .param p0, "inputEvent"    # Landroid/view/InputEvent;
    .param p1, "inputEventStage"    # I

    .prologue
    .line 225
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    return-void

    .line 228
    :cond_0
    instance-of v2, p0, Landroid/view/KeyEvent;

    if-nez v2, :cond_1

    .line 229
    instance-of v2, p0, Landroid/view/MotionEvent;

    if-eqz v2, :cond_2

    .line 233
    :cond_1
    const-wide/16 v0, 0x0

    .line 238
    .local v0, "measureBeginTime":J
    invoke-virtual {p0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v2

    invoke-static {p1, v2}, Landroid/os/statistics/InputEventSuperviser;->nativeBeginInputEvent(II)V

    .line 224
    return-void

    .line 230
    .end local v0    # "measureBeginTime":J
    :cond_2
    return-void
.end method

.method public static endInputEvent(Landroid/view/InputEvent;ILandroid/view/InputEventReceiver;Landroid/view/InputChannel;)V
    .locals 12
    .param p0, "inputEvent"    # Landroid/view/InputEvent;
    .param p1, "inputEventStage"    # I
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;
    .param p3, "inputChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 252
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    return-void

    .line 255
    :cond_0
    instance-of v0, p0, Landroid/view/KeyEvent;

    if-nez v0, :cond_1

    .line 256
    instance-of v0, p0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    .line 260
    :cond_1
    const-wide/16 v10, 0x0

    .line 265
    .local v10, "measureBeginTime":J
    invoke-virtual {p0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    .line 266
    .local v1, "inputEventSequenceNumber":I
    invoke-virtual {p0}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v2

    .line 270
    .local v2, "inputEventTime":J
    instance-of v0, p0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_3

    .line 271
    const/4 v4, 0x0

    .local v4, "inputEventType":I
    move-object v0, p0

    .line 272
    nop

    nop

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 273
    .local v5, "action":I
    nop

    nop

    .end local p0    # "inputEvent":Landroid/view/InputEvent;
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .local v6, "keyCode":I
    :goto_0
    move v0, p1

    move-object v7, p2

    move-object v8, p3

    .line 279
    invoke-static/range {v0 .. v8}, Landroid/os/statistics/InputEventSuperviser;->nativeEndInputEvent(IIJIIILandroid/view/InputEventReceiver;Landroid/view/InputChannel;)V

    .line 251
    return-void

    .line 257
    .end local v1    # "inputEventSequenceNumber":I
    .end local v2    # "inputEventTime":J
    .end local v4    # "inputEventType":I
    .end local v5    # "action":I
    .end local v6    # "keyCode":I
    .end local v10    # "measureBeginTime":J
    .restart local p0    # "inputEvent":Landroid/view/InputEvent;
    :cond_2
    return-void

    .line 275
    .restart local v1    # "inputEventSequenceNumber":I
    .restart local v2    # "inputEventTime":J
    .restart local v10    # "measureBeginTime":J
    :cond_3
    const/4 v4, 0x1

    .line 276
    .restart local v4    # "inputEventType":I
    check-cast p0, Landroid/view/MotionEvent;

    .end local p0    # "inputEvent":Landroid/view/InputEvent;
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 277
    .restart local v5    # "action":I
    const/4 v6, 0x0

    .restart local v6    # "keyCode":I
    goto :goto_0
.end method

.method public static endInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;Landroid/view/InputChannel;)V
    .locals 1
    .param p0, "inputEvent"    # Landroid/view/InputEvent;
    .param p1, "receiver"    # Landroid/view/InputEventReceiver;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/os/statistics/InputEventSuperviser;->endInputEvent(Landroid/view/InputEvent;ILandroid/view/InputEventReceiver;Landroid/view/InputChannel;)V

    .line 246
    return-void
.end method

.method private static native nativeBeginInputEvent(II)V
.end method

.method private static native nativeEndInputEvent(IIJIIILandroid/view/InputEventReceiver;Landroid/view/InputChannel;)V
.end method
