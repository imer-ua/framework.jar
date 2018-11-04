.class public Lcom/miui/internal/search/RankedCursor;
.super Landroid/database/AbstractCursor;
.source "RankedCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/search/RankedCursor$ScoredData;
    }
.end annotation


# instance fields
.field private final columnCount:I

.field private final columnNames:[Ljava/lang/String;

.field private data:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/internal/search/RankedCursor$ScoredData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/miui/internal/search/RankedCursor;->columnNames:[Ljava/lang/String;

    .line 41
    array-length v0, p1

    iput v0, p0, Lcom/miui/internal/search/RankedCursor;->columnCount:I

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->setExtras(Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method private get(I)Ljava/lang/Object;
    .locals 4
    .param p1, "column"    # I

    .prologue
    .line 75
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/miui/internal/search/RankedCursor;->columnCount:I

    if-lt p1, v1, :cond_1

    .line 76
    :cond_0
    new-instance v1, Landroid/database/CursorIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Requested column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 77
    const-string/jumbo v3, ", # of columns: "

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 77
    iget v3, p0, Lcom/miui/internal/search/RankedCursor;->columnCount:I

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_1
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getPosition()I

    move-result v0

    .line 80
    .local v0, "position":I
    if-gez v0, :cond_2

    .line 81
    new-instance v1, Landroid/database/CursorIndexOutOfBoundsException;

    const-string/jumbo v2, "Before first row."

    invoke-direct {v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_2
    invoke-virtual {p0}, Lcom/miui/internal/search/RankedCursor;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 84
    new-instance v1, Landroid/database/CursorIndexOutOfBoundsException;

    const-string/jumbo v2, "After last row."

    invoke-direct {v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/search/RankedCursor$ScoredData;

    invoke-static {v1, p1}, Lcom/miui/internal/search/RankedCursor$ScoredData;->-wrap0(Lcom/miui/internal/search/RankedCursor$ScoredData;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addRow(D[Ljava/lang/String;)V
    .locals 5
    .param p1, "score"    # D
    .param p3, "columnValues"    # [Ljava/lang/String;

    .prologue
    .line 58
    array-length v2, p3

    iget v3, p0, Lcom/miui/internal/search/RankedCursor;->columnCount:I

    if-eq v2, v3, :cond_0

    .line 59
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "columnNames.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 60
    iget v4, p0, Lcom/miui/internal/search/RankedCursor;->columnCount:I

    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 60
    const-string/jumbo v4, ", columnValues.length = "

    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 61
    array-length v4, p3

    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_0
    new-instance v1, Lcom/miui/internal/search/RankedCursor$ScoredData;

    invoke-direct {v1, p1, p2, p3}, Lcom/miui/internal/search/RankedCursor$ScoredData;-><init>(D[Ljava/lang/String;)V

    .line 65
    .local v1, "newData":Lcom/miui/internal/search/RankedCursor$ScoredData;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 66
    iget-object v2, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/search/RankedCursor$ScoredData;

    invoke-virtual {v1, v2}, Lcom/miui/internal/search/RankedCursor$ScoredData;->compareTo(Lcom/miui/internal/search/RankedCursor$ScoredData;)I

    move-result v2

    if-lez v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 68
    return-void

    .line 65
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_2
    iget-object v2, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 149
    .local v0, "value":Ljava/lang/Object;
    check-cast v0, [B

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/internal/search/RankedCursor;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 4
    .param p1, "column"    # I

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 141
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    return-wide v2

    .line 142
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    nop

    nop

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    return-wide v2

    .line 143
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    return-wide v2
.end method

.method public getFloat(I)F
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 133
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 134
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    nop

    nop

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    return v1

    .line 135
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 118
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    nop

    nop

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1

    .line 119
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getLong(I)J
    .locals 4
    .param p1, "column"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    return-wide v2

    .line 126
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    nop

    nop

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 127
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public getShort(I)S
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 110
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    nop

    nop

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    return v1

    .line 111
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    return v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "column"    # I

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    return-object v1

    .line 103
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getType(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
