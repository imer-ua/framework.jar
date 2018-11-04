.class Lmiui/maml/data/Expression$UnaryExpression;
.super Lmiui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnaryExpression"
.end annotation


# static fields
.field private static final synthetic -miui-maml-data-Expression$OpeSwitchesValues:[I


# instance fields
.field private mExp:Lmiui/maml/data/Expression;

.field private mOpe:Lmiui/maml/data/Expression$Ope;


# direct methods
.method private static synthetic -getmiui-maml-data-Expression$OpeSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/data/Expression$UnaryExpression;->-miui-maml-data-Expression$OpeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/data/Expression$UnaryExpression;->-miui-maml-data-Expression$OpeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/maml/data/Expression$Ope;->values()[Lmiui/maml/data/Expression$Ope;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/maml/data/Expression$Ope;->ADD:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_14

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/data/Expression$Ope;->AND:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_13

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_AND:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_12

    :goto_2
    :try_start_3
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_LSHIFT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_11

    :goto_3
    :try_start_4
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_NOT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_10

    :goto_4
    :try_start_5
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_OR:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_f

    :goto_5
    :try_start_6
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_RSHIFT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_e

    :goto_6
    :try_start_7
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_XOR:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_d

    :goto_7
    :try_start_8
    sget-object v1, Lmiui/maml/data/Expression$Ope;->DIV:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_c

    :goto_8
    :try_start_9
    sget-object v1, Lmiui/maml/data/Expression$Ope;->EQ:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_b

    :goto_9
    :try_start_a
    sget-object v1, Lmiui/maml/data/Expression$Ope;->GE:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :goto_a
    :try_start_b
    sget-object v1, Lmiui/maml/data/Expression$Ope;->GT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_9

    :goto_b
    :try_start_c
    sget-object v1, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_8

    :goto_c
    :try_start_d
    sget-object v1, Lmiui/maml/data/Expression$Ope;->LE:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_7

    :goto_d
    :try_start_e
    sget-object v1, Lmiui/maml/data/Expression$Ope;->LT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_6

    :goto_e
    :try_start_f
    sget-object v1, Lmiui/maml/data/Expression$Ope;->MIN:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_5

    :goto_f
    :try_start_10
    sget-object v1, Lmiui/maml/data/Expression$Ope;->MOD:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_4

    :goto_10
    :try_start_11
    sget-object v1, Lmiui/maml/data/Expression$Ope;->MUL:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_3

    :goto_11
    :try_start_12
    sget-object v1, Lmiui/maml/data/Expression$Ope;->NEQ:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_2

    :goto_12
    :try_start_13
    sget-object v1, Lmiui/maml/data/Expression$Ope;->NOT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_1

    :goto_13
    :try_start_14
    sget-object v1, Lmiui/maml/data/Expression$Ope;->OR:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_0

    :goto_14
    sput-object v0, Lmiui/maml/data/Expression$UnaryExpression;->-miui-maml-data-Expression$OpeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_14

    :catch_1
    move-exception v1

    goto :goto_13

    :catch_2
    move-exception v1

    goto :goto_12

    :catch_3
    move-exception v1

    goto :goto_11

    :catch_4
    move-exception v1

    goto :goto_10

    :catch_5
    move-exception v1

    goto :goto_f

    :catch_6
    move-exception v1

    goto :goto_e

    :catch_7
    move-exception v1

    goto :goto_d

    :catch_8
    move-exception v1

    goto :goto_c

    :catch_9
    move-exception v1

    goto :goto_b

    :catch_a
    move-exception v1

    goto :goto_a

    :catch_b
    move-exception v1

    goto/16 :goto_9

    :catch_c
    move-exception v1

    goto/16 :goto_8

    :catch_d
    move-exception v1

    goto/16 :goto_7

    :catch_e
    move-exception v1

    goto/16 :goto_6

    :catch_f
    move-exception v1

    goto/16 :goto_5

    :catch_10
    move-exception v1

    goto/16 :goto_4

    :catch_11
    move-exception v1

    goto/16 :goto_3

    :catch_12
    move-exception v1

    goto/16 :goto_2

    :catch_13
    move-exception v1

    goto/16 :goto_1

    :catch_14
    move-exception v1

    goto/16 :goto_0
.end method

.method public constructor <init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression$Ope;)V
    .locals 3
    .param p1, "exp"    # Lmiui/maml/data/Expression;
    .param p2, "op"    # Lmiui/maml/data/Expression$Ope;

    .prologue
    .line 518
    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    .line 516
    sget-object v0, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    iput-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    .line 519
    iput-object p1, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    .line 520
    iput-object p2, p0, Lmiui/maml/data/Expression$UnaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    .line 521
    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    sget-object v1, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    if-ne v0, v1, :cond_0

    .line 522
    const-string/jumbo v0, "Expression"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UnaryExpression: invalid operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .locals 1
    .param p1, "v"    # Lmiui/maml/data/ExpressionVisitor;

    .prologue
    .line 553
    invoke-virtual {p1, p0}, Lmiui/maml/data/ExpressionVisitor;->visit(Lmiui/maml/data/Expression;)V

    .line 554
    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    .line 552
    return-void
.end method

.method public evaluate()D
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 528
    invoke-static {}, Lmiui/maml/data/Expression$UnaryExpression;->-getmiui-maml-data-Expression$OpeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/Expression$UnaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 537
    const-string/jumbo v0, "Expression"

    const-string/jumbo v1, "fail to evalute UnaryExpression, invalid operator"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    return-wide v0

    .line 530
    :pswitch_0
    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    sub-double v0, v2, v0

    return-wide v0

    .line 532
    :pswitch_1
    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-double v0, v0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 534
    :pswitch_2
    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    not-int v0, v0

    int-to-double v0, v0

    return-wide v0

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 548
    invoke-virtual {p0}, Lmiui/maml/data/Expression$UnaryExpression;->evaluate()D

    move-result-wide v0

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v0

    return v0
.end method
