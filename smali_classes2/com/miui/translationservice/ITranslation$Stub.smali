.class public abstract Lcom/miui/translationservice/ITranslation$Stub;
.super Landroid/os/Binder;
.source "ITranslation.java"

# interfaces
.implements Lcom/miui/translationservice/ITranslation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/translationservice/ITranslation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/translationservice/ITranslation$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.translationservice.ITranslation"

.field static final TRANSACTION_translate:I = 0x1

.field static final TRANSACTION_translateByEngine:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.miui.translationservice.ITranslation"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/translationservice/ITranslation;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-object v1

    .line 26
    :cond_0
    const-string/jumbo v1, "com.miui.translationservice.ITranslation"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/translationservice/ITranslation;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/miui/translationservice/ITranslation;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/miui/translationservice/ITranslation$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/translationservice/ITranslation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 82
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 42
    :sswitch_0
    const-string/jumbo v0, "com.miui.translationservice.ITranslation"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    return v0

    .line 47
    :sswitch_1
    const-string/jumbo v0, "com.miui.translationservice.ITranslation"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 51
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 53
    .local v10, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/translationservice/ITranslationRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/translationservice/ITranslationRemoteCallback;

    move-result-object v11

    .line 56
    .local v11, "_arg3":Lcom/miui/translationservice/ITranslationRemoteCallback;
    invoke-virtual {p0, v9, v10, v3, v11}, Lcom/miui/translationservice/ITranslation$Stub;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V

    .line 57
    const/4 v0, 0x1

    return v0

    .line 61
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v11    # "_arg3":Lcom/miui/translationservice/ITranslationRemoteCallback;
    :sswitch_2
    const-string/jumbo v0, "com.miui.translationservice.ITranslation"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 65
    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 67
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 69
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 71
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/translationservice/ITranslationRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/translationservice/ITranslationRemoteCallback;

    move-result-object v8

    .local v8, "_arg7":Lcom/miui/translationservice/ITranslationRemoteCallback;
    move-object v0, p0

    .line 78
    invoke-virtual/range {v0 .. v8}, Lcom/miui/translationservice/ITranslation$Stub;->translateByEngine(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V

    .line 79
    const/4 v0, 0x1

    return v0

    .line 63
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":Lcom/miui/translationservice/ITranslationRemoteCallback;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
