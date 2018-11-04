.class public abstract Lmiui/maml/data/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Expression$ArrayVariableExpression;,
        Lmiui/maml/data/Expression$BinaryExpression;,
        Lmiui/maml/data/Expression$FunctionExpression;,
        Lmiui/maml/data/Expression$FunctionImpl;,
        Lmiui/maml/data/Expression$NumberArrayVariableExpression;,
        Lmiui/maml/data/Expression$NumberExpression;,
        Lmiui/maml/data/Expression$NumberVariableExpression;,
        Lmiui/maml/data/Expression$Ope;,
        Lmiui/maml/data/Expression$OpeInfo;,
        Lmiui/maml/data/Expression$StringArrayVariableExpression;,
        Lmiui/maml/data/Expression$StringExpression;,
        Lmiui/maml/data/Expression$StringVariableExpression;,
        Lmiui/maml/data/Expression$Tokenizer;,
        Lmiui/maml/data/Expression$UnaryExpression;,
        Lmiui/maml/data/Expression$VariableExpression;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-data-Expression$Tokenizer$TokenTypeSwitchesValues:[I = null

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# direct methods
.method private static synthetic -getmiui-maml-data-Expression$Tokenizer$TokenTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/data/Expression;->-miui-maml-data-Expression$Tokenizer$TokenTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/data/Expression;->-miui-maml-data-Expression$Tokenizer$TokenTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->values()[Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_ROUND:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_SQUARE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lmiui/maml/data/Expression;->-miui-maml-data-Expression$Tokenizer$TokenTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    invoke-static {p0}, Lmiui/maml/data/Expression;->isDigitCharRest(C)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    invoke-static {p0}, Lmiui/maml/data/Expression;->isDigitCharStart(C)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    invoke-static {p0}, Lmiui/maml/data/Expression;->isFunctionCharRest(C)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    invoke-static {p0}, Lmiui/maml/data/Expression;->isFunctionCharStart(C)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    invoke-static {p0}, Lmiui/maml/data/Expression;->isVariableChar(C)Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;
    .locals 2
    .param p0, "vars"    # Lmiui/maml/data/Variables;
    .param p1, "exp"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 844
    invoke-static {p0, p1}, Lmiui/maml/data/Expression;->buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    .line 845
    .local v0, "ex":Lmiui/maml/data/Expression;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lmiui/maml/data/RootExpression;

    invoke-direct {v1, p0, v0}, Lmiui/maml/data/RootExpression;-><init>(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;)V

    goto :goto_0
.end method

.method private static buildBracket(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Lmiui/maml/data/Expression;
    .locals 6
    .param p0, "vars"    # Lmiui/maml/data/Variables;
    .param p1, "token"    # Lmiui/maml/data/Expression$Tokenizer$Token;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/maml/data/Variables;",
            "Lmiui/maml/data/Expression$Tokenizer$Token;",
            "Ljava/util/Stack",
            "<",
            "Lmiui/maml/data/Expression$Tokenizer$Token;",
            ">;)",
            "Lmiui/maml/data/Expression;"
        }
    .end annotation

    .prologue
    .local p2, "opeStack":Ljava/util/Stack;, "Ljava/util/Stack<Lmiui/maml/data/Expression$Tokenizer$Token;>;"
    const/4 v5, 0x0

    .line 970
    iget-object v2, p1, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-static {p0, v2}, Lmiui/maml/data/Expression;->buildMultipleInner(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    .line 971
    .local v1, "newExps":[Lmiui/maml/data/Expression;
    invoke-static {v1}, Lmiui/maml/data/Expression;->checkParams([Lmiui/maml/data/Expression;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 972
    const-string/jumbo v2, "Expression"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid expressions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return-object v5

    .line 977
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v2, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    sget-object v3, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    if-ne v2, v3, :cond_1

    .line 978
    new-instance v3, Lmiui/maml/data/Expression$FunctionExpression;

    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v2, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v3, p0, v1, v2}, Lmiui/maml/data/Expression$FunctionExpression;-><init>(Lmiui/maml/data/Variables;[Lmiui/maml/data/Expression;Ljava/lang/String;)V

    return-object v3

    .line 979
    :cond_1
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 980
    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 982
    :catch_0
    move-exception v0

    .line 983
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 984
    const-string/jumbo v2, "Expression"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v2, "Expression"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fail to buid: multiple expressions in brackets, but seems no function presents:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    return-object v5
.end method

.method private static buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;
    .locals 19
    .param p0, "vars"    # Lmiui/maml/data/Variables;
    .param p1, "exp"    # Ljava/lang/String;

    .prologue
    .line 849
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 850
    const/16 v16, 0x0

    return-object v16

    .line 856
    :cond_0
    new-instance v13, Lmiui/maml/data/Expression$Tokenizer;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lmiui/maml/data/Expression$Tokenizer;-><init>(Ljava/lang/String;)V

    .line 857
    .local v13, "tk":Lmiui/maml/data/Expression$Tokenizer;
    const/4 v14, 0x0

    .line 858
    .local v14, "token":Lmiui/maml/data/Expression$Tokenizer$Token;
    const/4 v12, 0x0

    .line 859
    .local v12, "preToken":Lmiui/maml/data/Expression$Tokenizer$Token;
    new-instance v11, Ljava/util/Stack;

    invoke-direct {v11}, Ljava/util/Stack;-><init>()V

    .line 860
    .local v11, "opeStack":Ljava/util/Stack;, "Ljava/util/Stack<Lmiui/maml/data/Expression$Tokenizer$Token;>;"
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    .line 861
    .end local v12    # "preToken":Lmiui/maml/data/Expression$Tokenizer$Token;
    .end local v14    # "token":Lmiui/maml/data/Expression$Tokenizer$Token;
    .local v5, "expStack":Ljava/util/Stack;, "Ljava/util/Stack<Lmiui/maml/data/Expression;>;"
    :goto_0
    invoke-virtual {v13}, Lmiui/maml/data/Expression$Tokenizer;->getToken()Lmiui/maml/data/Expression$Tokenizer$Token;

    move-result-object v14

    .local v14, "token":Lmiui/maml/data/Expression$Tokenizer$Token;
    if-eqz v14, :cond_e

    .line 865
    invoke-static {}, Lmiui/maml/data/Expression;->-getmiui-maml-data-Expression$Tokenizer$TokenTypeSwitchesValues()[I

    move-result-object v16

    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 953
    :goto_1
    move-object v12, v14

    .local v12, "preToken":Lmiui/maml/data/Expression$Tokenizer$Token;
    goto :goto_0

    .line 872
    .end local v12    # "preToken":Lmiui/maml/data/Expression$Tokenizer$Token;
    :pswitch_0
    const/4 v9, 0x0

    .line 873
    .local v9, "newExp":Lmiui/maml/data/Expression;
    invoke-static {}, Lmiui/maml/data/Expression;->-getmiui-maml-data-Expression$Tokenizer$TokenTypeSwitchesValues()[I

    move-result-object v16

    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_1

    .line 924
    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    :cond_1
    :goto_2
    :pswitch_1
    invoke-virtual {v11}, Ljava/util/Stack;->empty()Z

    move-result v16

    if-nez v16, :cond_9

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lmiui/maml/data/Expression$OpeInfo;->unary:Z

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 925
    new-instance v10, Lmiui/maml/data/Expression$UnaryExpression;

    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v10, v9, v0}, Lmiui/maml/data/Expression$UnaryExpression;-><init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression$Ope;)V

    .local v10, "newExp":Lmiui/maml/data/Expression;
    move-object v9, v10

    .end local v10    # "newExp":Lmiui/maml/data/Expression;
    .local v9, "newExp":Lmiui/maml/data/Expression;
    goto :goto_2

    .line 875
    .local v9, "newExp":Lmiui/maml/data/Expression;
    :pswitch_2
    new-instance v9, Lmiui/maml/data/Expression$NumberVariableExpression;

    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v9, v0, v1}, Lmiui/maml/data/Expression$NumberVariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 876
    .local v9, "newExp":Lmiui/maml/data/Expression;
    goto :goto_2

    .line 878
    .local v9, "newExp":Lmiui/maml/data/Expression;
    :pswitch_3
    new-instance v9, Lmiui/maml/data/Expression$StringVariableExpression;

    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v9, v0, v1}, Lmiui/maml/data/Expression$StringVariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 879
    .local v9, "newExp":Lmiui/maml/data/Expression;
    goto :goto_2

    .line 881
    .local v9, "newExp":Lmiui/maml/data/Expression;
    :pswitch_4
    invoke-virtual {v11}, Ljava/util/Stack;->empty()Z

    move-result v16

    if-nez v16, :cond_2

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v16, v0

    sget-object v17, Lmiui/maml/data/Expression$Ope;->MIN:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 882
    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v8, v0, Lmiui/maml/data/Expression$OpeInfo;->unary:Z

    .line 883
    :goto_3
    new-instance v9, Lmiui/maml/data/Expression$NumberExpression;

    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_3

    const-string/jumbo v16, "-"

    :goto_4
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Lmiui/maml/data/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    .line 884
    .local v9, "newExp":Lmiui/maml/data/Expression;
    if-eqz v8, :cond_1

    .line 885
    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_2

    .line 881
    .local v9, "newExp":Lmiui/maml/data/Expression;
    :cond_2
    const/4 v8, 0x0

    .local v8, "minus":Z
    goto :goto_3

    .line 883
    .end local v8    # "minus":Z
    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    :cond_3
    const-string/jumbo v16, ""

    goto :goto_4

    .line 890
    .restart local v9    # "newExp":Lmiui/maml/data/Expression;
    :pswitch_5
    new-instance v9, Lmiui/maml/data/Expression$StringExpression;

    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Lmiui/maml/data/Expression$StringExpression;-><init>(Ljava/lang/String;)V

    .line 891
    .local v9, "newExp":Lmiui/maml/data/Expression;
    goto/16 :goto_2

    .line 893
    .local v9, "newExp":Lmiui/maml/data/Expression;
    :pswitch_6
    move-object/from16 v0, p0

    invoke-static {v0, v14, v11}, Lmiui/maml/data/Expression;->buildBracket(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Lmiui/maml/data/Expression;

    move-result-object v9

    .line 894
    .local v9, "newExp":Lmiui/maml/data/Expression;
    if-nez v9, :cond_1

    .line 895
    const/16 v16, 0x0

    return-object v16

    .line 898
    .local v9, "newExp":Lmiui/maml/data/Expression;
    :pswitch_7
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 899
    const-string/jumbo v16, "Expression"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "fail to buid: no array name before []:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/16 v16, 0x0

    return-object v16

    .line 902
    :cond_4
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/maml/data/Expression;

    .line 903
    .local v7, "lastExp":Lmiui/maml/data/Expression;
    instance-of v0, v7, Lmiui/maml/data/Expression$VariableExpression;

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 904
    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v6

    .line 905
    .local v6, "indexExp":Lmiui/maml/data/Expression;
    if-nez v6, :cond_5

    .line 906
    const-string/jumbo v16, "Expression"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "fail to buid: no index expression in []:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/16 v16, 0x0

    return-object v16

    :cond_5
    move-object/from16 v16, v7

    .line 909
    check-cast v16, Lmiui/maml/data/Expression$VariableExpression;

    invoke-virtual/range {v16 .. v16}, Lmiui/maml/data/Expression$VariableExpression;->getName()Ljava/lang/String;

    move-result-object v15

    .line 910
    .local v15, "varName":Ljava/lang/String;
    instance-of v0, v7, Lmiui/maml/data/Expression$NumberVariableExpression;

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 911
    new-instance v9, Lmiui/maml/data/Expression$NumberArrayVariableExpression;

    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    move-object/from16 v0, p0

    invoke-direct {v9, v0, v15, v6}, Lmiui/maml/data/Expression$NumberArrayVariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V

    .line 918
    .end local v6    # "indexExp":Lmiui/maml/data/Expression;
    .end local v15    # "varName":Ljava/lang/String;
    :cond_6
    :goto_5
    if-nez v9, :cond_1

    .line 919
    const/16 v16, 0x0

    return-object v16

    .line 912
    .restart local v6    # "indexExp":Lmiui/maml/data/Expression;
    .restart local v9    # "newExp":Lmiui/maml/data/Expression;
    .restart local v15    # "varName":Ljava/lang/String;
    :cond_7
    instance-of v0, v7, Lmiui/maml/data/Expression$StringVariableExpression;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 913
    new-instance v9, Lmiui/maml/data/Expression$StringArrayVariableExpression;

    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    move-object/from16 v0, p0

    invoke-direct {v9, v0, v15, v6}, Lmiui/maml/data/Expression$StringArrayVariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V

    .local v9, "newExp":Lmiui/maml/data/Expression;
    goto :goto_5

    .line 916
    .end local v6    # "indexExp":Lmiui/maml/data/Expression;
    .end local v15    # "varName":Ljava/lang/String;
    .local v9, "newExp":Lmiui/maml/data/Expression;
    :cond_8
    const-string/jumbo v16, "Expression"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "fail to buid: the expression before [] is not a variable:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 927
    .end local v7    # "lastExp":Lmiui/maml/data/Expression;
    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    :cond_9
    invoke-virtual {v5, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 930
    :pswitch_8
    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lmiui/maml/data/Expression$OpeInfo;->participants:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    if-eqz v12, :cond_a

    iget-object v0, v12, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v16, v0

    sget-object v17, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 932
    :cond_a
    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lmiui/maml/data/Expression$OpeInfo;->unary:Z

    .line 933
    invoke-virtual {v11, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 942
    :cond_b
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/data/Expression;

    .line 943
    .local v3, "exp2":Lmiui/maml/data/Expression;
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Expression;

    .line 944
    .local v2, "exp1":Lmiui/maml/data/Expression;
    new-instance v17, Lmiui/maml/data/Expression$BinaryExpression;

    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v16, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v3, v1}, Lmiui/maml/data/Expression$BinaryExpression;-><init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression$Ope;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    .end local v2    # "exp1":Lmiui/maml/data/Expression;
    .end local v3    # "exp2":Lmiui/maml/data/Expression;
    :cond_c
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v16

    if-lez v16, :cond_d

    .line 936
    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v16, v0

    sget-object v17, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 937
    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lmiui/maml/data/Expression$OpeInfo;->priority:I

    move/from16 v16, v0

    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmiui/maml/data/Expression$OpeInfo;->priority:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    if-gtz v16, :cond_d

    .line 938
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_b

    .line 939
    const-string/jumbo v16, "Expression"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "fail to buid: invalid operator position:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/16 v16, 0x0

    return-object v16

    .line 946
    :cond_d
    invoke-virtual {v11, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 950
    :pswitch_9
    invoke-virtual {v11, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 956
    :cond_e
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v16

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_f

    .line 957
    const-string/jumbo v16, "Expression"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "fail to buid: invalid expression:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/16 v16, 0x0

    return-object v16

    .line 961
    :cond_f
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/data/Expression;

    .line 962
    .restart local v3    # "exp2":Lmiui/maml/data/Expression;
    :goto_6
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v16

    if-lez v16, :cond_10

    .line 963
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Expression;

    .line 964
    .restart local v2    # "exp1":Lmiui/maml/data/Expression;
    new-instance v4, Lmiui/maml/data/Expression$BinaryExpression;

    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v4, v2, v3, v0}, Lmiui/maml/data/Expression$BinaryExpression;-><init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression$Ope;)V

    .end local v3    # "exp2":Lmiui/maml/data/Expression;
    .local v4, "exp2":Lmiui/maml/data/Expression;
    move-object v3, v4

    .end local v4    # "exp2":Lmiui/maml/data/Expression;
    .restart local v3    # "exp2":Lmiui/maml/data/Expression;
    goto :goto_6

    .line 966
    .end local v2    # "exp1":Lmiui/maml/data/Expression;
    :cond_10
    return-object v3

    .line 865
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 873
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;
    .locals 6
    .param p0, "vars"    # Lmiui/maml/data/Variables;
    .param p1, "exp"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 799
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 800
    return-object v5

    .line 802
    :cond_0
    invoke-static {p0, p1}, Lmiui/maml/data/Expression;->buildMultipleInner(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    .line 803
    .local v1, "exps":[Lmiui/maml/data/Expression;
    array-length v4, v1

    new-array v3, v4, [Lmiui/maml/data/Expression;

    .line 804
    .local v3, "roots":[Lmiui/maml/data/Expression;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 805
    aget-object v0, v1, v2

    .line 806
    .local v0, "expression":Lmiui/maml/data/Expression;
    if-eqz v0, :cond_1

    instance-of v4, v0, Lmiui/maml/data/Expression$NumberExpression;

    if-nez v4, :cond_1

    instance-of v4, v0, Lmiui/maml/data/Expression$StringExpression;

    if-eqz v4, :cond_2

    .line 807
    :cond_1
    aput-object v0, v3, v2

    .line 804
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 809
    :cond_2
    new-instance v4, Lmiui/maml/data/RootExpression;

    invoke-direct {v4, p0, v0}, Lmiui/maml/data/RootExpression;-><init>(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;)V

    aput-object v4, v3, v2

    goto :goto_1

    .line 812
    .end local v0    # "expression":Lmiui/maml/data/Expression;
    :cond_3
    return-object v3
.end method

.method private static buildMultipleInner(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;
    .locals 8
    .param p0, "vars"    # Lmiui/maml/data/Variables;
    .param p1, "exp"    # Ljava/lang/String;

    .prologue
    .line 816
    const/4 v0, 0x0

    .line 817
    .local v0, "bracketCount":I
    const/4 v4, 0x0

    .line 818
    .local v4, "inApostrophe":Z
    const/4 v6, 0x0

    .line 819
    .local v6, "start":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 820
    .local v2, "exps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/data/Expression;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 821
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 822
    .local v1, "c":C
    if-nez v4, :cond_0

    .line 823
    const/16 v7, 0x2c

    if-ne v1, v7, :cond_2

    if-nez v0, :cond_2

    .line 824
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lmiui/maml/data/Expression;->buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    add-int/lit8 v6, v3, 0x1

    .line 832
    :cond_0
    :goto_1
    const/16 v7, 0x27

    if-ne v1, v7, :cond_1

    .line 833
    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 820
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 826
    :cond_2
    const/16 v7, 0x28

    if-ne v1, v7, :cond_3

    .line 827
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 828
    :cond_3
    const/16 v7, 0x29

    if-ne v1, v7, :cond_0

    .line 829
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 833
    :cond_4
    const/4 v4, 0x1

    goto :goto_2

    .line 836
    .end local v1    # "c":C
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 837
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lmiui/maml/data/Expression;->buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Lmiui/maml/data/Expression;

    .line 840
    .local v5, "ret":[Lmiui/maml/data/Expression;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lmiui/maml/data/Expression;

    return-object v7
.end method

.method private static checkParams([Lmiui/maml/data/Expression;)Z
    .locals 2
    .param p0, "params"    # [Lmiui/maml/data/Expression;

    .prologue
    .line 992
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 993
    aget-object v1, p0, v0

    if-nez v1, :cond_0

    .line 994
    const/4 v1, 0x0

    return v1

    .line 992
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 996
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private static isDigitCharRest(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 786
    const/16 v1, 0x30

    if-lt p0, v1, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x61

    if-lt p0, v1, :cond_2

    const/16 v1, 0x66

    if-le p0, v1, :cond_0

    :cond_2
    const/16 v1, 0x41

    if-lt p0, v1, :cond_3

    const/16 v1, 0x46

    if-le p0, v1, :cond_0

    :cond_3
    const/16 v1, 0x2e

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDigitCharStart(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 782
    const/16 v1, 0x30

    if-lt p0, v1, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x2e

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFunctionCharRest(C)Z
    .locals 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 794
    invoke-static {p0}, Lmiui/maml/data/Expression;->isFunctionCharStart(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x5f

    if-ne p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x30

    if-lt p0, v2, :cond_2

    const/16 v2, 0x39

    if-le p0, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static isFunctionCharStart(C)Z
    .locals 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 790
    const/16 v2, 0x61

    if-lt p0, v2, :cond_1

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x41

    if-lt p0, v2, :cond_2

    const/16 v2, 0x5a

    if-le p0, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static isVariableChar(C)Z
    .locals 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 778
    const/16 v2, 0x61

    if-lt p0, v2, :cond_1

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x41

    if-lt p0, v2, :cond_2

    const/16 v2, 0x5a

    if-le p0, v2, :cond_0

    :cond_2
    const/16 v2, 0x5f

    if-eq p0, v2, :cond_0

    const/16 v2, 0x2e

    if-eq p0, v2, :cond_0

    const/16 v2, 0x30

    if-lt p0, v2, :cond_3

    const/16 v2, 0x39

    if-le p0, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .locals 0
    .param p1, "v"    # Lmiui/maml/data/ExpressionVisitor;

    .prologue
    .line 1019
    invoke-virtual {p1, p0}, Lmiui/maml/data/ExpressionVisitor;->visit(Lmiui/maml/data/Expression;)V

    .line 1018
    return-void
.end method

.method public abstract evaluate()D
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1015
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 1011
    const/4 v0, 0x0

    return v0
.end method

.method public preciseEvaluate()Ljava/math/BigDecimal;
    .locals 4

    .prologue
    .line 1002
    invoke-virtual {p0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    .line 1004
    .local v2, "value":D
    :try_start_0
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1005
    :catch_0
    move-exception v0

    .line 1006
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return-object v1
.end method
