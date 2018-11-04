.class Lmiui/maml/ActionCommand$BluetoothSwitchCommand;
.super Lmiui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothSwitchCommand"
.end annotation


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnable:Z

.field private mBluetoothEnabling:Z

.field private mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 2
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 632
    const-string/jumbo v0, "bluetooth_state"

    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/ActionCommand$NotificationReceiver;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    new-instance v0, Lmiui/maml/ActionCommand$OnOffCommandHelper;

    invoke-direct {v0, p2}, Lmiui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    .line 631
    return-void
.end method

.method private ensureBluetoothAdapter()Z
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 679
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 681
    :cond_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 638
    invoke-direct {p0}, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->ensureBluetoothAdapter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    return-void

    .line 641
    :cond_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v0, v0, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v0, :cond_3

    .line 642
    iget-boolean v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    if-eqz v0, :cond_2

    .line 643
    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 644
    iput-boolean v2, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    .line 660
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->update()V

    .line 637
    return-void

    .line 646
    :cond_2
    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 647
    iput-boolean v3, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    goto :goto_0

    .line 650
    :cond_3
    iget-boolean v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    iget-object v1, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-eq v0, v1, :cond_1

    .line 651
    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v0, v0, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-eqz v0, :cond_4

    .line 652
    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 653
    iput-boolean v3, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    goto :goto_0

    .line 655
    :cond_4
    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 656
    iput-boolean v2, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    goto :goto_0
.end method

.method protected update()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 665
    invoke-direct {p0}, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->ensureBluetoothAdapter()Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    return-void

    .line 668
    :cond_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    .line 669
    iget-boolean v1, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    if-eqz v1, :cond_1

    .line 670
    iput-boolean v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    .line 671
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    .line 664
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-boolean v1, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    :cond_2
    invoke-virtual {p0, v0}, Lmiui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    goto :goto_0
.end method
