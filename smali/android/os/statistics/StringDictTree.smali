.class Landroid/os/statistics/StringDictTree;
.super Landroid/os/statistics/TreeNode;
.source "StringDictTree.java"


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 4
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 7
    invoke-direct {p0}, Landroid/os/statistics/TreeNode;-><init>()V

    .line 8
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, p1, v1

    .line 9
    .local v0, "item":Ljava/lang/String;
    invoke-super {p0, v0, v2}, Landroid/os/statistics/TreeNode;->insert(Ljava/lang/String;I)V

    .line 8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    .end local v0    # "item":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public find(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/os/statistics/TreeNode;->find(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
