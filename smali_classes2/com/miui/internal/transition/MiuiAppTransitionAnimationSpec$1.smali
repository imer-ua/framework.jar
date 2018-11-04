.class final Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec$1;
.super Ljava/lang/Object;
.source "MiuiAppTransitionAnimationSpec.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 42
    new-instance v0, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    invoke-direct {v0, p1}, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 47
    new-array v0, p1, [Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec$1;->newArray(I)[Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    move-result-object v0

    return-object v0
.end method
