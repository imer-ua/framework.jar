.class public Lorg/apache/miui/commons/lang3/tuple/MutablePair;
.super Lorg/apache/miui/commons/lang3/tuple/Pair;
.source "MutablePair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/miui/commons/lang3/tuple/Pair",
        "<T",
        "L;",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x44c3687a6deaffd1L


# instance fields
.field public left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field public right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    .local p0, "this":Lorg/apache/miui/commons/lang3/tuple/MutablePair;, "Lorg/apache/miui/commons/lang3/tuple/MutablePair<TL;TR;>;"
    invoke-direct {p0}, Lorg/apache/miui/commons/lang3/tuple/Pair;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "TR;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/apache/miui/commons/lang3/tuple/MutablePair;, "Lorg/apache/miui/commons/lang3/tuple/MutablePair<TL;TR;>;"
    .local p1, "left":Ljava/lang/Object;, "TL;"
    .local p2, "right":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Lorg/apache/miui/commons/lang3/tuple/Pair;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/tuple/MutablePair;->left:Ljava/lang/Object;

    .line 73
    iput-object p2, p0, Lorg/apache/miui/commons/lang3/tuple/MutablePair;->right:Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/MutablePair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TR;)",
            "Lorg/apache/miui/commons/lang3/tuple/MutablePair",
            "<T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "left":Ljava/lang/Object;, "TL;"
    .local p1, "right":Ljava/lang/Object;, "TR;"
    new-instance v0, Lorg/apache/miui/commons/lang3/tuple/MutablePair;

    invoke-direct {v0, p0, p1}, Lorg/apache/miui/commons/lang3/tuple/MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getLeft()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lorg/apache/miui/commons/lang3/tuple/MutablePair;, "Lorg/apache/miui/commons/lang3/tuple/MutablePair<TL;TR;>;"
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/tuple/MutablePair;->left:Ljava/lang/Object;

    return-object v0
.end method

.method public getRight()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lorg/apache/miui/commons/lang3/tuple/MutablePair;, "Lorg/apache/miui/commons/lang3/tuple/MutablePair<TL;TR;>;"
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/tuple/MutablePair;->right:Ljava/lang/Object;

    return-object v0
.end method

.method public setLeft(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lorg/apache/miui/commons/lang3/tuple/MutablePair;, "Lorg/apache/miui/commons/lang3/tuple/MutablePair<TL;TR;>;"
    .local p1, "left":Ljava/lang/Object;, "TL;"
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/tuple/MutablePair;->left:Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public setRight(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lorg/apache/miui/commons/lang3/tuple/MutablePair;, "Lorg/apache/miui/commons/lang3/tuple/MutablePair<TL;TR;>;"
    .local p1, "right":Ljava/lang/Object;, "TR;"
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/tuple/MutablePair;->right:Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TR;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lorg/apache/miui/commons/lang3/tuple/MutablePair;, "Lorg/apache/miui/commons/lang3/tuple/MutablePair<TL;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TR;"
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/tuple/MutablePair;->getRight()Ljava/lang/Object;

    move-result-object v0

    .line 120
    .local v0, "result":Ljava/lang/Object;, "TR;"
    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/tuple/MutablePair;->setRight(Ljava/lang/Object;)V

    .line 121
    return-object v0
.end method
