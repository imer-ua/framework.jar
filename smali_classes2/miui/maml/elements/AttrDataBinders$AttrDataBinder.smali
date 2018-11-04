.class public Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;
.super Ljava/lang/Object;
.source "AttrDataBinders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AttrDataBinders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttrDataBinder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;,
        Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$BitmapBinder;,
        Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$NameBinder;,
        Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;,
        Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcBinder;,
        Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;,
        Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$TextBinder;
    }
.end annotation


# instance fields
.field protected mAttr:Ljava/lang/String;

.field private mBinder:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

.field protected mData:Ljava/lang/String;

.field protected mTarget:Ljava/lang/String;

.field protected mVars:Lmiui/maml/data/ContextVariables;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/ContextVariables;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "v"    # Lmiui/maml/data/ContextVariables;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const-string/jumbo v0, "target"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mTarget:Ljava/lang/String;

    .line 113
    const-string/jumbo v0, "attr"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mAttr:Ljava/lang/String;

    .line 114
    const-string/jumbo v0, "data"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mData:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mVars:Lmiui/maml/data/ContextVariables;

    .line 116
    iget-object v0, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mAttr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->createBinder(Ljava/lang/String;)Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mBinder:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

    .line 117
    iget-object v0, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mTarget:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mAttr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mBinder:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

    if-nez v0, :cond_1

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid AttrDataBinder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    return-void
.end method

.method private createBinder(Ljava/lang/String;)Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;
    .locals 2
    .param p1, "attr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    return-object v1

    .line 126
    :cond_0
    const-string/jumbo v0, "text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    new-instance v0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$TextBinder;

    invoke-direct {v0, p0, v1}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$TextBinder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$TextBinder;)V

    return-object v0

    .line 128
    :cond_1
    const-string/jumbo v0, "paras"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "params"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    :cond_2
    new-instance v0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;

    invoke-direct {v0, p0, v1}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;)V

    return-object v0

    .line 130
    :cond_3
    const-string/jumbo v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    new-instance v0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$NameBinder;

    invoke-direct {v0, p0, v1}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$NameBinder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$NameBinder;)V

    return-object v0

    .line 132
    :cond_4
    const-string/jumbo v0, "bitmap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 133
    new-instance v0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$BitmapBinder;

    invoke-direct {v0, p0, v1}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$BitmapBinder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$BitmapBinder;)V

    return-object v0

    .line 134
    :cond_5
    const-string/jumbo v0, "src"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 135
    new-instance v0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcBinder;

    invoke-direct {v0, p0, v1}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcBinder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcBinder;)V

    return-object v0

    .line 136
    :cond_6
    const-string/jumbo v0, "srcid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 137
    new-instance v0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;

    invoke-direct {v0, p0, v1}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;)V

    return-object v0

    .line 139
    :cond_7
    return-object v1
.end method


# virtual methods
.method public bind(Lmiui/maml/elements/ElementGroup;)Z
    .locals 3
    .param p1, "g"    # Lmiui/maml/elements/ElementGroup;

    .prologue
    .line 145
    :try_start_0
    iget-object v2, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mTarget:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lmiui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    .line 146
    .local v1, "se":Lmiui/maml/elements/ScreenElement;
    if-eqz v1, :cond_0

    .line 147
    iget-object v2, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mBinder:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

    invoke-virtual {v2, v1}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;->bind(Lmiui/maml/elements/ScreenElement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    const/4 v2, 0x1

    return v2

    .line 150
    .end local v1    # "se":Lmiui/maml/elements/ScreenElement;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
