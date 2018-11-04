.class Lmiui/maml/MamlConfigSettings$NumberChoiceItem;
.super Lmiui/maml/MamlConfigSettings$ValueChoiceItem;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberChoiceItem"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;


# direct methods
.method private constructor <init>(Lmiui/maml/MamlConfigSettings;)V
    .locals 1
    .param p1, "this$0"    # Lmiui/maml/MamlConfigSettings;

    .prologue
    .line 542
    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$NumberChoiceItem;->this$0:Lmiui/maml/MamlConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$ValueChoiceItem;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$NumberChoiceItem;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/MamlConfigSettings;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$NumberChoiceItem;-><init>(Lmiui/maml/MamlConfigSettings;)V

    return-void
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 546
    invoke-super {p0, p1}, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;->OnValueChange(Ljava/lang/Object;)Z

    .line 547
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$NumberChoiceItem;->this$0:Lmiui/maml/MamlConfigSettings;

    invoke-static {v0}, Lmiui/maml/MamlConfigSettings;->-get0(Lmiui/maml/MamlConfigSettings;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigFile()Lmiui/maml/util/ConfigFile;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$Item;->mId:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "objValue":Ljava/lang/Object;
    invoke-virtual {v0, v1, p1}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const/4 v0, 0x1

    return v0
.end method
