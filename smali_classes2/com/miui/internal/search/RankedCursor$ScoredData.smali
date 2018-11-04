.class Lcom/miui/internal/search/RankedCursor$ScoredData;
.super Ljava/lang/Object;
.source "RankedCursor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/search/RankedCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScoredData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/internal/search/RankedCursor$ScoredData;",
        ">;"
    }
.end annotation


# instance fields
.field private data:[Ljava/lang/String;

.field private score:D


# direct methods
.method static synthetic -wrap0(Lcom/miui/internal/search/RankedCursor$ScoredData;I)Ljava/lang/Object;
    .locals 1
    .param p1, "column"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor$ScoredData;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(D[Ljava/lang/String;)V
    .locals 1
    .param p1, "score"    # D
    .param p3, "data"    # [Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/miui/internal/search/RankedCursor$ScoredData;->score:D

    .line 20
    iput-object p3, p0, Lcom/miui/internal/search/RankedCursor$ScoredData;->data:[Ljava/lang/String;

    .line 18
    return-void
.end method

.method private get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/search/RankedCursor$ScoredData;->data:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/miui/internal/search/RankedCursor$ScoredData;)I
    .locals 4
    .param p1, "o"    # Lcom/miui/internal/search/RankedCursor$ScoredData;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/miui/internal/search/RankedCursor$ScoredData;->score:D

    iget-wide v2, p1, Lcom/miui/internal/search/RankedCursor$ScoredData;->score:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 30
    :cond_0
    iget-wide v0, p0, Lcom/miui/internal/search/RankedCursor$ScoredData;->score:D

    iget-wide v2, p1, Lcom/miui/internal/search/RankedCursor$ScoredData;->score:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 31
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lcom/miui/internal/search/RankedCursor$ScoredData;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/miui/internal/search/RankedCursor$ScoredData;->compareTo(Lcom/miui/internal/search/RankedCursor$ScoredData;)I

    move-result v0

    return v0
.end method
