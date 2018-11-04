.class Landroid/hardware/CameraInjector$CameraExInfo;
.super Ljava/lang/Object;
.source "CameraInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/CameraInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraExInfo"
.end annotation


# instance fields
.field private mCameraOrientationEventListener:Landroid/hardware/CameraInjector$CameraOrientationEventListener;

.field private mCameraParameterInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEndTime:J

.field private mReverseFrameData:Z

.field private mStartTime:J


# direct methods
.method static synthetic -get0(Landroid/hardware/CameraInjector$CameraExInfo;)Landroid/hardware/CameraInjector$CameraOrientationEventListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mCameraOrientationEventListener:Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/CameraInjector$CameraExInfo;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mCameraParameterInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/CameraInjector$CameraExInfo;)J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mEndTime:J

    return-wide v0
.end method

.method static synthetic -get3(Landroid/hardware/CameraInjector$CameraExInfo;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mReverseFrameData:Z

    return v0
.end method

.method static synthetic -get4(Landroid/hardware/CameraInjector$CameraExInfo;)J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mStartTime:J

    return-wide v0
.end method

.method static synthetic -set0(Landroid/hardware/CameraInjector$CameraExInfo;Landroid/hardware/CameraInjector$CameraOrientationEventListener;)Landroid/hardware/CameraInjector$CameraOrientationEventListener;
    .locals 0

    iput-object p1, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mCameraOrientationEventListener:Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    return-object p1
.end method

.method static synthetic -set1(Landroid/hardware/CameraInjector$CameraExInfo;J)J
    .locals 1

    iput-wide p1, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mEndTime:J

    return-wide p1
.end method

.method static synthetic -set2(Landroid/hardware/CameraInjector$CameraExInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mReverseFrameData:Z

    return p1
.end method

.method private constructor <init>(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mCameraParameterInfo:Ljava/util/HashMap;

    .line 56
    iget-object v0, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mCameraParameterInfo:Ljava/util/HashMap;

    const-string/jumbo v1, "camera-id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraInjector$CameraExInfo;->mStartTime:J

    .line 54
    return-void
.end method

.method synthetic constructor <init>(ILandroid/hardware/CameraInjector$CameraExInfo;)V
    .locals 0
    .param p1, "cameraId"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/CameraInjector$CameraExInfo;-><init>(I)V

    return-void
.end method
