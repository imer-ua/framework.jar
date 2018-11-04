.class Lmiui/maml/MamlConfigSettings$ImagePickerItem;
.super Lmiui/maml/MamlConfigSettings$PickerItem;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagePickerItem"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;


# direct methods
.method private constructor <init>(Lmiui/maml/MamlConfigSettings;)V
    .locals 1
    .param p1, "this$0"    # Lmiui/maml/MamlConfigSettings;

    .prologue
    .line 673
    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$ImagePickerItem;->this$0:Lmiui/maml/MamlConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/MamlConfigSettings$PickerItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$PickerItem;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$ImagePickerItem;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/MamlConfigSettings;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$ImagePickerItem;-><init>(Lmiui/maml/MamlConfigSettings;)V

    return-void
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    move-object v1, p1

    .line 686
    check-cast v1, Landroid/net/Uri;

    .line 687
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 688
    :goto_0
    iget-object v2, p0, Lmiui/maml/MamlConfigSettings$ImagePickerItem;->this$0:Lmiui/maml/MamlConfigSettings;

    invoke-static {v2}, Lmiui/maml/MamlConfigSettings;->-get0(Lmiui/maml/MamlConfigSettings;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigFile()Lmiui/maml/util/ConfigFile;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/MamlConfigSettings$Item;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lmiui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0, v0}, Lmiui/maml/MamlConfigSettings$Item;->setValuePreview(Ljava/lang/String;)V

    .line 690
    const/4 v2, 0x1

    return v2

    .line 687
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "suri":Ljava/lang/String;
    goto :goto_0
.end method

.method public onActivityResult(ILandroid/content/Intent;)Z
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 700
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/maml/MamlConfigSettings$ImagePickerItem;->OnValueChange(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick()Z
    .locals 4

    .prologue
    .line 677
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 678
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ImagePickerItem;->this$0:Lmiui/maml/MamlConfigSettings;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    iget v3, p0, Lmiui/maml/MamlConfigSettings$PickerItem;->mRequestCode:I

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 681
    const/4 v1, 0x1

    return v1
.end method

.method public updateValue()V
    .locals 3

    .prologue
    .line 695
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ImagePickerItem;->this$0:Lmiui/maml/MamlConfigSettings;

    invoke-static {v1}, Lmiui/maml/MamlConfigSettings;->-get0(Lmiui/maml/MamlConfigSettings;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigFile()Lmiui/maml/util/ConfigFile;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/MamlConfigSettings$Item;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/util/ConfigFile;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, "uri":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/maml/MamlConfigSettings$Item;->setValuePreview(Ljava/lang/String;)V

    .line 694
    return-void
.end method
