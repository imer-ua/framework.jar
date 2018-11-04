.class Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;
.super Ljava/lang/Object;
.source "BitmapProvider.java"

# interfaces
.implements Lmiui/maml/ResourceManager$AsyncLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;


# direct methods
.method constructor <init>(Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;)V
    .locals 0
    .param p1, "this$1"    # Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    .prologue
    .line 188
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$1:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Ljava/lang/String;Lmiui/maml/ResourceManager$BitmapInfo;)V
    .locals 5
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "info"    # Lmiui/maml/ResourceManager$BitmapInfo;

    .prologue
    const/4 v0, 0x0

    .line 192
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$1:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    iget-object v1, v1, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$1:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    iget-object v2, v2, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    const-string/jumbo v2, "BitmapProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "load image async complete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " last cached "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$1:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-static {v4}, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->-get0(Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$1:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    iget-object v2, v2, Lmiui/maml/elements/BitmapProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    if-nez p2, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 196
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$1:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-static {v0, p1}, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->-set0(Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$1:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    const/4 v2, 0x0

    iput-object v2, v0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v1

    .line 202
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$1:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    iget-object v0, v0, Lmiui/maml/elements/BitmapProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    .line 191
    return-void

    .line 195
    :cond_0
    :try_start_1
    iget-object v0, p2, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 199
    :cond_1
    const-string/jumbo v0, "BitmapProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "load image async complete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not equals "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$1:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    iget-object v3, v3, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
