.class Lmiui/maml/ActionCommand$DataSwitchCommand;
.super Lmiui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataSwitchCommand"
.end annotation


# instance fields
.field private mApnEnable:Z

.field private mMobileDataUtils:Landroid/app/MobileDataUtils;

.field private mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 2
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 600
    const-string/jumbo v0, "data_state"

    sget-object v1, Lmiui/maml/NotifierManager;->TYPE_MOBILE_DATA:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/ActionCommand$NotificationReceiver;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    new-instance v0, Lmiui/maml/ActionCommand$OnOffCommandHelper;

    invoke-direct {v0, p2}, Lmiui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    .line 602
    invoke-static {}, Landroid/app/MobileDataUtils;->getInstance()Landroid/app/MobileDataUtils;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    .line 599
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 3

    .prologue
    .line 613
    iget-boolean v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    .line 614
    .local v0, "enable":Z
    iget-object v1, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v1, :cond_2

    .line 615
    iget-boolean v1, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 619
    .end local v0    # "enable":Z
    :goto_0
    iget-boolean v1, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    if-eq v1, v0, :cond_0

    .line 620
    iget-object v1, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v2, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/app/MobileDataUtils;->enableMobileData(Landroid/content/Context;Z)V

    .line 612
    :cond_0
    return-void

    .line 615
    .restart local v0    # "enable":Z
    :cond_1
    const/4 v0, 0x1

    .local v0, "enable":Z
    goto :goto_0

    .line 617
    .local v0, "enable":Z
    :cond_2
    iget-object v1, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v0, v1, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    goto :goto_0
.end method

.method protected update()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v1, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/MobileDataUtils;->isMobileEnable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    .line 608
    iget-boolean v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lmiui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    .line 606
    return-void

    .line 608
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
