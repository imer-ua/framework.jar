.class Lmiui/maml/elements/AdvancedSlider$LaunchAction;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchAction"
.end annotation


# instance fields
.field public mCommand:Lmiui/maml/ActionCommand;

.field public mConfigTaskLoaded:Z

.field public mIntentInfo:Lmiui/maml/util/IntentInfo;

.field public mTrigger:Lmiui/maml/CommandTrigger;

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/AdvancedSlider;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/elements/AdvancedSlider;

    .prologue
    .line 717
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/elements/AdvancedSlider$LaunchAction;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/elements/AdvancedSlider;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;-><init>(Lmiui/maml/elements/AdvancedSlider;)V

    return-void
.end method

.method private performTask()Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 736
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    if-nez v2, :cond_0

    .line 737
    return-object v4

    .line 739
    :cond_0
    const/4 v1, 0x0

    .line 740
    .local v1, "intent":Landroid/content/Intent;
    iget-boolean v2, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mConfigTaskLoaded:Z

    if-nez v2, :cond_2

    .line 741
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v2, v2, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/ScreenElementRoot;->findTask(Ljava/lang/String;)Lmiui/maml/util/Task;

    move-result-object v0

    .line 745
    .local v0, "configTask":Lmiui/maml/util/Task;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 748
    :cond_1
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mConfigTaskLoaded:Z

    .line 751
    .end local v0    # "configTask":Lmiui/maml/util/Task;
    :cond_2
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v2}, Lmiui/maml/util/IntentInfo;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/maml/util/Utils;->isProtectedIntent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 752
    return-object v4

    .line 746
    .restart local v0    # "configTask":Lmiui/maml/util/Task;
    :cond_3
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v2, v0}, Lmiui/maml/util/IntentInfo;->set(Lmiui/maml/util/Task;)V

    goto :goto_0

    .line 755
    .end local v0    # "configTask":Lmiui/maml/util/Task;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 756
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v2, v1}, Lmiui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    .line 758
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 761
    return-object v1
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->finish()V

    .line 767
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->finish()V

    .line 769
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mConfigTaskLoaded:Z

    .line 764
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->init()V

    .line 775
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->init()V

    .line 772
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->pause()V

    .line 782
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->pause()V

    .line 779
    :cond_1
    return-void
.end method

.method public perform()Landroid/content/Intent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 725
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    if-eqz v0, :cond_0

    .line 726
    invoke-direct {p0}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->performTask()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 727
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_2

    .line 728
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->perform()V

    .line 732
    :cond_1
    :goto_0
    return-object v1

    .line 729
    :cond_2
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 730
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->resume()V

    .line 789
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 790
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->resume()V

    .line 786
    :cond_1
    return-void
.end method
