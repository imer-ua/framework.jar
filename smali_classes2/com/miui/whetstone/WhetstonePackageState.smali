.class public Lcom/miui/whetstone/WhetstonePackageState;
.super Ljava/lang/Object;
.source "WhetstonePackageState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstonePackageState$1;
    }
.end annotation


# static fields
.field public static final CLOUD_USERID:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/whetstone/WhetstonePackageState;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEBUG:Z

.field public static final SERVICE_RESTART:Ljava/lang/String; = "Restart: AMS"

.field public static final TAG:Ljava/lang/String; = "WhetstonePackageState"

.field public static final WPS_CHECK_FALSE:I = -0x1

.field public static final WPS_CHECK_TRUE:I = 0x1

.field public static final WPS_FEATURE_ACTIVITY:I = 0x1

.field public static final WPS_FEATURE_ALL_OFF:I = 0x0

.field public static final WPS_FEATURE_ALL_OPEN:I = 0xf

.field public static final WPS_FEATURE_PROVIDER:I = 0x8

.field public static final WPS_FEATURE_RECEIVER:I = 0x4

.field public static final WPS_FEATURE_SERVICE:I = 0x2

.field public static final WPS_START_BY_ACTIVITY:I = 0x1

.field public static final WPS_START_BY_ALL:I = 0xf

.field public static final WPS_START_BY_DEFAULT:I = 0x0

.field public static final WPS_START_BY_PROVIDER:I = 0x8

.field public static final WPS_START_BY_RECEIVER:I = 0x4

.field public static final WPS_START_BY_SERVICE:I = 0x2

.field public static final WPS_START_FORBIDDEN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/miui/whetstone/WhetstoneManager;->DEBUG:Z

    sput-boolean v0, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    .line 55
    new-instance v0, Lcom/miui/whetstone/WhetstonePackageState$1;

    invoke-direct {v0}, Lcom/miui/whetstone/WhetstonePackageState$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/WhetstonePackageState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 73
    return-void
.end method
