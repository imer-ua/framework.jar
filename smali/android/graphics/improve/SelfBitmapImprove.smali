.class public Landroid/graphics/improve/SelfBitmapImprove;
.super Ljava/lang/Object;
.source "SelfBitmapImprove.java"

# interfaces
.implements Landroid/graphics/improve/BitmapImproveAble;


# static fields
.field private static final CLASS_MODELS:Ljava/lang/String; = "com.xiaomi.sr.models.MaceSRModel"


# instance fields
.field private mType:I

.field private processImage:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public improveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 36
    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v2, p0, Landroid/graphics/improve/SelfBitmapImprove;->processImage:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    iget v4, p0, Landroid/graphics/improve/SelfBitmapImprove;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .local v1, "result":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/improve/SelfBitmapImprove;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    .line 40
    return-object v1

    .line 41
    .end local v1    # "result":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    :try_start_3
    invoke-virtual {p0}, Landroid/graphics/improve/SelfBitmapImprove;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 48
    return-object v6

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 44
    :try_start_4
    invoke-virtual {p0}, Landroid/graphics/improve/SelfBitmapImprove;->release()V

    .line 43
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 36
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public init(Landroid/content/Context;I)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 22
    :try_start_0
    const-string/jumbo v2, "com.xiaomi.sr.models.MaceSRModel"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 23
    .local v1, "imageAIKitClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput p2, p0, Landroid/graphics/improve/SelfBitmapImprove;->mType:I

    .line 24
    const-string/jumbo v2, "processImage"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/improve/SelfBitmapImprove;->processImage:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return v7

    .line 25
    .end local v1    # "imageAIKitClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    return v6
.end method

.method public release()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
