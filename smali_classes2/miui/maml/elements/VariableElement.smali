.class public Lmiui/maml/elements/VariableElement;
.super Lmiui/maml/elements/ScreenElement;
.source "VariableElement.java"


# static fields
.field private static final synthetic -miui-maml-data-VariableTypeSwitchesValues:[I = null

.field private static final LOG_TAG:Ljava/lang/String; = "VariableElement"

.field private static final OLD_VALUE:Ljava/lang/String; = "old_value"

.field public static final TAG_NAME:Ljava/lang/String; = "Var"


# instance fields
.field private mAnimation:Lmiui/maml/animation/VariableAnimation;

.field private mArraySize:I

.field private mArrayValues:[Lmiui/maml/data/Expression;

.field private mConst:Z

.field private mExpression:Lmiui/maml/data/Expression;

.field private mIndexExpression:Lmiui/maml/data/Expression;

.field private mInited:Z

.field private mOldValue:D

.field private mOldVar:Lmiui/maml/data/IndexedVariable;

.field private mThreshold:D

.field private mTrigger:Lmiui/maml/CommandTrigger;

.field private mType:Lmiui/maml/data/VariableType;

.field private mVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method private static synthetic -getmiui-maml-data-VariableTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/elements/VariableElement;->-miui-maml-data-VariableTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/elements/VariableElement;->-miui-maml-data-VariableTypeSwitchesValues:[I

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

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/data/VariableType;->BYTE_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/maml/data/VariableType;->CHAR_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_2
    :try_start_3
    sget-object v1, Lmiui/maml/data/VariableType;->DOUBLE_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    :goto_3
    :try_start_4
    sget-object v1, Lmiui/maml/data/VariableType;->FLOAT_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_4
    :try_start_5
    sget-object v1, Lmiui/maml/data/VariableType;->INT_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_5
    :try_start_6
    sget-object v1, Lmiui/maml/data/VariableType;->INVALID:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    :goto_6
    :try_start_7
    sget-object v1, Lmiui/maml/data/VariableType;->LONG_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

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

    const/16 v2, 0xc

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

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_d
    :try_start_e
    sget-object v1, Lmiui/maml/data/VariableType;->STR_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_e
    sput-object v0, Lmiui/maml/elements/VariableElement;->-miui-maml-data-VariableTypeSwitchesValues:[I

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

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 7
    .param p1, "ele"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v6, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 59
    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    const-string/jumbo v4, "expression"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    .line 62
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    const-string/jumbo v4, "index"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    .line 63
    const-string/jumbo v3, "threshold"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p1, v3, v4}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lmiui/maml/elements/VariableElement;->mThreshold:D

    .line 64
    const-string/jumbo v3, "type"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lmiui/maml/data/VariableType;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    .line 65
    const-string/jumbo v3, "const"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/maml/elements/VariableElement;->mConst:Z

    .line 66
    const-string/jumbo v3, "size"

    invoke-static {p1, v3, v6}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lmiui/maml/elements/VariableElement;->mArraySize:I

    .line 68
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    .line 69
    .local v2, "variables":Lmiui/maml/data/Variables;
    new-instance v3, Lmiui/maml/data/IndexedVariable;

    iget-object v4, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    iget-object v5, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v5}, Lmiui/maml/data/VariableType;->isNumber()Z

    move-result v5

    invoke-direct {v3, v4, v2, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v3, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    .line 70
    new-instance v3, Lmiui/maml/data/IndexedVariable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "old_value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v5}, Lmiui/maml/data/VariableType;->isNumber()Z

    move-result v5

    invoke-direct {v3, v4, v2, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v3, p0, Lmiui/maml/elements/VariableElement;->mOldVar:Lmiui/maml/data/IndexedVariable;

    .line 73
    invoke-static {p1, p2}, Lmiui/maml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    .line 75
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v3}, Lmiui/maml/data/VariableType;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    const-string/jumbo v3, "values"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "val":Ljava/lang/String;
    invoke-static {v2, v1}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    .line 78
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    if-eqz v3, :cond_0

    .line 79
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    array-length v3, v3

    iput v3, p0, Lmiui/maml/elements/VariableElement;->mArraySize:I

    .line 81
    :cond_0
    iget v3, p0, Lmiui/maml/elements/VariableElement;->mArraySize:I

    if-lez v3, :cond_2

    .line 82
    iget-object v3, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    iget v4, p0, Lmiui/maml/elements/VariableElement;->mArraySize:I

    iget-object v5, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    iget-object v5, v5, Lmiui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4, v5}, Lmiui/maml/data/Variables;->createArray(Ljava/lang/String;ILjava/lang/Class;)Z

    move-result v0

    .line 83
    .local v0, "ret":Z
    if-nez v0, :cond_1

    .line 84
    const-string/jumbo v3, "VariableElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fail to create array:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .end local v0    # "ret":Z
    .end local v1    # "val":Ljava/lang/String;
    .end local v2    # "variables":Lmiui/maml/data/Variables;
    :cond_1
    :goto_0
    return-void

    .line 87
    .restart local v1    # "val":Ljava/lang/String;
    .restart local v2    # "variables":Lmiui/maml/data/Variables;
    :cond_2
    const-string/jumbo v3, "VariableElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "array size is 0:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDouble(ZI)D
    .locals 2
    .param p1, "isArray"    # Z
    .param p2, "index"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/VariableAnimation;->getValue()D

    move-result-wide v0

    return-wide v0

    .line 253
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    return-wide v0

    .line 256
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, p2}, Lmiui/maml/data/IndexedVariable;->getArrDouble(I)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_2
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v0

    goto :goto_0
.end method

.method private onValueChange(D)V
    .locals 5
    .param p1, "value"    # D

    .prologue
    .line 261
    iget-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mInited:Z

    if-nez v0, :cond_0

    .line 262
    iput-wide p1, p0, Lmiui/maml/elements/VariableElement;->mOldValue:D

    .line 264
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lmiui/maml/elements/VariableElement;->mOldValue:D

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lmiui/maml/elements/VariableElement;->mThreshold:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 265
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mOldVar:Lmiui/maml/data/IndexedVariable;

    iget-wide v2, p0, Lmiui/maml/elements/VariableElement;->mOldValue:D

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 266
    iput-wide p1, p0, Lmiui/maml/elements/VariableElement;->mOldValue:D

    .line 267
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    .line 260
    :cond_1
    return-void
.end method

.method private update()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 187
    invoke-static {}, Lmiui/maml/elements/VariableElement;->-getmiui-maml-data-VariableTypeSwitchesValues()[I

    move-result-object v8

    iget-object v10, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v8, v8, v10

    packed-switch v8, :pswitch_data_0

    .line 232
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v8}, Lmiui/maml/data/VariableType;->isNumberArray()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 233
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    if-eqz v8, :cond_3

    .line 234
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    double-to-int v3, v8

    .line 235
    .local v3, "index":I
    const/4 v8, 0x1

    invoke-direct {p0, v8, v3}, Lmiui/maml/elements/VariableElement;->getDouble(ZI)D

    move-result-wide v6

    .line 236
    .local v6, "value":D
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8, v3, v6, v7}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    .line 237
    invoke-direct {p0, v6, v7}, Lmiui/maml/elements/VariableElement;->onValueChange(D)V

    .line 185
    .end local v3    # "index":I
    .end local v6    # "value":D
    :cond_0
    :goto_0
    return-void

    .line 189
    :pswitch_0
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v8, :cond_0

    .line 190
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "str":Ljava/lang/String;
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8}, Lmiui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "oldStr":Ljava/lang/String;
    invoke-static {v5, v4}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 193
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mOldVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 194
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8, v5}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 195
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v8, :cond_0

    .line 196
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v8}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_0

    .line 202
    .end local v4    # "oldStr":Ljava/lang/String;
    .end local v5    # "str":Ljava/lang/String;
    :pswitch_1
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v8, :cond_0

    .line 203
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    if-eqz v8, :cond_1

    .line 204
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v5

    .line 205
    .restart local v5    # "str":Ljava/lang/String;
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    double-to-int v3, v8

    .line 206
    .restart local v3    # "index":I
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8, v3}, Lmiui/maml/data/IndexedVariable;->getArrString(I)Ljava/lang/String;

    move-result-object v4

    .line 207
    .restart local v4    # "oldStr":Ljava/lang/String;
    invoke-static {v5, v4}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 208
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mOldVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 209
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8, v3, v5}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    .line 210
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v8, :cond_0

    .line 211
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v8}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_0

    .line 214
    .end local v3    # "index":I
    .end local v4    # "oldStr":Ljava/lang/String;
    .end local v5    # "str":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    if-eqz v8, :cond_0

    .line 215
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    array-length v0, v8

    .line 216
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 217
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    aget-object v1, v8, v2

    .line 218
    .local v1, "ex":Lmiui/maml/data/Expression;
    iget-object v10, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    if-nez v1, :cond_2

    move-object v8, v9

    :goto_2
    invoke-virtual {v10, v2, v8}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 218
    :cond_2
    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 225
    .end local v0    # "N":I
    .end local v1    # "ex":Lmiui/maml/data/Expression;
    .end local v2    # "i":I
    :pswitch_2
    invoke-direct {p0, v11, v11}, Lmiui/maml/elements/VariableElement;->getDouble(ZI)D

    move-result-wide v6

    .line 226
    .restart local v6    # "value":D
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 227
    invoke-direct {p0, v6, v7}, Lmiui/maml/elements/VariableElement;->onValueChange(D)V

    goto/16 :goto_0

    .line 238
    .end local v6    # "value":D
    :cond_3
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    if-eqz v8, :cond_0

    .line 239
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    array-length v0, v8

    .line 240
    .restart local v0    # "N":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v0, :cond_0

    .line 241
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    aget-object v1, v8, v2

    .line 242
    .restart local v1    # "ex":Lmiui/maml/data/Expression;
    iget-object v10, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    if-nez v1, :cond_4

    const-wide/16 v8, 0x0

    :goto_4
    invoke-virtual {v10, v2, v8, v9}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 242
    :cond_4
    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    goto :goto_4

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 103
    return-void
.end method

.method protected doTick(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 109
    iget-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mConst:Z

    if-eqz v0, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    .line 113
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 108
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->finish()V

    .line 180
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->finish()V

    .line 182
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mInited:Z

    .line 178
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    .line 119
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->init()V

    .line 122
    :cond_0
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mInited:Z

    .line 117
    return-void
.end method

.method protected onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 95
    const-string/jumbo v0, "VariableAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lmiui/maml/animation/VariableAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/VariableAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    return-object v0

    .line 99
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;

    move-result-object v0

    return-object v0
.end method

.method protected onSetAnimBefore()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    .line 128
    return-void
.end method

.method protected onSetAnimEnable(Lmiui/maml/animation/BaseAnimation;)V
    .locals 1
    .param p1, "ani"    # Lmiui/maml/animation/BaseAnimation;

    .prologue
    .line 134
    instance-of v0, p1, Lmiui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 135
    nop

    nop

    .end local p1    # "ani":Lmiui/maml/animation/BaseAnimation;
    iput-object p1, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    .line 133
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->pause()V

    .line 166
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->pause()V

    .line 164
    :cond_0
    return-void
.end method

.method protected pauseAnim(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 148
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 146
    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "isLoop"    # Z
    .param p8, "isDelay"    # Z

    .prologue
    .line 141
    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 142
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 140
    return-void
.end method

.method public reset(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    .line 160
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 158
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->resume()V

    .line 173
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->resume()V

    .line 171
    :cond_0
    return-void
.end method

.method protected resumeAnim(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 154
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 152
    return-void
.end method
