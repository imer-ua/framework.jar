.class Lmiui/maml/MamlConfigSettings$1;
.super Ljava/lang/Object;
.source "MamlConfigSettings.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/MamlConfigSettings;->createPreferenceScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;

.field final synthetic val$rootScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method constructor <init>(Lmiui/maml/MamlConfigSettings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/MamlConfigSettings;
    .param p2, "val$rootScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 291
    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$1;->this$0:Lmiui/maml/MamlConfigSettings;

    iput-object p2, p0, Lmiui/maml/MamlConfigSettings$1;->val$rootScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 294
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$1;->this$0:Lmiui/maml/MamlConfigSettings;

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$1;->val$rootScreen:Landroid/preference/PreferenceScreen;

    invoke-static {v0, v1, p1}, Lmiui/maml/MamlConfigSettings;->-wrap2(Lmiui/maml/MamlConfigSettings;Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V

    .line 293
    return-void
.end method
