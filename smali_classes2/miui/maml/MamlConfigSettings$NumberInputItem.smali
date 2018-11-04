.class Lmiui/maml/MamlConfigSettings$NumberInputItem;
.super Lmiui/maml/MamlConfigSettings$VariableItem;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberInputItem"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;


# direct methods
.method private constructor <init>(Lmiui/maml/MamlConfigSettings;)V
    .locals 1
    .param p1, "this$0"    # Lmiui/maml/MamlConfigSettings;

    .prologue
    .line 552
    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$NumberInputItem;->this$0:Lmiui/maml/MamlConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/MamlConfigSettings$VariableItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$VariableItem;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$NumberInputItem;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/MamlConfigSettings;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$NumberInputItem;-><init>(Lmiui/maml/MamlConfigSettings;)V

    return-void
.end method

.method private getValueString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 567
    const-wide/16 v0, 0x0

    .line 569
    .local v0, "d":D
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 573
    :goto_0
    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 570
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 578
    const-wide/16 v0, 0x0

    .line 580
    .local v0, "d":D
    :try_start_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "objValue":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 585
    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v3

    .line 587
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lmiui/maml/MamlConfigSettings$NumberInputItem;->this$0:Lmiui/maml/MamlConfigSettings;

    invoke-static {v4}, Lmiui/maml/MamlConfigSettings;->-get0(Lmiui/maml/MamlConfigSettings;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigFile()Lmiui/maml/util/ConfigFile;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/MamlConfigSettings$Item;->mId:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0, v3}, Lmiui/maml/MamlConfigSettings$Item;->setValuePreview(Ljava/lang/String;)V

    .line 590
    const/4 v4, 0x1

    return v4

    .line 581
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 582
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    return v4
.end method

.method protected createPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 556
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onBuild(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 595
    invoke-super {p0, p1}, Lmiui/maml/MamlConfigSettings$VariableItem;->onBuild(Lorg/w3c/dom/Element;)V

    .line 596
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$Item;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 594
    return-void
.end method

.method protected setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 561
    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$NumberInputItem;->getValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 562
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0, p1}, Lmiui/maml/MamlConfigSettings$Item;->setValuePreview(Ljava/lang/String;)V

    .line 560
    return-void
.end method
