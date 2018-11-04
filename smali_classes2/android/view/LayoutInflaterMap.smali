.class public Landroid/view/LayoutInflaterMap;
.super Ljava/lang/Object;
.source "LayoutInflaterMap.java"


# static fields
.field private static volatile sLayoutMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLayoutPairs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const v0, 0x1103002e

    const v1, 0x1103000e

    .line 15
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildLayoutMap(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v3, Landroid/view/LayoutInflaterMap;->sLayoutMap:Landroid/util/SparseArray;

    if-eqz v3, :cond_0

    .line 27
    return-void

    .line 30
    :cond_0
    const-class v4, Landroid/view/LayoutInflaterMap;

    monitor-enter v4

    .line 31
    :try_start_0
    sget-object v3, Landroid/view/LayoutInflaterMap;->sLayoutMap:Landroid/util/SparseArray;

    if-nez v3, :cond_3

    .line 32
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 34
    .local v2, "layoutMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 35
    sget-object v3, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    aget v3, v3, v0

    invoke-static {v3}, Landroid/view/LayoutInflaterMap;->needResolveReference(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v5, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    aget v5, v5, v0

    invoke-static {v3, v5}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v1

    .line 37
    .local v1, "index":I
    :goto_1
    sget-object v3, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    add-int/lit8 v5, v0, 0x1

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 36
    .end local v1    # "index":I
    :cond_1
    sget-object v3, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    aget v1, v3, v0

    .restart local v1    # "index":I
    goto :goto_1

    .line 39
    .end local v1    # "index":I
    :cond_2
    sput-object v2, Landroid/view/LayoutInflaterMap;->sLayoutMap:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "i":I
    .end local v2    # "layoutMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    :cond_3
    monitor-exit v4

    .line 25
    return-void

    .line 30
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method static getResourceId(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resource"    # I

    .prologue
    .line 45
    move v1, p1

    .line 46
    .local v1, "newResource":I
    invoke-static {p0}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-static {p0}, Landroid/view/LayoutInflaterMap;->buildLayoutMap(Landroid/content/Context;)V

    .line 48
    sget-object v2, Landroid/view/LayoutInflaterMap;->sLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 49
    .local v0, "layout":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 54
    .end local v0    # "layout":Ljava/lang/Integer;
    :cond_0
    return v1
.end method

.method private static needResolveReference(I)Z
    .locals 2
    .param p0, "layoutId"    # I

    .prologue
    .line 22
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    const/high16 v1, 0x1000000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
