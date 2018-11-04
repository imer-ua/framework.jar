.class Landroid/os/statistics/TreeNode;
.super Ljava/lang/Object;
.source "StringDictTree.java"


# instance fields
.field private mChildNodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Landroid/os/statistics/TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private mString:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/statistics/TreeNode;->mString:Ljava/lang/String;

    .line 18
    return-void
.end method

.method private insertToChild(Ljava/lang/String;I)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "idx"    # I

    .prologue
    .line 36
    iget-object v2, p0, Landroid/os/statistics/TreeNode;->mChildNodes:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 37
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Landroid/os/statistics/TreeNode;->mChildNodes:Ljava/util/HashMap;

    .line 39
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p2, v2, :cond_2

    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 41
    .local v0, "header":C
    iget-object v2, p0, Landroid/os/statistics/TreeNode;->mChildNodes:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/statistics/TreeNode;

    .line 42
    .local v1, "insertNode":Landroid/os/statistics/TreeNode;
    if-nez v1, :cond_1

    .line 43
    new-instance v1, Landroid/os/statistics/TreeNode;

    .end local v1    # "insertNode":Landroid/os/statistics/TreeNode;
    invoke-direct {v1}, Landroid/os/statistics/TreeNode;-><init>()V

    .line 44
    .restart local v1    # "insertNode":Landroid/os/statistics/TreeNode;
    iget-object v2, p0, Landroid/os/statistics/TreeNode;->mChildNodes:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_1
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/os/statistics/TreeNode;->insert(Ljava/lang/String;I)V

    .line 35
    .end local v0    # "header":C
    .end local v1    # "insertNode":Landroid/os/statistics/TreeNode;
    :cond_2
    return-void
.end method


# virtual methods
.method find(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "idx"    # I

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0}, Landroid/os/statistics/TreeNode;->isTerminal()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/os/statistics/TreeNode;->mString:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 52
    iget-object v1, p0, Landroid/os/statistics/TreeNode;->mString:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 53
    :cond_0
    iget-object v2, p0, Landroid/os/statistics/TreeNode;->mChildNodes:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p2, v2, :cond_2

    .line 54
    iget-object v2, p0, Landroid/os/statistics/TreeNode;->mChildNodes:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/TreeNode;

    .line 55
    .local v0, "child":Landroid/os/statistics/TreeNode;
    if-eqz v0, :cond_1

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/statistics/TreeNode;->find(Ljava/lang/String;I)Z

    move-result v1

    :cond_1
    return v1

    .line 57
    .end local v0    # "child":Landroid/os/statistics/TreeNode;
    :cond_2
    return v1
.end method

.method insert(Ljava/lang/String;I)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "idx"    # I

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Landroid/os/statistics/TreeNode;->mChildNodes:Ljava/util/HashMap;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/os/statistics/TreeNode;->mString:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 24
    :cond_0
    iput-object p1, p0, Landroid/os/statistics/TreeNode;->mString:Ljava/lang/String;

    .line 22
    :cond_1
    :goto_0
    return-void

    .line 26
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/os/statistics/TreeNode;->insertToChild(Ljava/lang/String;I)V

    .line 28
    iget-object v0, p0, Landroid/os/statistics/TreeNode;->mString:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/statistics/TreeNode;->mString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 29
    iget-object v0, p0, Landroid/os/statistics/TreeNode;->mString:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroid/os/statistics/TreeNode;->insertToChild(Ljava/lang/String;I)V

    .line 30
    iput-object v1, p0, Landroid/os/statistics/TreeNode;->mString:Ljava/lang/String;

    goto :goto_0
.end method

.method isTerminal()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/os/statistics/TreeNode;->mChildNodes:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
