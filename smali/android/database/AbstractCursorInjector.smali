.class final Landroid/database/AbstractCursorInjector;
.super Ljava/lang/Object;
.source "AbstractCursorInjector.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static before_moveToPosition(Landroid/database/AbstractCursor;I)V
    .locals 2
    .param p0, "thiz"    # Landroid/database/AbstractCursor;
    .param p1, "position"    # I

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    .line 25
    .local v0, "count":I
    if-lt p1, v0, :cond_0

    .line 26
    return-void

    .line 30
    :cond_0
    if-gez p1, :cond_1

    .line 31
    return-void

    .line 35
    :cond_1
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    if-ne p1, v1, :cond_2

    .line 36
    return-void

    .line 39
    :cond_2
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p0, v1, p1}, Landroid/database/AbstractCursor;->onMove(II)Z

    .line 22
    return-void
.end method

.method public static calibRowCountForReadRow(Landroid/database/AbstractCursor;I)V
    .locals 0
    .param p0, "thiz"    # Landroid/database/AbstractCursor;
    .param p1, "position"    # I

    .prologue
    .line 43
    invoke-static {p0, p1}, Landroid/database/AbstractCursorInjector;->before_moveToPosition(Landroid/database/AbstractCursor;I)V

    .line 42
    return-void
.end method

.method public static checkPosition(Landroid/database/AbstractCursor;I)Z
    .locals 2
    .param p0, "thiz"    # Landroid/database/AbstractCursor;
    .param p1, "position"    # I

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    .line 48
    .local v0, "count":I
    if-lt p1, v0, :cond_0

    .line 49
    iput v0, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 50
    const/4 v1, 0x0

    return v1

    .line 52
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
