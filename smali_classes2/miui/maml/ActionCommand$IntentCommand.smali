.class Lmiui/maml/ActionCommand$IntentCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$IntentCommand$IntentType;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-ActionCommand$IntentCommand$IntentTypeSwitchesValues:[I = null

.field private static final TAG_FALLBACK:Ljava/lang/String; = "Fallback"

.field public static final TAG_NAME:Ljava/lang/String; = "IntentCommand"


# instance fields
.field private mActivityOptionsBundle:Lmiui/maml/ActionCommand$ObjVar;

.field private mFallbackTrigger:Lmiui/maml/CommandTrigger;

.field private mFlags:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentInfo:Lmiui/maml/util/IntentInfo;

.field private mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

.field private mIntentVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method private static synthetic -getmiui-maml-ActionCommand$IntentCommand$IntentTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/ActionCommand$IntentCommand;->-miui-maml-ActionCommand$IntentCommand$IntentTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/ActionCommand$IntentCommand;->-miui-maml-ActionCommand$IntentCommand$IntentTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->values()[Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Broadcast:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Service:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Var:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lmiui/maml/ActionCommand$IntentCommand;->-miui-maml-ActionCommand$IntentCommand$IntentTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 9
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v5, 0x0

    .line 903
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 890
    sget-object v6, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v6, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    .line 904
    new-instance v6, Lmiui/maml/util/IntentInfo;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Lmiui/maml/util/IntentInfo;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    iput-object v6, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    .line 905
    const-string/jumbo v6, "broadcast"

    invoke-interface {p2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 906
    .local v2, "isBroadcast":Z
    const-string/jumbo v6, "type"

    invoke-interface {p2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 907
    .local v1, "intentType":Ljava/lang/String;
    if-nez v2, :cond_0

    const-string/jumbo v6, "broadcast"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 908
    :cond_0
    sget-object v6, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Broadcast:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v6, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    .line 920
    :cond_1
    :goto_0
    const-string/jumbo v6, "flags"

    const/4 v7, -0x1

    invoke-static {p2, v6, v7}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFlags:I

    .line 922
    const-string/jumbo v6, "activityOption"

    invoke-interface {p2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 923
    .local v0, "ao":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_1
    iput-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lmiui/maml/ActionCommand$ObjVar;

    .line 926
    const-string/jumbo v5, "Fallback"

    invoke-static {p2, v5}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 927
    .local v4, "node":Lorg/w3c/dom/Element;
    if-eqz v4, :cond_2

    .line 928
    new-instance v5, Lmiui/maml/CommandTrigger;

    invoke-direct {v5, v4, p1}, Lmiui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    .line 902
    :cond_2
    return-void

    .line 909
    .end local v0    # "ao":Ljava/lang/String;
    .end local v4    # "node":Lorg/w3c/dom/Element;
    :cond_3
    const-string/jumbo v6, "service"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 910
    sget-object v6, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Service:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v6, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    goto :goto_0

    .line 911
    :cond_4
    const-string/jumbo v6, "activity"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 912
    sget-object v6, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v6, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    goto :goto_0

    .line 913
    :cond_5
    const-string/jumbo v6, "var"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 914
    sget-object v6, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Var:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v6, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    .line 915
    const-string/jumbo v6, "intentVar"

    invoke-interface {p2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 916
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 917
    new-instance v6, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v3, v7, v8}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v6, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentVar:Lmiui/maml/data/IndexedVariable;

    goto :goto_0

    .line 923
    .end local v3    # "name":Ljava/lang/String;
    .restart local v0    # "ao":Ljava/lang/String;
    :cond_6
    new-instance v5, Lmiui/maml/ActionCommand$ObjVar;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lmiui/maml/ActionCommand$ObjVar;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    goto :goto_1
.end method


# virtual methods
.method protected doPerform()V
    .locals 7

    .prologue
    .line 981
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 982
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    iget-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lmiui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    .line 984
    :try_start_0
    invoke-static {}, Lmiui/maml/ActionCommand$IntentCommand;->-getmiui-maml-ActionCommand$IntentCommand$IntentTypeSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 986
    :pswitch_0
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lmiui/maml/ActionCommand$ObjVar;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lmiui/maml/ActionCommand$ObjVar;

    invoke-virtual {v4}, Lmiui/maml/ActionCommand$ObjVar;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 987
    :goto_1
    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    const/high16 v6, 0x10000

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 988
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 989
    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1018
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v1

    .line 1019
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v4, :cond_5

    .line 1020
    const-string/jumbo v4, "ActionCommand"

    const-string/jumbo v5, "fail to send Intent, fallback..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v4}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_0

    .line 986
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    .local v0, "bd":Landroid/os/Bundle;
    goto :goto_1

    .line 991
    .end local v0    # "bd":Landroid/os/Bundle;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    const/4 v3, 0x0

    .line 992
    .local v3, "packageName":Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 993
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 1002
    .local v3, "packageName":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-static {v4, v3, v5, v0}, Lmiui/maml/util/PreloadAppPolicyHelper;->installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 995
    .local v3, "packageName":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 994
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 996
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .local v3, "packageName":Ljava/lang/String;
    goto :goto_2

    .line 999
    .local v3, "packageName":Ljava/lang/String;
    :cond_4
    return-void

    .line 1007
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1010
    :pswitch_2
    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 1013
    :pswitch_3
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v4, :cond_0

    .line 1014
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentVar:Lmiui/maml/data/IndexedVariable;

    iget-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1023
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_5
    const-string/jumbo v4, "ActionCommand"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 984
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->finish()V

    .line 959
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 934
    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v2}, Lmiui/maml/util/IntentInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->findTask(Ljava/lang/String;)Lmiui/maml/util/Task;

    move-result-object v0

    .line 936
    .local v0, "configTask":Lmiui/maml/util/Task;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 940
    :cond_0
    :goto_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v1}, Lmiui/maml/util/IntentInfo;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/util/Utils;->isProtectedIntent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 941
    return-void

    .line 937
    :cond_1
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v1, v0}, Lmiui/maml/util/IntentInfo;->set(Lmiui/maml/util/Task;)V

    goto :goto_0

    .line 944
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 945
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lmiui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    .line 947
    iget v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFlags:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 948
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFlags:I

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 953
    :cond_3
    :goto_1
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v1, :cond_4

    .line 954
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->init()V

    .line 933
    :cond_4
    return-void

    .line 949
    :cond_5
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    sget-object v2, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    if-ne v1, v2, :cond_3

    .line 950
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->pause()V

    .line 966
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->resume()V

    .line 973
    :cond_0
    return-void
.end method
