.class Lmiui/maml/data/Expression$BinaryExpression;
.super Lmiui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BinaryExpression"
.end annotation


# static fields
.field private static final synthetic -miui-maml-data-Expression$OpeSwitchesValues:[I


# instance fields
.field private mExp1:Lmiui/maml/data/Expression;

.field private mExp2:Lmiui/maml/data/Expression;

.field private mOpe:Lmiui/maml/data/Expression$Ope;


# direct methods
.method private static synthetic -getmiui-maml-data-Expression$OpeSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/data/Expression$BinaryExpression;->-miui-maml-data-Expression$OpeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/data/Expression$BinaryExpression;->-miui-maml-data-Expression$OpeSwitchesValues:[I

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_14

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/data/Expression$Ope;->AND:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_13

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_AND:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_12

    :goto_2
    :try_start_3
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_LSHIFT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_11

    :goto_3
    :try_start_4
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_NOT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_10

    :goto_4
    :try_start_5
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_OR:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_f

    :goto_5
    :try_start_6
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_RSHIFT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_e

    :goto_6
    :try_start_7
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_XOR:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_d

    :goto_7
    :try_start_8
    sget-object v1, Lmiui/maml/data/Expression$Ope;->DIV:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_c

    :goto_8
    :try_start_9
    sget-object v1, Lmiui/maml/data/Expression$Ope;->EQ:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_b

    :goto_9
    :try_start_a
    sget-object v1, Lmiui/maml/data/Expression$Ope;->GE:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :goto_a
    :try_start_b
    sget-object v1, Lmiui/maml/data/Expression$Ope;->GT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_9

    :goto_b
    :try_start_c
    sget-object v1, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_8

    :goto_c
    :try_start_d
    sget-object v1, Lmiui/maml/data/Expression$Ope;->LE:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_7

    :goto_d
    :try_start_e
    sget-object v1, Lmiui/maml/data/Expression$Ope;->LT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_6

    :goto_e
    :try_start_f
    sget-object v1, Lmiui/maml/data/Expression$Ope;->MIN:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_5

    :goto_f
    :try_start_10
    sget-object v1, Lmiui/maml/data/Expression$Ope;->MOD:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_4

    :goto_10
    :try_start_11
    sget-object v1, Lmiui/maml/data/Expression$Ope;->MUL:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_3

    :goto_11
    :try_start_12
    sget-object v1, Lmiui/maml/data/Expression$Ope;->NEQ:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_2

    :goto_12
    :try_start_13
    sget-object v1, Lmiui/maml/data/Expression$Ope;->NOT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_1

    :goto_13
    :try_start_14
    sget-object v1, Lmiui/maml/data/Expression$Ope;->OR:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_0

    :goto_14
    sput-object v0, Lmiui/maml/data/Expression$BinaryExpression;->-miui-maml-data-Expression$OpeSwitchesValues:[I

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

.method public constructor <init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression$Ope;)V
    .locals 3
    .param p1, "exp1"    # Lmiui/maml/data/Expression;
    .param p2, "exp2"    # Lmiui/maml/data/Expression;
    .param p3, "op"    # Lmiui/maml/data/Expression$Ope;

    .prologue
    .line 566
    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    .line 564
    sget-object v0, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    iput-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    .line 567
    iput-object p1, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    .line 568
    iput-object p2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    .line 569
    iput-object p3, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    .line 570
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    sget-object v1, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    if-ne v0, v1, :cond_0

    .line 571
    const-string/jumbo v0, "Expression"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BinaryExpression: invalid operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .locals 1
    .param p1, "v"    # Lmiui/maml/data/ExpressionVisitor;

    .prologue
    .line 696
    invoke-virtual {p1, p0}, Lmiui/maml/data/ExpressionVisitor;->visit(Lmiui/maml/data/Expression;)V

    .line 697
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    .line 698
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    .line 695
    return-void
.end method

.method public evaluate()D
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 577
    invoke-static {}, Lmiui/maml/data/Expression$BinaryExpression;->-getmiui-maml-data-Expression$OpeSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 618
    const-string/jumbo v0, "Expression"

    const-string/jumbo v1, "fail to evalute BinaryExpression, invalid operator"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-wide v4

    .line 579
    :pswitch_0
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0

    .line 581
    :pswitch_1
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0

    .line 583
    :pswitch_2
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0

    .line 585
    :pswitch_3
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0

    .line 587
    :pswitch_4
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    rem-double/2addr v0, v2

    return-wide v0

    .line 590
    :pswitch_5
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    and-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0

    .line 592
    :pswitch_6
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    or-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0

    .line 594
    :pswitch_7
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    xor-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0

    .line 596
    :pswitch_8
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    long-to-int v2, v2

    shl-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0

    .line 598
    :pswitch_9
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    long-to-int v2, v2

    shr-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0

    .line 601
    :pswitch_a
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    :goto_0
    int-to-double v0, v0

    return-wide v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 603
    :pswitch_b
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    :goto_1
    int-to-double v0, v0

    return-wide v0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 605
    :pswitch_c
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    :goto_2
    int-to-double v0, v0

    return-wide v0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 607
    :pswitch_d
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_3

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_4

    :cond_3
    move v1, v0

    :cond_4
    int-to-double v0, v1

    return-wide v0

    .line 609
    :pswitch_e
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_5

    :goto_3
    int-to-double v0, v0

    return-wide v0

    :cond_5
    move v0, v1

    goto :goto_3

    .line 611
    :pswitch_f
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_6

    :goto_4
    int-to-double v0, v0

    return-wide v0

    :cond_6
    move v0, v1

    goto :goto_4

    .line 613
    :pswitch_10
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_7

    :goto_5
    int-to-double v0, v0

    return-wide v0

    :cond_7
    move v0, v1

    goto :goto_5

    .line 615
    :pswitch_11
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_8

    :goto_6
    int-to-double v0, v0

    return-wide v0

    :cond_8
    move v0, v1

    goto :goto_6

    .line 577
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_c
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_3
        :pswitch_a
        :pswitch_f
        :pswitch_e
        :pswitch_11
        :pswitch_10
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 676
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "str1":Ljava/lang/String;
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, "str2":Ljava/lang/String;
    invoke-static {}, Lmiui/maml/data/Expression$BinaryExpression;->-getmiui-maml-data-Expression$OpeSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 690
    const-string/jumbo v2, "Expression"

    const-string/jumbo v3, "fail to evalute string BinaryExpression, invalid operator"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    return-object v4

    .line 680
    :pswitch_0
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 681
    return-object v4

    .line 682
    :cond_0
    if-nez v0, :cond_1

    .line 683
    return-object v1

    .line 684
    :cond_1
    if-nez v1, :cond_2

    .line 685
    return-object v0

    .line 687
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 678
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isNull()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 657
    invoke-static {}, Lmiui/maml/data/Expression$BinaryExpression;->-getmiui-maml-data-Expression$OpeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 671
    :pswitch_0
    return v0

    .line 660
    :pswitch_1
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 668
    :pswitch_2
    iget-object v1, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v0

    :cond_1
    return v0

    .line 657
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public preciseEvaluate()Ljava/math/BigDecimal;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 624
    iget-object v3, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    sget-object v4, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    if-eq v3, v4, :cond_0

    .line 625
    iget-object v3, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->preciseEvaluate()Ljava/math/BigDecimal;

    move-result-object v1

    .line 626
    .local v1, "num1":Ljava/math/BigDecimal;
    iget-object v3, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->preciseEvaluate()Ljava/math/BigDecimal;

    move-result-object v2

    .line 627
    .local v2, "num2":Ljava/math/BigDecimal;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 628
    invoke-static {}, Lmiui/maml/data/Expression$BinaryExpression;->-getmiui-maml-data-Expression$OpeSwitchesValues()[I

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 651
    .end local v1    # "num1":Ljava/math/BigDecimal;
    .end local v2    # "num2":Ljava/math/BigDecimal;
    :cond_0
    const-string/jumbo v3, "Expression"

    const-string/jumbo v4, "fail to PRECISE evalute BinaryExpression, invalid operator"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return-object v5

    .line 630
    .restart local v1    # "num1":Ljava/math/BigDecimal;
    .restart local v2    # "num2":Ljava/math/BigDecimal;
    :sswitch_0
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3

    .line 632
    :sswitch_1
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3

    .line 634
    :sswitch_2
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3

    .line 637
    :sswitch_3
    :try_start_0
    sget-object v3, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    return-object v5

    .line 643
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_4
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    return-object v3

    .line 644
    :catch_1
    move-exception v0

    .line 645
    .restart local v0    # "e":Ljava/lang/Exception;
    return-object v5

    .line 628
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_3
        0xe -> :sswitch_1
        0xf -> :sswitch_4
        0x10 -> :sswitch_2
    .end sparse-switch
.end method
