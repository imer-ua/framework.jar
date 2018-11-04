.class public Lmiui/maml/data/VariableBinderManager;
.super Ljava/lang/Object;
.source "VariableBinderManager.java"

# interfaces
.implements Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VariableBinderManager"

.field public static final TAG_NAME:Ljava/lang/String; = "VariableBinders"


# instance fields
.field private mRoot:Lmiui/maml/ScreenElementRoot;

.field private mVariableBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/VariableBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 32
    iput-object p2, p0, Lmiui/maml/data/VariableBinderManager;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 33
    if-eqz p1, :cond_0

    .line 34
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinderManager;->load(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 31
    :cond_0
    return-void
.end method

.method private static createBinder(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/VariableBinderManager;)Lmiui/maml/data/VariableBinder;
    .locals 3
    .param p0, "ele"    # Lorg/w3c/dom/Element;
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p2, "m"    # Lmiui/maml/data/VariableBinderManager;

    .prologue
    .line 92
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "tag":Ljava/lang/String;
    const/4 v0, 0x0

    .line 94
    .local v0, "ret":Lmiui/maml/data/VariableBinder;
    const-string/jumbo v2, "ContentProviderBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    new-instance v0, Lmiui/maml/data/ContentProviderBinder;

    .end local v0    # "ret":Lmiui/maml/data/VariableBinder;
    invoke-direct {v0, p0, p1}, Lmiui/maml/data/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 109
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0, p2}, Lmiui/maml/data/VariableBinder;->setQueryCompleteListener(Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 112
    :cond_1
    return-object v0

    .line 96
    .restart local v0    # "ret":Lmiui/maml/data/VariableBinder;
    :cond_2
    const-string/jumbo v2, "WebServiceBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    new-instance v0, Lmiui/maml/data/WebServiceBinder;

    .end local v0    # "ret":Lmiui/maml/data/VariableBinder;
    invoke-direct {v0, p0, p1}, Lmiui/maml/data/WebServiceBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .local v0, "ret":Lmiui/maml/data/VariableBinder;
    goto :goto_0

    .line 98
    .local v0, "ret":Lmiui/maml/data/VariableBinder;
    :cond_3
    const-string/jumbo v2, "SensorBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 99
    new-instance v0, Lmiui/maml/data/SensorBinder;

    .end local v0    # "ret":Lmiui/maml/data/VariableBinder;
    invoke-direct {v0, p0, p1}, Lmiui/maml/data/SensorBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .local v0, "ret":Lmiui/maml/data/VariableBinder;
    goto :goto_0

    .line 100
    .local v0, "ret":Lmiui/maml/data/VariableBinder;
    :cond_4
    const-string/jumbo v2, "LocationBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 101
    new-instance v0, Lmiui/maml/data/LocationBinder;

    .end local v0    # "ret":Lmiui/maml/data/VariableBinder;
    invoke-direct {v0, p0, p1}, Lmiui/maml/data/LocationBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .local v0, "ret":Lmiui/maml/data/VariableBinder;
    goto :goto_0

    .line 102
    .local v0, "ret":Lmiui/maml/data/VariableBinder;
    :cond_5
    const-string/jumbo v2, "BroadcastBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 103
    new-instance v0, Lmiui/maml/data/BroadcastBinder;

    .end local v0    # "ret":Lmiui/maml/data/VariableBinder;
    invoke-direct {v0, p0, p1}, Lmiui/maml/data/BroadcastBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .local v0, "ret":Lmiui/maml/data/VariableBinder;
    goto :goto_0

    .line 104
    .local v0, "ret":Lmiui/maml/data/VariableBinder;
    :cond_6
    const-string/jumbo v2, "FileBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 105
    new-instance v0, Lmiui/maml/data/FileBinder;

    .end local v0    # "ret":Lmiui/maml/data/VariableBinder;
    invoke-direct {v0, p0, p1}, Lmiui/maml/data/FileBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .local v0, "ret":Lmiui/maml/data/VariableBinder;
    goto :goto_0

    .line 106
    .local v0, "ret":Lmiui/maml/data/VariableBinder;
    :cond_7
    const-string/jumbo v2, "SettingsBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    new-instance v0, Lmiui/maml/data/SettingsBinder;

    .end local v0    # "ret":Lmiui/maml/data/VariableBinder;
    invoke-direct {v0, p0, p1}, Lmiui/maml/data/SettingsBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .local v0, "ret":Lmiui/maml/data/VariableBinder;
    goto :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    const-string/jumbo v0, "VariableBinderManager"

    const-string/jumbo v1, "node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "node is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinderManager;->loadBinders(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 81
    return-void
.end method

.method private loadBinders(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 6
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 116
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 117
    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 118
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 119
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 120
    .local v2, "item":Lorg/w3c/dom/Element;
    invoke-static {v2, p2, p0}, Lmiui/maml/data/VariableBinderManager;->createBinder(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/VariableBinderManager;)Lmiui/maml/data/VariableBinder;

    move-result-object v3

    .line 121
    .local v3, "vb":Lmiui/maml/data/VariableBinder;
    if-eqz v3, :cond_0

    .line 122
    iget-object v4, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v2    # "item":Lorg/w3c/dom/Element;
    .end local v3    # "vb":Lmiui/maml/data/VariableBinder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_1
    return-void
.end method


# virtual methods
.method public final acceptVisitor(Lmiui/maml/data/VariableBinderVisitor;)V
    .locals 3
    .param p1, "v"    # Lmiui/maml/data/VariableBinderVisitor;

    .prologue
    .line 76
    iget-object v2, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "binder$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableBinder;

    .line 77
    .local v0, "binder":Lmiui/maml/data/VariableBinder;
    invoke-virtual {v0, p1}, Lmiui/maml/data/VariableBinder;->accept(Lmiui/maml/data/VariableBinderVisitor;)V

    goto :goto_0

    .line 75
    .end local v0    # "binder":Lmiui/maml/data/VariableBinder;
    :cond_0
    return-void
.end method

.method public addContentProviderBinder(Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v0, Lmiui/maml/util/TextFormatter;

    iget-object v1, p0, Lmiui/maml/data/VariableBinderManager;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/maml/data/VariableBinderManager;->addContentProviderBinder(Lmiui/maml/util/TextFormatter;)Lmiui/maml/data/ContentProviderBinder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addContentProviderBinder(Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 2
    .param p1, "uriFormat"    # Ljava/lang/String;
    .param p2, "uriParas"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Lmiui/maml/util/TextFormatter;

    iget-object v1, p0, Lmiui/maml/data/VariableBinderManager;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/maml/data/VariableBinderManager;->addContentProviderBinder(Lmiui/maml/util/TextFormatter;)Lmiui/maml/data/ContentProviderBinder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addContentProviderBinder(Lmiui/maml/util/TextFormatter;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 2
    .param p1, "uri"    # Lmiui/maml/util/TextFormatter;

    .prologue
    .line 137
    new-instance v0, Lmiui/maml/data/ContentProviderBinder;

    iget-object v1, p0, Lmiui/maml/data/VariableBinderManager;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v0, v1}, Lmiui/maml/data/ContentProviderBinder;-><init>(Lmiui/maml/ScreenElementRoot;)V

    .line 138
    .local v0, "binder":Lmiui/maml/data/ContentProviderBinder;
    invoke-virtual {v0, p0}, Lmiui/maml/data/VariableBinder;->setQueryCompleteListener(Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 139
    iput-object p1, v0, Lmiui/maml/data/ContentProviderBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    .line 140
    iget-object v1, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v1, Lmiui/maml/data/ContentProviderBinder$Builder;

    invoke-direct {v1, v0}, Lmiui/maml/data/ContentProviderBinder$Builder;-><init>(Lmiui/maml/data/ContentProviderBinder;)V

    return-object v1
.end method

.method public findBinder(Ljava/lang/String;)Lmiui/maml/data/VariableBinder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v2, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "binder$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableBinder;

    .line 69
    .local v0, "binder":Lmiui/maml/data/VariableBinder;
    invoke-virtual {v0}, Lmiui/maml/data/VariableBinder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    return-object v0

    .line 72
    .end local v0    # "binder":Lmiui/maml/data/VariableBinder;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 50
    iget-object v2, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "binder$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableBinder;

    .line 51
    .local v0, "binder":Lmiui/maml/data/VariableBinder;
    invoke-virtual {v0}, Lmiui/maml/data/VariableBinder;->finish()V

    goto :goto_0

    .line 49
    .end local v0    # "binder":Lmiui/maml/data/VariableBinder;
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 38
    iget-object v2, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "binder$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableBinder;

    .line 39
    .local v0, "binder":Lmiui/maml/data/VariableBinder;
    invoke-virtual {v0}, Lmiui/maml/data/VariableBinder;->init()V

    goto :goto_0

    .line 37
    .end local v0    # "binder":Lmiui/maml/data/VariableBinder;
    :cond_0
    return-void
.end method

.method public onQueryCompleted(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    return-void

    .line 149
    :cond_0
    iget-object v3, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "binder$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableBinder;

    .line 150
    .local v0, "binder":Lmiui/maml/data/VariableBinder;
    invoke-virtual {v0}, Lmiui/maml/data/VariableBinder;->getDependency()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "dependency":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    invoke-virtual {v0}, Lmiui/maml/data/VariableBinder;->startQuery()V

    goto :goto_0

    .line 145
    .end local v0    # "binder":Lmiui/maml/data/VariableBinder;
    .end local v2    # "dependency":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 56
    iget-object v2, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "binder$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableBinder;

    .line 57
    .local v0, "binder":Lmiui/maml/data/VariableBinder;
    invoke-virtual {v0}, Lmiui/maml/data/VariableBinder;->pause()V

    goto :goto_0

    .line 55
    .end local v0    # "binder":Lmiui/maml/data/VariableBinder;
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 62
    iget-object v2, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "binder$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableBinder;

    .line 63
    .local v0, "binder":Lmiui/maml/data/VariableBinder;
    invoke-virtual {v0}, Lmiui/maml/data/VariableBinder;->resume()V

    goto :goto_0

    .line 61
    .end local v0    # "binder":Lmiui/maml/data/VariableBinder;
    :cond_0
    return-void
.end method

.method public tick()V
    .locals 3

    .prologue
    .line 44
    iget-object v2, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "binder$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableBinder;

    .line 45
    .local v0, "binder":Lmiui/maml/data/VariableBinder;
    invoke-virtual {v0}, Lmiui/maml/data/VariableBinder;->tick()V

    goto :goto_0

    .line 43
    .end local v0    # "binder":Lmiui/maml/data/VariableBinder;
    :cond_0
    return-void
.end method
