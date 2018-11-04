.class public Lmiui/maml/data/FormatFunctions;
.super Lmiui/maml/data/Expression$FunctionImpl;
.source "FormatFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/FormatFunctions$Fun;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-data-FormatFunctions$FunSwitchesValues:[I


# instance fields
.field private final mFun:Lmiui/maml/data/FormatFunctions$Fun;


# direct methods
.method private static synthetic -getmiui-maml-data-FormatFunctions$FunSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/data/FormatFunctions;->-miui-maml-data-FormatFunctions$FunSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/data/FormatFunctions;->-miui-maml-data-FormatFunctions$FunSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/maml/data/FormatFunctions$Fun;->values()[Lmiui/maml/data/FormatFunctions$Fun;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/maml/data/FormatFunctions$Fun;->FORMAT_DATE:Lmiui/maml/data/FormatFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/data/FormatFunctions$Fun;->FORMAT_FLOAT:Lmiui/maml/data/FormatFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/maml/data/FormatFunctions$Fun;->FORMAT_INT:Lmiui/maml/data/FormatFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lmiui/maml/data/FormatFunctions$Fun;->INVALID:Lmiui/maml/data/FormatFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lmiui/maml/data/FormatFunctions;->-miui-maml-data-FormatFunctions$FunSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private constructor <init>(Lmiui/maml/data/FormatFunctions$Fun;I)V
    .locals 0
    .param p1, "f"    # Lmiui/maml/data/FormatFunctions$Fun;
    .param p2, "i"    # I

    .prologue
    .line 28
    invoke-direct {p0, p2}, Lmiui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 29
    iput-object p1, p0, Lmiui/maml/data/FormatFunctions;->mFun:Lmiui/maml/data/FormatFunctions$Fun;

    .line 27
    return-void
.end method

.method public static load()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 22
    const-string/jumbo v0, "formatDate"

    new-instance v1, Lmiui/maml/data/FormatFunctions;

    sget-object v2, Lmiui/maml/data/FormatFunctions$Fun;->FORMAT_DATE:Lmiui/maml/data/FormatFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/FormatFunctions;-><init>(Lmiui/maml/data/FormatFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 23
    const-string/jumbo v0, "formatFloat"

    new-instance v1, Lmiui/maml/data/FormatFunctions;

    sget-object v2, Lmiui/maml/data/FormatFunctions$Fun;->FORMAT_FLOAT:Lmiui/maml/data/FormatFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/FormatFunctions;-><init>(Lmiui/maml/data/FormatFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 24
    const-string/jumbo v0, "formatInt"

    new-instance v1, Lmiui/maml/data/FormatFunctions;

    sget-object v2, Lmiui/maml/data/FormatFunctions$Fun;->FORMAT_INT:Lmiui/maml/data/FormatFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/FormatFunctions;-><init>(Lmiui/maml/data/FormatFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 21
    return-void
.end method


# virtual methods
.method public evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D
    .locals 2
    .param p1, "paraExps"    # [Lmiui/maml/data/Expression;
    .param p2, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 34
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 7
    .param p1, "paraExps"    # [Lmiui/maml/data/Expression;
    .param p2, "var"    # Lmiui/maml/data/Variables;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 39
    aget-object v2, p1, v2

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "format":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 41
    return-object v6

    .line 43
    :cond_0
    invoke-static {}, Lmiui/maml/data/FormatFunctions;->-getmiui-maml-data-FormatFunctions$FunSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/data/FormatFunctions;->mFun:Lmiui/maml/data/FormatFunctions$Fun;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 60
    :goto_0
    return-object v6

    .line 45
    :pswitch_0
    aget-object v2, p1, v4

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    invoke-static {v1, v2, v3}, Lmiui/maml/data/DateTimeVariableUpdater;->formatDate(Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 48
    :pswitch_1
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 54
    :pswitch_2
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2

    .line 55
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/util/IllegalFormatException;
    goto :goto_0

    .line 49
    .end local v0    # "e":Ljava/util/IllegalFormatException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/util/IllegalFormatException;
    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
