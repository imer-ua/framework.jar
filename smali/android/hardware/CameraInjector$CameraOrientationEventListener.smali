.class Landroid/hardware/CameraInjector$CameraOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "CameraInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/CameraInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraOrientationEventListener"
.end annotation


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/content/Context;)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 429
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 425
    const/4 v1, -0x1

    iput v1, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mOrientation:I

    .line 430
    iput-object p1, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mCamera:Landroid/hardware/Camera;

    .line 431
    iput-object p2, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mContext:Landroid/content/Context;

    .line 432
    iget-object v1, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 433
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mDisplay:Landroid/view/Display;

    .line 428
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    .line 441
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    return-void

    .line 442
    :cond_0
    iget v2, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mOrientation:I

    invoke-static {p1, v2}, Landroid/hardware/CameraInjector;->-wrap0(II)I

    move-result v2

    iput v2, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mOrientation:I

    .line 443
    iget v2, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_1

    .line 444
    iget-object v2, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 445
    .local v0, "degrees":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    .line 446
    .local v1, "newReverse":Z
    :goto_0
    invoke-static {}, Landroid/hardware/CameraInjector;->-get0()Ljava/util/WeakHashMap;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/CameraInjector$CameraExInfo;

    invoke-static {v2}, Landroid/hardware/CameraInjector$CameraExInfo;->-get3(Landroid/hardware/CameraInjector$CameraExInfo;)Z

    move-result v2

    if-eq v2, v1, :cond_1

    .line 447
    const-string/jumbo v2, "CameraInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mReverseFrameData change to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 448
    const-string/jumbo v4, " current client orientation "

    .line 447
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-static {}, Landroid/hardware/CameraInjector;->-get0()Ljava/util/WeakHashMap;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/CameraInjector$CameraExInfo;

    invoke-static {v2, v1}, Landroid/hardware/CameraInjector$CameraExInfo;->-set2(Landroid/hardware/CameraInjector$CameraExInfo;Z)Z

    .line 437
    .end local v0    # "degrees":I
    .end local v1    # "newReverse":Z
    :cond_1
    return-void

    .line 445
    .restart local v0    # "degrees":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "newReverse":Z
    goto :goto_0
.end method
