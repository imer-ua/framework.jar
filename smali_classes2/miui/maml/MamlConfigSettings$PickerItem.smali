.class abstract Lmiui/maml/MamlConfigSettings$PickerItem;
.super Lmiui/maml/MamlConfigSettings$Item;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PickerItem"
.end annotation


# instance fields
.field protected mRequestCode:I

.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;


# direct methods
.method private constructor <init>(Lmiui/maml/MamlConfigSettings;)V
    .locals 1
    .param p1, "this$0"    # Lmiui/maml/MamlConfigSettings;

    .prologue
    .line 600
    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$PickerItem;->this$0:Lmiui/maml/MamlConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/MamlConfigSettings$Item;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$Item;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$PickerItem;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/MamlConfigSettings;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$PickerItem;-><init>(Lmiui/maml/MamlConfigSettings;)V

    return-void
.end method


# virtual methods
.method protected createPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 605
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract onActivityResult(ILandroid/content/Intent;)Z
.end method

.method protected onBuild(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 610
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$PickerItem;->this$0:Lmiui/maml/MamlConfigSettings;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 611
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$PickerItem;->this$0:Lmiui/maml/MamlConfigSettings;

    invoke-static {v0}, Lmiui/maml/MamlConfigSettings;->-wrap0(Lmiui/maml/MamlConfigSettings;)I

    move-result v0

    iput v0, p0, Lmiui/maml/MamlConfigSettings$PickerItem;->mRequestCode:I

    .line 612
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$PickerItem;->this$0:Lmiui/maml/MamlConfigSettings;

    iget v1, p0, Lmiui/maml/MamlConfigSettings$PickerItem;->mRequestCode:I

    invoke-static {v0, v1, p0}, Lmiui/maml/MamlConfigSettings;->-wrap3(Lmiui/maml/MamlConfigSettings;ILjava/lang/Object;)V

    .line 609
    return-void
.end method
