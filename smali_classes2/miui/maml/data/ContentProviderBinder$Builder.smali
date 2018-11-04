.class public Lmiui/maml/data/ContentProviderBinder$Builder;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBinder:Lmiui/maml/data/ContentProviderBinder;


# direct methods
.method protected constructor <init>(Lmiui/maml/data/ContentProviderBinder;)V
    .locals 0
    .param p1, "binder"    # Lmiui/maml/data/ContentProviderBinder;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    .line 100
    return-void
.end method


# virtual methods
.method public addVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILmiui/maml/data/Variables;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "column"    # Ljava/lang/String;
    .param p4, "row"    # I
    .param p5, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 142
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$Variable;

    invoke-direct {v0, p1, p2, p5}, Lmiui/maml/data/ContentProviderBinder$Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    .line 143
    .local v0, "v":Lmiui/maml/data/ContentProviderBinder$Variable;
    iput-object p3, v0, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 144
    iput p4, v0, Lmiui/maml/data/ContentProviderBinder$Variable;->mRow:I

    .line 145
    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    invoke-virtual {v1, v0}, Lmiui/maml/data/VariableBinder;->addVariable(Lmiui/maml/data/VariableBinder$Variable;)V

    .line 141
    return-void
.end method

.method public setArgs([Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    .line 126
    return-object p0
.end method

.method public setColumns([Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 1
    .param p1, "columns"    # [Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public setCountName(Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 1
    .param p1, "countName"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    invoke-virtual {v0}, Lmiui/maml/data/ContentProviderBinder;->createCountVar()V

    .line 137
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    .line 106
    return-object p0
.end method

.method public setOrder(Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 1
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public setWhere(Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 3
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    new-instance v1, Lmiui/maml/util/TextFormatter;

    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    invoke-virtual {v2}, Lmiui/maml/data/VariableBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    iput-object v1, v0, Lmiui/maml/data/ContentProviderBinder;->mWhereFormatter:Lmiui/maml/util/TextFormatter;

    .line 111
    return-object p0
.end method

.method public setWhere(Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 3
    .param p1, "whereFormat"    # Ljava/lang/String;
    .param p2, "whereParas"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    new-instance v1, Lmiui/maml/util/TextFormatter;

    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    invoke-virtual {v2}, Lmiui/maml/data/VariableBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lmiui/maml/data/ContentProviderBinder;->mWhereFormatter:Lmiui/maml/util/TextFormatter;

    .line 116
    return-object p0
.end method
