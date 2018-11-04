.class public Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
.super Ljava/lang/Object;
.source "MiuiAppTransitionAnimationSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public final mRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec$1;

    invoke-direct {v0}, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec$1;-><init>()V

    .line 38
    sput-object v0, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->mBitmap:Landroid/graphics/Bitmap;

    .line 18
    iput-object p2, p0, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->mRect:Landroid/graphics/Rect;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->mBitmap:Landroid/graphics/Bitmap;

    .line 23
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->mRect:Landroid/graphics/Rect;

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 30
    iget-object v0, p0, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 28
    return-void
.end method
