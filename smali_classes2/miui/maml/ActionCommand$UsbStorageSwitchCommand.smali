.class Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;
.super Lmiui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UsbStorageSwitchCommand"
.end annotation


# instance fields
.field private mConnected:Z

.field private mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static synthetic -get0(Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;)Landroid/os/storage/StorageManager;
    .locals 1

    iget-object v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 2
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 692
    const-string/jumbo v0, "usb_mode"

    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/ActionCommand$NotificationReceiver;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    new-instance v0, Lmiui/maml/ActionCommand$OnOffCommandHelper;

    invoke-direct {v0, p2}, Lmiui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    .line 691
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .prologue
    .line 706
    iget-object v3, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v3, :cond_0

    .line 707
    return-void

    .line 709
    :cond_0
    iget-object v3, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    .line 710
    .local v1, "enabled":Z
    const/4 v2, 0x0

    .line 711
    .local v2, "on":Z
    iget-object v3, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v3, v3, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v3, :cond_2

    .line 712
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 720
    .end local v2    # "on":Z
    :goto_0
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lmiui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    .line 721
    move v0, v2

    .line 722
    .local v0, "_on":Z
    new-instance v3, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;

    invoke-direct {v3, p0, v0}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;-><init>(Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;Z)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 705
    return-void

    .line 712
    .end local v0    # "_on":Z
    .restart local v2    # "on":Z
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 714
    :cond_2
    iget-object v3, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v3, v3, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-ne v3, v1, :cond_3

    .line 715
    return-void

    .line 716
    :cond_3
    iget-object v3, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v2, v3, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    .local v2, "on":Z
    goto :goto_0
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "o"    # Ljava/lang/Object;

    .prologue
    .line 698
    if-eqz p2, :cond_0

    .line 699
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "connected"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mConnected:Z

    .line 701
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lmiui/maml/ActionCommand$NotificationReceiver;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 697
    return-void
.end method

.method protected update()V
    .locals 3

    .prologue
    .line 737
    iget-object v1, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 738
    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 739
    const-string/jumbo v2, "storage"

    .line 738
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 740
    iget-object v1, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 741
    const-string/jumbo v1, "ActionCommand"

    const-string/jumbo v2, "Failed to get StorageManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    return-void

    .line 746
    :cond_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v0

    .line 747
    .local v0, "enabled":Z
    iget-boolean v1, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mConnected:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p0, v1}, Lmiui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    .line 736
    return-void

    .line 747
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
