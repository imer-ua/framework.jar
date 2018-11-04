.class public Lmiui/maml/data/FileBinder;
.super Lmiui/maml/data/VariableBinder;
.source "FileBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/FileBinder$Variable;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FileBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "FileBinder"


# instance fields
.field private mCountVar:Lmiui/maml/data/IndexedVariable;

.field protected mDirFormatter:Lmiui/maml/util/TextFormatter;

.field private mFiles:[Ljava/lang/String;

.field private mFilters:[Ljava/lang/String;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/FileBinder$Variable;",
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
    .line 57
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    .line 58
    invoke-direct {p0, p1}, Lmiui/maml/data/FileBinder;->load(Lorg/w3c/dom/Element;)V

    .line 56
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v2, 0x0

    .line 86
    if-nez p1, :cond_0

    .line 87
    const-string/jumbo v2, "FileBinder"

    const-string/jumbo v3, "FileBinder node is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void

    .line 90
    :cond_0
    const-string/jumbo v3, "filter"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "filter":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    iput-object v2, p0, Lmiui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const-string/jumbo v3, "dirExp"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    .line 93
    .local v0, "dirExp":Lmiui/maml/data/Expression;
    new-instance v2, Lmiui/maml/util/TextFormatter;

    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    const-string/jumbo v4, "dir"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V

    iput-object v2, p0, Lmiui/maml/data/FileBinder;->mDirFormatter:Lmiui/maml/util/TextFormatter;

    .line 94
    iget-object v2, p0, Lmiui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    new-instance v2, Lmiui/maml/data/IndexedVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".count"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/FileBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    .line 98
    :cond_1
    invoke-virtual {p0, p1}, Lmiui/maml/data/VariableBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 85
    return-void

    .line 91
    .end local v0    # "dirExp":Lmiui/maml/data/Expression;
    :cond_2
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private updateVariables()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 111
    iget-object v4, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 112
    .local v0, "count":I
    :goto_0
    iget-object v4, p0, Lmiui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "v$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/FileBinder$Variable;

    .line 113
    .local v2, "v":Lmiui/maml/data/FileBinder$Variable;
    iget-object v4, v2, Lmiui/maml/data/FileBinder$Variable;->mIndex:Lmiui/maml/data/Expression;

    if-eqz v4, :cond_0

    .line 115
    iget-object v4, v2, Lmiui/maml/data/FileBinder$Variable;->mIndex:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v1, v6

    .line 116
    .local v1, "index":I
    if-nez v0, :cond_2

    move-object v4, v5

    :goto_2
    invoke-virtual {v2, v4}, Lmiui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 111
    .end local v0    # "count":I
    .end local v1    # "index":I
    .end local v2    # "v":Lmiui/maml/data/FileBinder$Variable;
    .end local v3    # "v$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    array-length v0, v4

    .restart local v0    # "count":I
    goto :goto_0

    .line 116
    .restart local v1    # "index":I
    .restart local v2    # "v":Lmiui/maml/data/FileBinder$Variable;
    .restart local v3    # "v$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v4, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    rem-int v6, v1, v0

    aget-object v4, v4, v6

    goto :goto_2

    .line 110
    .end local v1    # "index":I
    .end local v2    # "v":Lmiui/maml/data/FileBinder$Variable;
    :cond_3
    return-void
.end method


# virtual methods
.method protected addVariable(Lmiui/maml/data/FileBinder$Variable;)V
    .locals 1
    .param p1, "v"    # Lmiui/maml/data/FileBinder$Variable;

    .prologue
    .line 107
    iget-object v0, p0, Lmiui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->init()V

    .line 63
    invoke-virtual {p0}, Lmiui/maml/data/FileBinder;->refresh()V

    .line 61
    return-void
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/FileBinder$Variable;
    .locals 2
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 103
    new-instance v0, Lmiui/maml/data/FileBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/FileBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .locals 1
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lmiui/maml/data/FileBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/FileBinder$Variable;

    move-result-object v0

    return-object v0
.end method

.method public refresh()V
    .locals 6

    .prologue
    .line 73
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->refresh()V

    .line 74
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mDirFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v2}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, "dir":Ljava/io/File;
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    .line 76
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 77
    .local v0, "count":I
    :goto_1
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v4, v0

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 80
    :cond_0
    const-string/jumbo v2, "FileBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "file count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0}, Lmiui/maml/data/FileBinder;->updateVariables()V

    .line 72
    return-void

    .line 75
    .end local v0    # "count":I
    :cond_1
    new-instance v2, Lmiui/maml/util/FilenameExtFilter;

    iget-object v3, p0, Lmiui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lmiui/maml/util/FilenameExtFilter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 76
    :cond_2
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    array-length v0, v2

    .restart local v0    # "count":I
    goto :goto_1
.end method

.method public tick()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->tick()V

    .line 68
    invoke-direct {p0}, Lmiui/maml/data/FileBinder;->updateVariables()V

    .line 66
    return-void
.end method
