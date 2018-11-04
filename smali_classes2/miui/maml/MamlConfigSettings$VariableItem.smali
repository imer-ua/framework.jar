.class abstract Lmiui/maml/MamlConfigSettings$VariableItem;
.super Lmiui/maml/MamlConfigSettings$Item;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "VariableItem"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;


# direct methods
.method private constructor <init>(Lmiui/maml/MamlConfigSettings;)V
    .locals 1
    .param p1, "this$0"    # Lmiui/maml/MamlConfigSettings;

    .prologue
    .line 410
    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$VariableItem;->this$0:Lmiui/maml/MamlConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/MamlConfigSettings$Item;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$Item;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$VariableItem;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/MamlConfigSettings;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$VariableItem;-><init>(Lmiui/maml/MamlConfigSettings;)V

    return-void
.end method


# virtual methods
.method protected abstract setValue(Ljava/lang/String;)V
.end method

.method public updateValue()V
    .locals 3

    .prologue
    .line 415
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$VariableItem;->this$0:Lmiui/maml/MamlConfigSettings;

    invoke-static {v1}, Lmiui/maml/MamlConfigSettings;->-get0(Lmiui/maml/MamlConfigSettings;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigFile()Lmiui/maml/util/ConfigFile;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/MamlConfigSettings$Item;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/util/ConfigFile;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p0, v0}, Lmiui/maml/MamlConfigSettings$VariableItem;->setValue(Ljava/lang/String;)V

    .line 414
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$Item;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmiui/maml/MamlConfigSettings$VariableItem;->setValue(Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$Item;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmiui/maml/MamlConfigSettings$Item;->OnValueChange(Ljava/lang/Object;)Z

    goto :goto_0
.end method
