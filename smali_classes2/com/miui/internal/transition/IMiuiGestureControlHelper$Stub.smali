.class public abstract Lcom/miui/internal/transition/IMiuiGestureControlHelper$Stub;
.super Landroid/os/Binder;
.source "IMiuiGestureControlHelper.java"

# interfaces
.implements Lcom/miui/internal/transition/IMiuiGestureControlHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/transition/IMiuiGestureControlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/transition/IMiuiGestureControlHelper$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.internal.transition.IMiuiGestureControlHelper"

.field static final TRANSACTION_getSpec:I = 0x1

.field static final TRANSACTION_notifyGestureAnimationCancel:I = 0x4

.field static final TRANSACTION_notifyGestureAnimationEnd:I = 0x5

.field static final TRANSACTION_notifyGestureAnimationStart:I = 0x3

.field static final TRANSACTION_notifyGestureStartRecents:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.miui.internal.transition.IMiuiGestureControlHelper"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/internal/transition/IMiuiGestureControlHelper;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "com.miui.internal.transition.IMiuiGestureControlHelper"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/miui/internal/transition/IMiuiGestureControlHelper$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/internal/transition/IMiuiGestureControlHelper$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 43
    :sswitch_0
    const-string/jumbo v3, "com.miui.internal.transition.IMiuiGestureControlHelper"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v4

    .line 48
    :sswitch_1
    const-string/jumbo v3, "com.miui.internal.transition.IMiuiGestureControlHelper"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/transition/IMiuiGestureControlHelper$Stub;->getSpec(Ljava/lang/String;I)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    move-result-object v2

    .line 54
    .local v2, "_result":Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {v2, p3, v4}, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    :goto_0
    return v4

    .line 60
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
    :sswitch_2
    const-string/jumbo v3, "com.miui.internal.transition.IMiuiGestureControlHelper"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiGestureControlHelper$Stub;->notifyGestureStartRecents()V

    .line 68
    return v4

    .line 72
    :sswitch_3
    const-string/jumbo v3, "com.miui.internal.transition.IMiuiGestureControlHelper"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiGestureControlHelper$Stub;->notifyGestureAnimationStart()V

    .line 74
    return v4

    .line 78
    :sswitch_4
    const-string/jumbo v3, "com.miui.internal.transition.IMiuiGestureControlHelper"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiGestureControlHelper$Stub;->notifyGestureAnimationCancel()V

    .line 80
    return v4

    .line 84
    :sswitch_5
    const-string/jumbo v3, "com.miui.internal.transition.IMiuiGestureControlHelper"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiGestureControlHelper$Stub;->notifyGestureAnimationEnd()V

    .line 86
    return v4

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
