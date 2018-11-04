.class public Lmiui/maml/data/StringFunctions;
.super Lmiui/maml/data/Expression$FunctionImpl;
.source "StringFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/StringFunctions$Fun;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-data-StringFunctions$FunSwitchesValues:[I = null

.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private final mFun:Lmiui/maml/data/StringFunctions$Fun;


# direct methods
.method private static synthetic -getmiui-maml-data-StringFunctions$FunSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/data/StringFunctions;->-miui-maml-data-StringFunctions$FunSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/data/StringFunctions;->-miui-maml-data-StringFunctions$FunSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/maml/data/StringFunctions$Fun;->values()[Lmiui/maml/data/StringFunctions$Fun;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->INVALID:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_CONTAINS:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_ENDSWITH:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_2
    :try_start_3
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_INDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    :goto_3
    :try_start_4
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_ISEMPTY:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_4
    :try_start_5
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_LASTINDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    :goto_5
    :try_start_6
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_MATCHES:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    :goto_6
    :try_start_7
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACE:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    :goto_7
    :try_start_8
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEALL:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    :goto_8
    :try_start_9
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEFIRST:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_9
    :try_start_a
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_STARTWITH:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    :goto_a
    :try_start_b
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_TOLOWER:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    :goto_b
    :try_start_c
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_TOUPPER:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_c
    :try_start_d
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_TRIM:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    :goto_d
    sput-object v0, Lmiui/maml/data/StringFunctions;->-miui-maml-data-StringFunctions$FunSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_d

    :catch_1
    move-exception v1

    goto :goto_c

    :catch_2
    move-exception v1

    goto :goto_b

    :catch_3
    move-exception v1

    goto :goto_a

    :catch_4
    move-exception v1

    goto :goto_9

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_6

    :catch_8
    move-exception v1

    goto :goto_5

    :catch_9
    move-exception v1

    goto :goto_4

    :catch_a
    move-exception v1

    goto :goto_3

    :catch_b
    move-exception v1

    goto/16 :goto_2

    :catch_c
    move-exception v1

    goto/16 :goto_1

    :catch_d
    move-exception v1

    goto/16 :goto_0
.end method

.method private constructor <init>(Lmiui/maml/data/StringFunctions$Fun;I)V
    .locals 0
    .param p1, "f"    # Lmiui/maml/data/StringFunctions$Fun;
    .param p2, "i"    # I

    .prologue
    .line 54
    invoke-direct {p0, p2}, Lmiui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 55
    iput-object p1, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    .line 53
    return-void
.end method

.method public static load()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 37
    const-string/jumbo v0, "strToLowerCase"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_TOLOWER:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 38
    const-string/jumbo v0, "strToUpperCase"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_TOUPPER:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 39
    const-string/jumbo v0, "strTrim"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_TRIM:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 40
    const-string/jumbo v0, "strReplace"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACE:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 41
    const-string/jumbo v0, "strReplaceAll"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEALL:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 42
    const-string/jumbo v0, "strReplaceFirst"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEFIRST:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 44
    const-string/jumbo v0, "strContains"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_CONTAINS:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 45
    const-string/jumbo v0, "strStartsWith"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_STARTWITH:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 46
    const-string/jumbo v0, "strEndsWith"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_ENDSWITH:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 47
    const-string/jumbo v0, "strIsEmpty"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_ISEMPTY:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 48
    const-string/jumbo v0, "strMatches"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_MATCHES:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 49
    const-string/jumbo v0, "strIndexOf"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_INDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 50
    const-string/jumbo v0, "strLastIndexOf"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_LASTINDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 36
    return-void
.end method


# virtual methods
.method public evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D
    .locals 10
    .param p1, "paraExps"    # [Lmiui/maml/data/Expression;
    .param p2, "var"    # Lmiui/maml/data/Variables;

    .prologue
    const/4 v5, -0x1

    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    invoke-static {}, Lmiui/maml/data/StringFunctions;->-getmiui-maml-data-StringFunctions$FunSwitchesValues()[I

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 70
    :pswitch_0
    aget-object v6, p1, v3

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "str0":Ljava/lang/String;
    invoke-static {}, Lmiui/maml/data/StringFunctions;->-getmiui-maml-data-StringFunctions$FunSwitchesValues()[I

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 75
    aget-object v6, p1, v4

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "str1":Ljava/lang/String;
    invoke-static {}, Lmiui/maml/data/StringFunctions;->-getmiui-maml-data-StringFunctions$FunSwitchesValues()[I

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    .line 95
    :pswitch_1
    const-string/jumbo v3, "Expression"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fail to evalute FunctionExpression, invalid function: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-wide v8

    .line 68
    .end local v1    # "str0":Ljava/lang/String;
    .end local v2    # "str1":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lmiui/maml/data/StringFunctions;->evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8, v9}, Lmiui/maml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    move-result-wide v4

    return-wide v4

    .line 73
    .restart local v1    # "str0":Ljava/lang/String;
    :pswitch_3
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    int-to-double v4, v3

    return-wide v4

    .line 78
    .restart local v2    # "str1":Ljava/lang/String;
    :pswitch_4
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_0
    int-to-double v4, v4

    return-wide v4

    :cond_2
    move v4, v3

    goto :goto_0

    .line 80
    :pswitch_5
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    int-to-double v4, v4

    return-wide v4

    :cond_3
    move v4, v3

    goto :goto_1

    .line 82
    :pswitch_6
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    int-to-double v4, v4

    return-wide v4

    :cond_4
    move v4, v3

    goto :goto_2

    .line 85
    :pswitch_7
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_5

    :goto_3
    int-to-double v4, v4

    return-wide v4

    :cond_5
    move v4, v3

    goto :goto_3

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    const-string/jumbo v3, "Expression"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invaid pattern of matches: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-wide v8

    .line 91
    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :pswitch_8
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    :goto_4
    int-to-double v4, v3

    return-wide v4

    :cond_6
    move v3, v5

    goto :goto_4

    .line 93
    :pswitch_9
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    :cond_7
    int-to-double v4, v5

    return-wide v4

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 71
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
    .end packed-switch

    .line 76
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_1
        :pswitch_9
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 8
    .param p1, "paraExps"    # [Lmiui/maml/data/Expression;
    .param p2, "var"    # Lmiui/maml/data/Variables;

    .prologue
    const/4 v7, 0x0

    .line 106
    invoke-static {}, Lmiui/maml/data/StringFunctions;->-getmiui-maml-data-StringFunctions$FunSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 116
    :pswitch_0
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "str0":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 118
    return-object v7

    .line 114
    .end local v1    # "str0":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lmiui/maml/data/StringFunctions;->evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 120
    .restart local v1    # "str0":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lmiui/maml/data/StringFunctions;->-getmiui-maml-data-StringFunctions$FunSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 128
    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "str1":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "str2":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    .line 131
    :cond_1
    return-object v1

    .line 122
    .end local v2    # "str1":Ljava/lang/String;
    .end local v3    # "str2":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 124
    :pswitch_3
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 126
    :pswitch_4
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 133
    .restart local v2    # "str1":Ljava/lang/String;
    .restart local v3    # "str2":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lmiui/maml/data/StringFunctions;->-getmiui-maml-data-StringFunctions$FunSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    .line 151
    const-string/jumbo v4, "Expression"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fail to evaluteStr FunctionExpression, invalid function: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-object v7

    .line 135
    :pswitch_5
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 138
    :pswitch_6
    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    const-string/jumbo v4, "Expression"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invaid pattern of replaceAll: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-object v1

    .line 145
    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :pswitch_7
    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    return-object v4

    .line 146
    :catch_1
    move-exception v0

    .line 147
    .restart local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    const-string/jumbo v4, "Expression"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invaid pattern of replaceFirst:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-object v1

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 120
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 133
    :pswitch_data_2
    .packed-switch 0x7
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
