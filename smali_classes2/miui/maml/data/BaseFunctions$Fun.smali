.class final enum Lmiui/maml/data/BaseFunctions$Fun;
.super Ljava/lang/Enum;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/BaseFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Fun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/data/BaseFunctions$Fun;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum ABS:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum ACOS:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum AND:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum ASIN:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum ATAN:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum COS:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum COSH:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum DIGIT:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum EQ:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum EQS:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum EVAL:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum GE:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum GT:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum HASH:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum IFELSE:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum INT:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum INVALID:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum ISNULL:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum LE:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum LEN:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum LOG:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum LOG10:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum LT:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum MAX:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum MIN:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum NE:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum NOT:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum NUM:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum OR:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum POW:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum PRECISE_EVAL:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum RAND:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum ROUND:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum SIN:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum SINH:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum SQRT:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum SUBSTR:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum TAN:Lmiui/maml/data/BaseFunctions$Fun;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->INVALID:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "RAND"

    invoke-direct {v0, v1, v4}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 24
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->RAND:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "SIN"

    invoke-direct {v0, v1, v5}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 25
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->SIN:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "COS"

    invoke-direct {v0, v1, v6}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 26
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->COS:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "TAN"

    invoke-direct {v0, v1, v7}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->TAN:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "ASIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 28
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->ASIN:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "ACOS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->ACOS:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "ATAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 30
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->ATAN:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "SINH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 31
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->SINH:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "COSH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 32
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->COSH:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "SQRT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 33
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->SQRT:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "ABS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 34
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->ABS:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "LEN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 35
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->LEN:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "EVAL"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 36
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->EVAL:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "PRECISE_EVAL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->PRECISE_EVAL:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "ROUND"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 38
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->ROUND:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "INT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->INT:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "NUM"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 40
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->NUM:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "MIN"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 41
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->MIN:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "MAX"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->MAX:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "POW"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 43
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->POW:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "LOG"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 44
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->LOG:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "LOG10"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 45
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->LOG10:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "DIGIT"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 46
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->DIGIT:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "EQ"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 48
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->EQ:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "NE"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->NE:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "GE"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 50
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->GE:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "GT"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 51
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->GT:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "LE"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 52
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->LE:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "LT"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 53
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->LT:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "ISNULL"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 54
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->ISNULL:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "NOT"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 55
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->NOT:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "IFELSE"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->IFELSE:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "AND"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 60
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->AND:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "OR"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 61
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->OR:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "EQS"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 64
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->EQS:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "SUBSTR"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 65
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->SUBSTR:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string/jumbo v1, "HASH"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 68
    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->HASH:Lmiui/maml/data/BaseFunctions$Fun;

    .line 22
    const/16 v0, 0x26

    new-array v0, v0, [Lmiui/maml/data/BaseFunctions$Fun;

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->INVALID:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->RAND:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->SIN:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->COS:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->TAN:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v1, v0, v7

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ASIN:Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ACOS:Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ATAN:Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->SINH:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->COSH:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->SQRT:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ABS:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LEN:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->EVAL:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->PRECISE_EVAL:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ROUND:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->INT:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->NUM:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->MIN:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->MAX:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->POW:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LOG:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LOG10:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->DIGIT:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->EQ:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->NE:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->GE:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->GT:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LE:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LT:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ISNULL:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->NOT:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->IFELSE:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->AND:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->OR:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->EQS:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->SUBSTR:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->HASH:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->$VALUES:[Lmiui/maml/data/BaseFunctions$Fun;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/BaseFunctions$Fun;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lmiui/maml/data/BaseFunctions$Fun;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/BaseFunctions$Fun;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/BaseFunctions$Fun;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lmiui/maml/data/BaseFunctions$Fun;->$VALUES:[Lmiui/maml/data/BaseFunctions$Fun;

    return-object v0
.end method
