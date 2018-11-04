.class public Lmiui/maml/data/BaseFunctions;
.super Lmiui/maml/data/Expression$FunctionImpl;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/BaseFunctions$Fun;,
        Lmiui/maml/data/BaseFunctions$NullObjFunction;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-data-BaseFunctions$FunSwitchesValues:[I = null

.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private fun:Lmiui/maml/data/BaseFunctions$Fun;

.field private mEvalExp:Lmiui/maml/data/Expression;

.field private mEvalExpStr:Ljava/lang/String;


# direct methods
.method private static synthetic -getmiui-maml-data-BaseFunctions$FunSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/data/BaseFunctions;->-miui-maml-data-BaseFunctions$FunSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/data/BaseFunctions;->-miui-maml-data-BaseFunctions$FunSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/maml/data/BaseFunctions$Fun;->values()[Lmiui/maml/data/BaseFunctions$Fun;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ABS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_25

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ACOS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_24

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->AND:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_23

    :goto_2
    :try_start_3
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ASIN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_22

    :goto_3
    :try_start_4
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ATAN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_21

    :goto_4
    :try_start_5
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->COS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_20

    :goto_5
    :try_start_6
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->COSH:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1f

    :goto_6
    :try_start_7
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->DIGIT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1e

    :goto_7
    :try_start_8
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->EQ:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1d

    :goto_8
    :try_start_9
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->EQS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1c

    :goto_9
    :try_start_a
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->EVAL:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1b

    :goto_a
    :try_start_b
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->GE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1a

    :goto_b
    :try_start_c
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->GT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_19

    :goto_c
    :try_start_d
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->HASH:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_18

    :goto_d
    :try_start_e
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->IFELSE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_17

    :goto_e
    :try_start_f
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->INT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_16

    :goto_f
    :try_start_10
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->INVALID:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_15

    :goto_10
    :try_start_11
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ISNULL:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_14

    :goto_11
    :try_start_12
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_13

    :goto_12
    :try_start_13
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LEN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_12

    :goto_13
    :try_start_14
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LOG:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_11

    :goto_14
    :try_start_15
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LOG10:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_10

    :goto_15
    :try_start_16
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_f

    :goto_16
    :try_start_17
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->MAX:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_e

    :goto_17
    :try_start_18
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->MIN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_d

    :goto_18
    :try_start_19
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->NE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_c

    :goto_19
    :try_start_1a
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->NOT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_b

    :goto_1a
    :try_start_1b
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->NUM:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_a

    :goto_1b
    :try_start_1c
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->OR:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_9

    :goto_1c
    :try_start_1d
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->POW:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_8

    :goto_1d
    :try_start_1e
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->PRECISE_EVAL:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_7

    :goto_1e
    :try_start_1f
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->RAND:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_6

    :goto_1f
    :try_start_20
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ROUND:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_5

    :goto_20
    :try_start_21
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->SIN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_4

    :goto_21
    :try_start_22
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->SINH:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_3

    :goto_22
    :try_start_23
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->SQRT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_2

    :goto_23
    :try_start_24
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->SUBSTR:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_1

    :goto_24
    :try_start_25
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->TAN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_0

    :goto_25
    sput-object v0, Lmiui/maml/data/BaseFunctions;->-miui-maml-data-BaseFunctions$FunSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_25

    :catch_1
    move-exception v1

    goto :goto_24

    :catch_2
    move-exception v1

    goto :goto_23

    :catch_3
    move-exception v1

    goto :goto_22

    :catch_4
    move-exception v1

    goto :goto_21

    :catch_5
    move-exception v1

    goto :goto_20

    :catch_6
    move-exception v1

    goto :goto_1f

    :catch_7
    move-exception v1

    goto :goto_1e

    :catch_8
    move-exception v1

    goto :goto_1d

    :catch_9
    move-exception v1

    goto :goto_1c

    :catch_a
    move-exception v1

    goto :goto_1b

    :catch_b
    move-exception v1

    goto/16 :goto_1a

    :catch_c
    move-exception v1

    goto/16 :goto_19

    :catch_d
    move-exception v1

    goto/16 :goto_18

    :catch_e
    move-exception v1

    goto/16 :goto_17

    :catch_f
    move-exception v1

    goto/16 :goto_16

    :catch_10
    move-exception v1

    goto/16 :goto_15

    :catch_11
    move-exception v1

    goto/16 :goto_14

    :catch_12
    move-exception v1

    goto/16 :goto_13

    :catch_13
    move-exception v1

    goto/16 :goto_12

    :catch_14
    move-exception v1

    goto/16 :goto_11

    :catch_15
    move-exception v1

    goto/16 :goto_10

    :catch_16
    move-exception v1

    goto/16 :goto_f

    :catch_17
    move-exception v1

    goto/16 :goto_e

    :catch_18
    move-exception v1

    goto/16 :goto_d

    :catch_19
    move-exception v1

    goto/16 :goto_c

    :catch_1a
    move-exception v1

    goto/16 :goto_b

    :catch_1b
    move-exception v1

    goto/16 :goto_a

    :catch_1c
    move-exception v1

    goto/16 :goto_9

    :catch_1d
    move-exception v1

    goto/16 :goto_8

    :catch_1e
    move-exception v1

    goto/16 :goto_7

    :catch_1f
    move-exception v1

    goto/16 :goto_6

    :catch_20
    move-exception v1

    goto/16 :goto_5

    :catch_21
    move-exception v1

    goto/16 :goto_4

    :catch_22
    move-exception v1

    goto/16 :goto_3

    :catch_23
    move-exception v1

    goto/16 :goto_2

    :catch_24
    move-exception v1

    goto/16 :goto_1

    :catch_25
    move-exception v1

    goto/16 :goto_0
.end method

.method private constructor <init>(Lmiui/maml/data/BaseFunctions$Fun;I)V
    .locals 0
    .param p1, "f"    # Lmiui/maml/data/BaseFunctions$Fun;
    .param p2, "i"    # I

    .prologue
    .line 153
    invoke-direct {p0, p2}, Lmiui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 154
    iput-object p1, p0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    .line 152
    return-void
.end method

.method private digit(II)I
    .locals 4
    .param p1, "number"    # I
    .param p2, "n"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 356
    if-gtz p2, :cond_0

    .line 357
    return v1

    .line 358
    :cond_0
    if-nez p1, :cond_1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 359
    return v3

    .line 360
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lez p1, :cond_2

    add-int/lit8 v2, p2, -0x1

    if-ge v0, v2, :cond_2

    .line 361
    div-int/lit8 p1, p1, 0xa

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_2
    if-lez p1, :cond_3

    rem-int/lit8 v1, p1, 0xa

    :cond_3
    return v1
.end method

.method public static load()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 72
    const-string/jumbo v0, "rand"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->RAND:Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 73
    const-string/jumbo v0, "sin"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->SIN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 74
    const-string/jumbo v0, "cos"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->COS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 75
    const-string/jumbo v0, "tan"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->TAN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 76
    const-string/jumbo v0, "asin"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ASIN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 77
    const-string/jumbo v0, "acos"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ACOS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 78
    const-string/jumbo v0, "atan"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ATAN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 79
    const-string/jumbo v0, "sinh"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->SINH:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 80
    const-string/jumbo v0, "cosh"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->COSH:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 81
    const-string/jumbo v0, "sqrt"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->SQRT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 82
    const-string/jumbo v0, "abs"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ABS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 83
    const-string/jumbo v0, "len"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->LEN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 84
    const-string/jumbo v0, "eval"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->EVAL:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 85
    const-string/jumbo v0, "preciseeval"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->PRECISE_EVAL:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 86
    const-string/jumbo v0, "round"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ROUND:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 87
    const-string/jumbo v0, "int"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->INT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 88
    const-string/jumbo v0, "num"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->NUM:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 90
    const-string/jumbo v0, "isnull"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ISNULL:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 91
    const-string/jumbo v0, "not"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->NOT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 93
    const-string/jumbo v0, "min"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->MIN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 94
    const-string/jumbo v0, "max"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->MAX:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 95
    const-string/jumbo v0, "pow"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->POW:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 96
    const-string/jumbo v0, "log"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->LOG:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 97
    const-string/jumbo v0, "log10"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->LOG10:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 98
    const-string/jumbo v0, "digit"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->DIGIT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 100
    const-string/jumbo v0, "eq"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->EQ:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 101
    const-string/jumbo v0, "ne"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->NE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 102
    const-string/jumbo v0, "ge"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->GE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 103
    const-string/jumbo v0, "gt"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->GT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 104
    const-string/jumbo v0, "le"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->LE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 105
    const-string/jumbo v0, "lt"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->LT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 106
    const-string/jumbo v0, "ifelse"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->IFELSE:Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 108
    const-string/jumbo v0, "and"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->AND:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 109
    const-string/jumbo v0, "or"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->OR:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 111
    const-string/jumbo v0, "eqs"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->EQS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 112
    const-string/jumbo v0, "substr"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->SUBSTR:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 114
    const-string/jumbo v0, "hash"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->HASH:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 116
    const-string/jumbo v0, "nullobj"

    new-instance v1, Lmiui/maml/data/BaseFunctions$NullObjFunction;

    invoke-direct {v1}, Lmiui/maml/data/BaseFunctions$NullObjFunction;-><init>()V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 71
    return-void
.end method


# virtual methods
.method public evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D
    .locals 16
    .param p1, "mParaExps"    # [Lmiui/maml/data/Expression;
    .param p2, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    .line 160
    invoke-static {}, Lmiui/maml/data/BaseFunctions;->-getmiui-maml-data-BaseFunctions$FunSwitchesValues()[I

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 165
    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v10

    .line 166
    .local v10, "value0":D
    invoke-static {}, Lmiui/maml/data/BaseFunctions;->-getmiui-maml-data-BaseFunctions$FunSwitchesValues()[I

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_1

    .line 292
    :pswitch_0
    const-string/jumbo v12, "Expression"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "fail to evalute FunctionExpression, invalid function: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v14}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-wide/16 v12, 0x0

    return-wide v12

    .line 162
    .end local v10    # "value0":D
    :pswitch_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    return-wide v12

    .line 168
    .restart local v10    # "value0":D
    :pswitch_2
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    return-wide v12

    .line 170
    :pswitch_3
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    return-wide v12

    .line 172
    :pswitch_4
    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    return-wide v12

    .line 174
    :pswitch_5
    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v12

    return-wide v12

    .line 176
    :pswitch_6
    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    return-wide v12

    .line 178
    :pswitch_7
    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    return-wide v12

    .line 180
    :pswitch_8
    invoke-static {v10, v11}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v12

    return-wide v12

    .line 182
    :pswitch_9
    invoke-static {v10, v11}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v12

    return-wide v12

    .line 184
    :pswitch_a
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    return-wide v12

    .line 186
    :pswitch_b
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    return-wide v12

    .line 188
    :pswitch_c
    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v9

    .line 189
    .local v9, "str":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 190
    const-wide/16 v12, 0x0

    return-wide v12

    .line 192
    :cond_0
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    int-to-double v12, v12

    return-wide v12

    .line 194
    .end local v9    # "str":Ljava/lang/String;
    :pswitch_d
    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "expStr":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 196
    const-wide/16 v12, 0x0

    return-wide v12

    .line 198
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 199
    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 200
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    .line 202
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    if-nez v12, :cond_3

    const-wide/16 v12, 0x0

    :goto_0
    return-wide v12

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    goto :goto_0

    .line 204
    .end local v2    # "expStr":Ljava/lang/String;
    :pswitch_e
    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, "pexpStr":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 206
    const-wide/16 v12, 0x0

    return-wide v12

    .line 208
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 209
    move-object/from16 v0, p0

    iput-object v5, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 210
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    .line 212
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->preciseEvaluate()Ljava/math/BigDecimal;

    move-result-object v6

    .line 213
    .local v6, "result":Ljava/math/BigDecimal;
    :goto_1
    if-eqz v6, :cond_8

    .line 214
    invoke-virtual {v6}, Ljava/math/BigDecimal;->scale()I

    move-result v7

    .line 215
    .local v7, "scale":I
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    double-to-int v8, v12

    .line 218
    .local v8, "setScale":I
    if-lez v8, :cond_6

    if-le v7, v8, :cond_6

    .line 219
    const/4 v12, 0x4

    invoke-virtual {v6, v8, v12}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v6

    .line 221
    :cond_6
    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v12

    return-wide v12

    .line 212
    .end local v6    # "result":Ljava/math/BigDecimal;
    .end local v7    # "scale":I
    .end local v8    # "setScale":I
    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    .line 223
    .restart local v6    # "result":Ljava/math/BigDecimal;
    :cond_8
    const-wide/high16 v12, 0x7ff8000000000000L    # NaN

    return-wide v12

    .line 225
    .end local v5    # "pexpStr":Ljava/lang/String;
    .end local v6    # "result":Ljava/math/BigDecimal;
    :pswitch_f
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    return-wide v12

    .line 227
    :pswitch_10
    double-to-long v12, v10

    long-to-int v12, v12

    int-to-double v12, v12

    return-wide v12

    .line 229
    :pswitch_11
    return-wide v10

    .line 231
    :pswitch_12
    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    :goto_2
    int-to-double v12, v12

    return-wide v12

    :cond_9
    const/4 v12, 0x0

    goto :goto_2

    .line 233
    :pswitch_13
    const-wide/16 v12, 0x0

    cmpl-double v12, v10, v12

    if-lez v12, :cond_a

    const/4 v12, 0x0

    :goto_3
    int-to-double v12, v12

    return-wide v12

    :cond_a
    const/4 v12, 0x1

    goto :goto_3

    .line 235
    :pswitch_14
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    return-wide v12

    .line 237
    :pswitch_15
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    return-wide v12

    .line 239
    :pswitch_16
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    return-wide v12

    .line 241
    :pswitch_17
    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    return-wide v12

    .line 243
    :pswitch_18
    invoke-static {v10, v11}, Ljava/lang/Math;->log10(D)D

    move-result-wide v12

    return-wide v12

    .line 245
    :pswitch_19
    double-to-int v12, v10

    const/4 v13, 0x1

    aget-object v13, p1, v13

    invoke-virtual {v13}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v14

    double-to-int v13, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lmiui/maml/data/BaseFunctions;->digit(II)I

    move-result v12

    int-to-double v12, v12

    return-wide v12

    .line 247
    :pswitch_1a
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    cmpl-double v12, v10, v12

    if-nez v12, :cond_b

    const/4 v12, 0x1

    :goto_4
    int-to-double v12, v12

    return-wide v12

    :cond_b
    const/4 v12, 0x0

    goto :goto_4

    .line 249
    :pswitch_1b
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    cmpl-double v12, v10, v12

    if-eqz v12, :cond_c

    const/4 v12, 0x1

    :goto_5
    int-to-double v12, v12

    return-wide v12

    :cond_c
    const/4 v12, 0x0

    goto :goto_5

    .line 251
    :pswitch_1c
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    cmpl-double v12, v10, v12

    if-ltz v12, :cond_d

    const/4 v12, 0x1

    :goto_6
    int-to-double v12, v12

    return-wide v12

    :cond_d
    const/4 v12, 0x0

    goto :goto_6

    .line 253
    :pswitch_1d
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    cmpl-double v12, v10, v12

    if-lez v12, :cond_e

    const/4 v12, 0x1

    :goto_7
    int-to-double v12, v12

    return-wide v12

    :cond_e
    const/4 v12, 0x0

    goto :goto_7

    .line 255
    :pswitch_1e
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    cmpg-double v12, v10, v12

    if-gtz v12, :cond_f

    const/4 v12, 0x1

    :goto_8
    int-to-double v12, v12

    return-wide v12

    :cond_f
    const/4 v12, 0x0

    goto :goto_8

    .line 257
    :pswitch_1f
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    cmpg-double v12, v10, v12

    if-gez v12, :cond_10

    const/4 v12, 0x1

    :goto_9
    int-to-double v12, v12

    return-wide v12

    :cond_10
    const/4 v12, 0x0

    goto :goto_9

    .line 259
    :pswitch_20
    move-object/from16 v0, p1

    array-length v4, v0

    .line 260
    .local v4, "len":I
    rem-int/lit8 v12, v4, 0x2

    const/4 v13, 0x1

    if-eq v12, v13, :cond_11

    .line 261
    const-string/jumbo v12, "Expression"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "function parameter number should be 2*n+1: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v14}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-wide/16 v12, 0x0

    return-wide v12

    .line 264
    :cond_11
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    add-int/lit8 v12, v4, -0x1

    div-int/lit8 v12, v12, 0x2

    if-ge v3, v12, :cond_13

    .line 265
    mul-int/lit8 v12, v3, 0x2

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_12

    .line 266
    mul-int/lit8 v12, v3, 0x2

    add-int/lit8 v12, v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    return-wide v12

    .line 264
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 268
    :cond_13
    add-int/lit8 v12, v4, -0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    return-wide v12

    .line 271
    .end local v3    # "i":I
    .end local v4    # "len":I
    :pswitch_21
    move-object/from16 v0, p1

    array-length v4, v0

    .line 272
    .restart local v4    # "len":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_b
    if-ge v3, v4, :cond_15

    .line 273
    aget-object v12, p1, v3

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_14

    .line 274
    const-wide/16 v12, 0x0

    return-wide v12

    .line 272
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 276
    :cond_15
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    return-wide v12

    .line 279
    .end local v3    # "i":I
    .end local v4    # "len":I
    :pswitch_22
    move-object/from16 v0, p1

    array-length v4, v0

    .line 280
    .restart local v4    # "len":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_c
    if-ge v3, v4, :cond_17

    .line 281
    aget-object v12, p1, v3

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_16

    .line 282
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    return-wide v12

    .line 280
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 284
    :cond_17
    const-wide/16 v12, 0x0

    return-wide v12

    .line 287
    .end local v3    # "i":I
    .end local v4    # "len":I
    :pswitch_23
    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, p1, v13

    invoke-virtual {v13}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_18

    const/4 v12, 0x1

    :goto_d
    int-to-double v12, v12

    return-wide v12

    :cond_18
    const/4 v12, 0x0

    goto :goto_d

    .line 289
    :pswitch_24
    invoke-virtual/range {p0 .. p2}, Lmiui/maml/data/BaseFunctions;->evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v12

    const-wide/16 v14, 0x0

    invoke-static {v12, v14, v15}, Lmiui/maml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    move-result-wide v12

    return-wide v12

    .line 160
    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_1
    .end packed-switch

    .line 166
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_6
        :pswitch_21
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_9
        :pswitch_19
        :pswitch_1a
        :pswitch_23
        :pswitch_d
        :pswitch_1c
        :pswitch_1d
        :pswitch_0
        :pswitch_20
        :pswitch_10
        :pswitch_12
        :pswitch_1e
        :pswitch_c
        :pswitch_17
        :pswitch_18
        :pswitch_1f
        :pswitch_15
        :pswitch_14
        :pswitch_1b
        :pswitch_13
        :pswitch_11
        :pswitch_22
        :pswitch_16
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_2
        :pswitch_8
        :pswitch_a
        :pswitch_24
        :pswitch_4
    .end packed-switch
.end method

.method public evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 16
    .param p1, "mParaExps"    # [Lmiui/maml/data/Expression;
    .param p2, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    .line 298
    invoke-static {}, Lmiui/maml/data/BaseFunctions;->-getmiui-maml-data-BaseFunctions$FunSwitchesValues()[I

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    sparse-switch v11, :sswitch_data_0

    .line 351
    invoke-virtual/range {p0 .. p2}, Lmiui/maml/data/BaseFunctions;->evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D

    move-result-wide v12

    invoke-static {v12, v13}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 300
    :sswitch_0
    move-object/from16 v0, p1

    array-length v5, v0

    .line 301
    .local v5, "len":I
    rem-int/lit8 v11, v5, 0x2

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    .line 302
    const-string/jumbo v11, "Expression"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "function parameter number should be 2*n+1: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v13}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v11, 0x0

    return-object v11

    .line 305
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v11, v5, -0x1

    div-int/lit8 v11, v11, 0x2

    if-ge v4, v11, :cond_2

    .line 306
    mul-int/lit8 v11, v4, 0x2

    aget-object v11, p1, v11

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v11, v12, v14

    if-lez v11, :cond_1

    .line 307
    mul-int/lit8 v11, v4, 0x2

    add-int/lit8 v11, v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 305
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 309
    :cond_2
    add-int/lit8 v11, v5, -0x1

    aget-object v11, p1, v11

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 312
    .end local v4    # "i":I
    .end local v5    # "len":I
    :sswitch_1
    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v9

    .line 313
    .local v9, "str":Ljava/lang/String;
    if-nez v9, :cond_3

    .line 314
    const/4 v11, 0x0

    return-object v11

    .line 315
    :cond_3
    move-object/from16 v0, p1

    array-length v7, v0

    .line 316
    .local v7, "size":I
    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    double-to-int v8, v12

    .line 318
    .local v8, "start":I
    const/4 v11, 0x3

    if-lt v7, v11, :cond_5

    .line 319
    const/4 v11, 0x2

    :try_start_0
    aget-object v11, p1, v11

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    double-to-int v5, v12

    .line 320
    .restart local v5    # "len":I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    .line 321
    .local v10, "strlen":I
    if-le v5, v10, :cond_4

    .line 322
    move v5, v10

    .line 324
    :cond_4
    add-int v11, v8, v5

    invoke-virtual {v9, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 326
    .end local v5    # "len":I
    .end local v10    # "strlen":I
    :cond_5
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    return-object v11

    .line 327
    :catch_0
    move-exception v2

    .line 329
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v11, 0x0

    return-object v11

    .line 332
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v7    # "size":I
    .end local v8    # "start":I
    .end local v9    # "str":Ljava/lang/String;
    :sswitch_2
    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, "expStr":Ljava/lang/String;
    if-nez v3, :cond_6

    .line 334
    const/4 v11, 0x0

    return-object v11

    .line 336
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 337
    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 338
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    .line 340
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    if-nez v11, :cond_8

    const/4 v11, 0x0

    :goto_1
    return-object v11

    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 343
    .end local v3    # "expStr":Ljava/lang/String;
    :sswitch_3
    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    .line 344
    .restart local v3    # "expStr":Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v6

    .line 345
    .local v6, "method":Ljava/lang/String;
    if-eqz v3, :cond_9

    if-nez v6, :cond_a

    .line 346
    :cond_9
    const/4 v11, 0x0

    return-object v11

    .line 348
    :cond_a
    invoke-static {v3, v6}, Lmiui/util/HashUtils;->getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 298
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_2
        0xe -> :sswitch_3
        0xf -> :sswitch_0
        0x24 -> :sswitch_1
    .end sparse-switch
.end method
