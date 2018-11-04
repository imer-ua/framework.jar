.class public abstract Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub;
.super Landroid/os/Binder;
.source "IContentListenerCallback.java"

# interfaces
.implements Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.contentcatcher.sdk.listener.IContentListenerCallback"

.field static final TRANSACTION_onContentReceived:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "miui.contentcatcher.sdk.listener.IContentListenerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "miui.contentcatcher.sdk.listener.IContentListenerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v2, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 46
    :sswitch_0
    const-string/jumbo v1, "miui.contentcatcher.sdk.listener.IContentListenerCallback"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v2

    .line 51
    :sswitch_1
    const-string/jumbo v1, "miui.contentcatcher.sdk.listener.IContentListenerCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    sget-object v1, Lmiui/contentcatcher/sdk/ClientCatcherResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/contentcatcher/sdk/ClientCatcherResult;

    .line 59
    :goto_0
    invoke-virtual {p0, v0}, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub;->onContentReceived(Lmiui/contentcatcher/sdk/ClientCatcherResult;)V

    .line 60
    return v2

    .line 57
    :cond_0
    const/4 v0, 0x0

    .local v0, "_arg0":Lmiui/contentcatcher/sdk/ClientCatcherResult;
    goto :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
