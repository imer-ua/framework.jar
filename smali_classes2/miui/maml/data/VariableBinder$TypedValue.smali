.class public Lmiui/maml/data/VariableBinder$TypedValue;
.super Ljava/lang/Object;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/VariableBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypedValue"
.end annotation


# static fields
.field public static final BITMAP:I = 0x7

.field public static final DOUBLE:I = 0x6

.field public static final FLOAT:I = 0x5

.field public static final INT:I = 0x3

.field public static final LONG:I = 0x4

.field public static final NUM_ARR:I = 0x8

.field public static final STRING:I = 0x2

.field public static final STR_ARR:I = 0x9

.field public static final TYPE_BASE:I = 0x3e8


# instance fields
.field public mName:Ljava/lang/String;

.field public mType:I

.field public mTypeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder$TypedValue;->initInner(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "node is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    const-string/jumbo v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmiui/maml/data/VariableBinder$TypedValue;->initInner(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private initInner(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lmiui/maml/data/VariableBinder$TypedValue;->mName:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lmiui/maml/data/VariableBinder$TypedValue;->mTypeStr:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$TypedValue;->mTypeStr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmiui/maml/data/VariableBinder$TypedValue;->parseType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/maml/data/VariableBinder$TypedValue;->mType:I

    .line 130
    return-void
.end method


# virtual methods
.method public isArray()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 163
    iget v1, p0, Lmiui/maml/data/VariableBinder$TypedValue;->mType:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget v1, p0, Lmiui/maml/data/VariableBinder$TypedValue;->mType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumber()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 159
    iget v1, p0, Lmiui/maml/data/VariableBinder$TypedValue;->mType:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    iget v1, p0, Lmiui/maml/data/VariableBinder$TypedValue;->mType:I

    const/4 v2, 0x6

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected parseType(Ljava/lang/String;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x6

    .line 137
    const-string/jumbo v0, "string"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x2

    return v0

    .line 139
    :cond_0
    const-string/jumbo v0, "double"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "number"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    :cond_1
    return v1

    .line 141
    :cond_2
    const-string/jumbo v0, "float"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    const/4 v0, 0x5

    return v0

    .line 143
    :cond_3
    const-string/jumbo v0, "int"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "integer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    :cond_4
    const/4 v0, 0x3

    return v0

    .line 145
    :cond_5
    const-string/jumbo v0, "long"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 146
    const/4 v0, 0x4

    return v0

    .line 147
    :cond_6
    const-string/jumbo v0, "bitmap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 148
    const/4 v0, 0x7

    return v0

    .line 149
    :cond_7
    const-string/jumbo v0, "number[]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 150
    const/16 v0, 0x8

    return v0

    .line 151
    :cond_8
    const-string/jumbo v0, "string[]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 152
    const/16 v0, 0x9

    return v0

    .line 154
    :cond_9
    return v1
.end method
