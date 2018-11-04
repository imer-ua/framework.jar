.class public Landroid/graphics/improve/SuperResolution$ImproveInfo;
.super Ljava/lang/Object;
.source "SuperResolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/improve/SuperResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImproveInfo"
.end annotation


# instance fields
.field clsName:Ljava/lang/String;

.field drawable:Landroid/graphics/drawable/Drawable;

.field newBitmap:Landroid/graphics/Bitmap;

.field oldBitmap:Landroid/graphics/Bitmap;

.field startTime:J

.field private weakImg:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 438
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution$ImproveInfo;->weakImg:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution$ImproveInfo;->weakImg:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0

    .line 441
    :cond_0
    return-object v1
.end method

.method public setImageView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 434
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution$ImproveInfo;->weakImg:Ljava/lang/ref/WeakReference;

    .line 433
    return-void
.end method
