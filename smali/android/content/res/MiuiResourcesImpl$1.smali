.class final Landroid/content/res/MiuiResourcesImpl$1;
.super Ljava/lang/Thread;
.source "MiuiResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/res/MiuiResourcesImpl;->delayGCAtlasPreloadedBitmaps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$preload:Landroid/util/LongSparseArray;


# direct methods
.method constructor <init>(Landroid/util/LongSparseArray;)V
    .locals 0

    .prologue
    .line 265
    .local p1, "val$preload":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    iput-object p1, p0, Landroid/content/res/MiuiResourcesImpl$1;->val$preload:Landroid/util/LongSparseArray;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 268
    const-wide/16 v2, 0x7530

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    iget-object v1, p0, Landroid/content/res/MiuiResourcesImpl$1;->val$preload:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 266
    return-void

    .line 269
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
