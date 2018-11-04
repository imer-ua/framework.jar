.class Lmiui/maml/ActionCommand$VariableAssignmentCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableAssignmentCommand"
.end annotation


# static fields
.field private static final synthetic -miui-maml-data-VariableTypeSwitchesValues:[I = null

.field public static final TAG_NAME:Ljava/lang/String; = "VariableCommand"


# instance fields
.field private mArrayValues:[Lmiui/maml/data/Expression;

.field private mExpression:Lmiui/maml/data/Expression;

.field private mIndexExpression:Lmiui/maml/data/Expression;

.field private mName:Ljava/lang/String;

.field private mPersist:Z

.field private mRequestUpdate:Z

.field private mType:Lmiui/maml/data/VariableType;

.field private mVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method private static synthetic -getmiui-maml-data-VariableTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->-miui-maml-data-VariableTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->-miui-maml-data-VariableTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/maml/data/VariableType;->values()[Lmiui/maml/data/VariableType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/maml/data/VariableType;->BOOLEAN_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/data/VariableType;->BYTE_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/maml/data/VariableType;->CHAR_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_2
    :try_start_3
    sget-object v1, Lmiui/maml/data/VariableType;->DOUBLE_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    :goto_3
    :try_start_4
    sget-object v1, Lmiui/maml/data/VariableType;->FLOAT_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_4
    :try_start_5
    sget-object v1, Lmiui/maml/data/VariableType;->INT_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_5
    :try_start_6
    sget-object v1, Lmiui/maml/data/VariableType;->INVALID:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    :goto_6
    :try_start_7
    sget-object v1, Lmiui/maml/data/VariableType;->LONG_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    sget-object v1, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    :goto_8
    :try_start_9
    sget-object v1, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_9
    :try_start_a
    sget-object v1, Lmiui/maml/data/VariableType;->OBJ:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    :goto_a
    :try_start_b
    sget-object v1, Lmiui/maml/data/VariableType;->OBJ_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    :goto_b
    :try_start_c
    sget-object v1, Lmiui/maml/data/VariableType;->SHORT_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_c
    :try_start_d
    sget-object v1, Lmiui/maml/data/VariableType;->STR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_d
    :try_start_e
    sget-object v1, Lmiui/maml/data/VariableType;->STR_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_e
    sput-object v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->-miui-maml-data-VariableTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_e

    :catch_1
    move-exception v1

    goto :goto_d

    :catch_2
    move-exception v1

    goto :goto_c

    :catch_3
    move-exception v1

    goto :goto_b

    :catch_4
    move-exception v1

    goto :goto_a

    :catch_5
    move-exception v1

    goto :goto_9

    :catch_6
    move-exception v1

    goto :goto_8

    :catch_7
    move-exception v1

    goto :goto_7

    :catch_8
    move-exception v1

    goto :goto_6

    :catch_9
    move-exception v1

    goto :goto_5

    :catch_a
    move-exception v1

    goto :goto_4

    :catch_b
    move-exception v1

    goto/16 :goto_3

    :catch_c
    move-exception v1

    goto/16 :goto_2

    :catch_d
    move-exception v1

    goto/16 :goto_1

    :catch_e
    move-exception v1

    goto/16 :goto_0
.end method

.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 5
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 764
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 765
    const-string/jumbo v1, "name"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 766
    const-string/jumbo v1, "persist"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    .line 767
    const-string/jumbo v1, "requestUpdate"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mRequestUpdate:Z

    .line 769
    const-string/jumbo v1, "type"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lmiui/maml/data/VariableType;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    .line 770
    iget-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 771
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    iget-object v2, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v4}, Lmiui/maml/data/VariableType;->isNumber()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    .line 775
    :goto_0
    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    .line 776
    .local v0, "variables":Lmiui/maml/data/Variables;
    const-string/jumbo v1, "expression"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    .line 778
    iget-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 779
    const-string/jumbo v1, "index"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    .line 780
    const-string/jumbo v1, "values"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    .line 763
    :cond_0
    return-void

    .line 773
    .end local v0    # "variables":Lmiui/maml/data/Variables;
    :cond_1
    const-string/jumbo v1, "ActionCommand"

    const-string/jumbo v2, "empty name in VariableAssignmentCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected doPerform()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v11, 0x0

    .line 786
    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v5

    .line 787
    .local v5, "root":Lmiui/maml/ScreenElementRoot;
    invoke-static {}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->-getmiui-maml-data-VariableTypeSwitchesValues()[I

    move-result-object v10

    iget-object v12, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v10, v10, v12

    packed-switch v10, :pswitch_data_0

    .line 827
    const/4 v4, 0x0

    .line 828
    .local v4, "obj":Ljava/lang/Object;
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v10}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    .line 829
    :goto_0
    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v7

    .line 830
    .local v7, "vars":Lmiui/maml/data/Variables;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v7, v3}, Lmiui/maml/data/Variables;->existsObj(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 831
    invoke-virtual {v7, v3}, Lmiui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 833
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    if-nez v10, :cond_8

    .line 834
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v10, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 841
    .end local v7    # "vars":Lmiui/maml/data/Variables;
    :cond_1
    :goto_1
    iget-boolean v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mRequestUpdate:Z

    if-eqz v10, :cond_2

    .line 842
    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    .line 785
    :cond_2
    return-void

    .line 789
    :pswitch_0
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_1

    .line 790
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v10}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    .line 791
    .local v8, "v":D
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v10, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 792
    iget-boolean v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    if-eqz v10, :cond_1

    invoke-virtual {v5, v13}, Lmiui/maml/ScreenElementRoot;->getCapability(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 793
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lmiui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 797
    .end local v8    # "v":D
    :pswitch_1
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_3

    .line 798
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v11, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    double-to-int v11, v12

    iget-object v12, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    invoke-virtual {v10, v11, v12, v13}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    goto :goto_1

    .line 799
    :cond_3
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    if-eqz v10, :cond_1

    .line 800
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    array-length v0, v10

    .line 801
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_1

    .line 802
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    aget-object v1, v10, v2

    .line 803
    .local v1, "ex":Lmiui/maml/data/Expression;
    iget-object v12, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    if-nez v1, :cond_4

    const-wide/16 v10, 0x0

    :goto_3
    invoke-virtual {v12, v2, v10, v11}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    .line 801
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 803
    :cond_4
    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v10

    goto :goto_3

    .line 808
    .end local v0    # "N":I
    .end local v1    # "ex":Lmiui/maml/data/Expression;
    .end local v2    # "i":I
    :pswitch_2
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v10}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v6

    .line 809
    .local v6, "str":Ljava/lang/String;
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v10, v6}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 810
    iget-boolean v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    if-eqz v10, :cond_1

    invoke-virtual {v5, v13}, Lmiui/maml/ScreenElementRoot;->getCapability(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 811
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {v5, v10, v6}, Lmiui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 815
    .end local v6    # "str":Ljava/lang/String;
    :pswitch_3
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_5

    .line 816
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v11, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    double-to-int v11, v12

    iget-object v12, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    goto/16 :goto_1

    .line 817
    :cond_5
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    if-eqz v10, :cond_1

    .line 818
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    array-length v0, v10

    .line 819
    .restart local v0    # "N":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v0, :cond_1

    .line 820
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    aget-object v1, v10, v2

    .line 821
    .restart local v1    # "ex":Lmiui/maml/data/Expression;
    iget-object v12, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    if-nez v1, :cond_6

    move-object v10, v11

    :goto_5
    invoke-virtual {v12, v2, v10}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    .line 819
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 821
    :cond_6
    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .line 828
    .end local v0    # "N":I
    .end local v1    # "ex":Lmiui/maml/data/Expression;
    .end local v2    # "i":I
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_7
    const/4 v3, 0x0

    .local v3, "name":Ljava/lang/String;
    goto/16 :goto_0

    .line 836
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "obj":Ljava/lang/Object;
    .restart local v7    # "vars":Lmiui/maml/data/Variables;
    :cond_8
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v11, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    double-to-int v11, v12

    invoke-virtual {v10, v11, v4}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    goto/16 :goto_1

    .line 787
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
