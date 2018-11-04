.class public Landroid/graphics/improve/KingSoftBitmapImprove;
.super Ljava/lang/Object;
.source "KingSoftBitmapImprove.java"

# interfaces
.implements Landroid/graphics/improve/BitmapImproveAble;


# static fields
.field private static final CLASS_AIKIT:Ljava/lang/String; = "com.ksyun.ai.sr.ImageAIKit"

.field private static final CLASS_CONST:Ljava/lang/String; = "com.ksyun.ai.sr.Constants"


# instance fields
.field private mType:I

.field private processImage:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public improveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 42
    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v2, p0, Landroid/graphics/improve/KingSoftBitmapImprove;->processImage:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    iget v4, p0, Landroid/graphics/improve/KingSoftBitmapImprove;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .local v1, "result":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/improve/KingSoftBitmapImprove;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    .line 46
    return-object v1

    .line 47
    .end local v1    # "result":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    :try_start_3
    invoke-virtual {p0}, Landroid/graphics/improve/KingSoftBitmapImprove;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 54
    return-object v6

    .line 49
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    .line 50
    :try_start_4
    invoke-virtual {p0}, Landroid/graphics/improve/KingSoftBitmapImprove;->release()V

    .line 49
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 42
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public init(Landroid/content/Context;I)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 26
    :try_start_0
    const-string/jumbo v3, "com.ksyun.ai.sr.Constants"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 27
    .local v0, "consClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "com.ksyun.ai.sr.ImageAIKit"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 29
    .local v2, "imageAIKitClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "MODEL_TYPE_2X"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Landroid/graphics/improve/KingSoftBitmapImprove;->mType:I

    .line 30
    const-string/jumbo v3, "processImage"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Landroid/graphics/improve/KingSoftBitmapImprove;->processImage:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return v8

    .line 31
    .end local v0    # "consClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "imageAIKitClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    return v7
.end method

.method public release()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
