.class Lmiui/maml/data/Expression$OpeInfo;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpeInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Expression$OpeInfo$Parser;
    }
.end annotation


# static fields
.field private static final OPE_SIZE:I

.field private static final mOpePar:[I

.field private static final mOpePriority:[I

.field private static final mOpes:[Ljava/lang/String;


# instance fields
.field public participants:I

.field public priority:I

.field public str:Ljava/lang/String;

.field public unary:Z


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lmiui/maml/data/Expression$OpeInfo;->OPE_SIZE:I

    return v0
.end method

.method static synthetic -get1()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0x14

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/maml/data/Expression$OpeInfo;->mOpePriority:[I

    .line 40
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lmiui/maml/data/Expression$OpeInfo;->mOpePar:[I

    .line 47
    new-array v0, v1, [Ljava/lang/String;

    .line 48
    const-string/jumbo v1, "+"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "-"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "*"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "/"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "%"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "&"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "|"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "^"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "~"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "{{"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "}}"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "!"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "=="

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "!="

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "**"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "||"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "}"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "}="

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "{"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "{="

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 47
    sput-object v0, Lmiui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;

    .line 54
    sget-object v0, Lmiui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lmiui/maml/data/Expression$OpeInfo;->OPE_SIZE:I

    .line 25
    return-void

    .line 32
    :array_0
    .array-data 4
        0x4
        0x4
        0x3
        0x3
        0x3
        0x8
        0x9
        0xa
        0x2
        0x5
        0x5
        0x2
        0x7
        0x7
        0xb
        0xc
        0x6
        0x6
        0x6
        0x6
    .end array-data

    .line 40
    :array_1
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOpeInfo(I)Lmiui/maml/data/Expression$OpeInfo;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 102
    new-instance v0, Lmiui/maml/data/Expression$OpeInfo;

    invoke-direct {v0}, Lmiui/maml/data/Expression$OpeInfo;-><init>()V

    .line 103
    .local v0, "info":Lmiui/maml/data/Expression$OpeInfo;
    sget-object v1, Lmiui/maml/data/Expression$OpeInfo;->mOpePriority:[I

    aget v1, v1, p0

    iput v1, v0, Lmiui/maml/data/Expression$OpeInfo;->priority:I

    .line 104
    sget-object v1, Lmiui/maml/data/Expression$OpeInfo;->mOpePar:[I

    aget v1, v1, p0

    iput v1, v0, Lmiui/maml/data/Expression$OpeInfo;->participants:I

    .line 105
    sget-object v1, Lmiui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;

    aget-object v1, v1, p0

    iput-object v1, v0, Lmiui/maml/data/Expression$OpeInfo;->str:Ljava/lang/String;

    .line 106
    return-object v0
.end method
