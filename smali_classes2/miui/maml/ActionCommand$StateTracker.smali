.class public abstract Lmiui/maml/ActionCommand$StateTracker;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateTracker"
.end annotation


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-boolean v0, p0, Lmiui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 300
    iput-object v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 302
    iput-object v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 308
    iput-boolean v0, p0, Lmiui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 296
    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x5

    .line 402
    iget-boolean v0, p0, Lmiui/maml/ActionCommand$StateTracker;->mInTransition:Z

    if-eqz v0, :cond_0

    .line 410
    return v1

    .line 412
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/maml/ActionCommand$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 418
    return v1

    .line 414
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 416
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 412
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lmiui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newState"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 354
    iget-boolean v0, p0, Lmiui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 355
    .local v0, "wasInTransition":Z
    packed-switch p2, :pswitch_data_0

    .line 374
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mInTransition:Z

    if-eqz v1, :cond_1

    .line 353
    :cond_0
    :goto_1
    return-void

    .line 357
    :pswitch_0
    iput-boolean v3, p0, Lmiui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 358
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 361
    :pswitch_1
    iput-boolean v3, p0, Lmiui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 362
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 365
    :pswitch_2
    iput-boolean v4, p0, Lmiui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 366
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 369
    :pswitch_3
    iput-boolean v4, p0, Lmiui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 370
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 375
    :cond_1
    iget-boolean v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_0

    .line 376
    const-string/jumbo v1, "ActionCommand"

    const-string/jumbo v2, "processing deferred state change"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lmiui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 378
    const-string/jumbo v1, "ActionCommand"

    const-string/jumbo v2, "... but intended state matches, so no changes."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_2
    :goto_2
    iput-boolean v3, p0, Lmiui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    goto :goto_1

    .line 379
    :cond_3
    iget-object v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 380
    iput-boolean v4, p0, Lmiui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 381
    iget-object v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lmiui/maml/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_2

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 315
    invoke-virtual {p0, p1}, Lmiui/maml/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 316
    .local v0, "currentState":I
    const/4 v1, 0x0

    .line 317
    .local v1, "newState":Z
    packed-switch v0, :pswitch_data_0

    .line 330
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 331
    iget-boolean v2, p0, Lmiui/maml/ActionCommand$StateTracker;->mInTransition:Z

    if-eqz v2, :cond_2

    .line 336
    iput-boolean v3, p0, Lmiui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 314
    :goto_1
    return-void

    .line 319
    :pswitch_1
    const/4 v1, 0x0

    .line 320
    goto :goto_0

    .line 322
    :pswitch_2
    const/4 v1, 0x1

    .line 323
    goto :goto_0

    .line 325
    :pswitch_3
    iget-object v2, p0, Lmiui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 326
    iget-object v2, p0, Lmiui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 338
    :cond_2
    iput-boolean v3, p0, Lmiui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 339
    invoke-virtual {p0, p1, v1}, Lmiui/maml/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
