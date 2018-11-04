.class Lmiui/maml/MamlConfigSettings$StringInputItem;
.super Lmiui/maml/MamlConfigSettings$VariableItem;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StringInputItem"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;


# direct methods
.method private constructor <init>(Lmiui/maml/MamlConfigSettings;)V
    .locals 1
    .param p1, "this$0"    # Lmiui/maml/MamlConfigSettings;

    .prologue
    .line 453
    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$StringInputItem;->this$0:Lmiui/maml/MamlConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/MamlConfigSettings$VariableItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$VariableItem;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$StringInputItem;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/MamlConfigSettings;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$StringInputItem;-><init>(Lmiui/maml/MamlConfigSettings;)V

    return-void
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    move-object v0, p1

    .line 468
    check-cast v0, Ljava/lang/String;

    .line 469
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$StringInputItem;->this$0:Lmiui/maml/MamlConfigSettings;

    invoke-static {v1}, Lmiui/maml/MamlConfigSettings;->-get0(Lmiui/maml/MamlConfigSettings;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigFile()Lmiui/maml/util/ConfigFile;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/MamlConfigSettings$Item;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lmiui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0, v0}, Lmiui/maml/MamlConfigSettings$Item;->setValuePreview(Ljava/lang/String;)V

    .line 471
    const/4 v1, 0x1

    return v1
.end method

.method protected createPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 457
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onBuild(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 476
    invoke-super {p0, p1}, Lmiui/maml/MamlConfigSettings$VariableItem;->onBuild(Lorg/w3c/dom/Element;)V

    .line 477
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$Item;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 475
    return-void
.end method

.method protected setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 462
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0, p1}, Lmiui/maml/MamlConfigSettings$Item;->setValuePreview(Ljava/lang/String;)V

    .line 461
    return-void
.end method
