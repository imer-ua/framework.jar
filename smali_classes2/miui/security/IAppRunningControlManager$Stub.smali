.class public abstract Lmiui/security/IAppRunningControlManager$Stub;
.super Landroid/os/Binder;
.source "IAppRunningControlManager.java"

# interfaces
.implements Lmiui/security/IAppRunningControlManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/IAppRunningControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/IAppRunningControlManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.security.IAppRunningControlManager"

.field static final TRANSACTION_getBlockActivityIntent:I = 0x2

.field static final TRANSACTION_getNotDisallowList:I = 0x5

.field static final TRANSACTION_matchRule:I = 0x4

.field static final TRANSACTION_setBlackListEnable:I = 0x3

.field static final TRANSACTION_setDisallowRunningList:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "miui.security.IAppRunningControlManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/security/IAppRunningControlManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "miui.security.IAppRunningControlManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/security/IAppRunningControlManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lmiui/security/IAppRunningControlManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lmiui/security/IAppRunningControlManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/security/IAppRunningControlManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    .line 45
    :sswitch_0
    const-string/jumbo v10, "miui.security.IAppRunningControlManager"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v10, 0x1

    return v10

    .line 50
    :sswitch_1
    const-string/jumbo v10, "miui.security.IAppRunningControlManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 54
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    .line 55
    sget-object v10, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 60
    :goto_0
    invoke-virtual {p0, v1, v4}, Lmiui/security/IAppRunningControlManager$Stub;->setDisallowRunningList(Ljava/util/List;Landroid/content/Intent;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    const/4 v10, 0x1

    return v10

    .line 58
    :cond_0
    const/4 v4, 0x0

    .local v4, "_arg1":Landroid/content/Intent;
    goto :goto_0

    .line 66
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg1":Landroid/content/Intent;
    :sswitch_2
    const-string/jumbo v10, "miui.security.IAppRunningControlManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    .line 71
    sget-object v10, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 77
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    const/4 v5, 0x1

    .line 79
    .local v5, "_arg2":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 80
    .local v6, "_arg3":I
    invoke-virtual {p0, v0, v4, v5, v6}, Lmiui/security/IAppRunningControlManager$Stub;->getBlockActivityIntent(Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;

    move-result-object v7

    .line 81
    .local v7, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v7, :cond_3

    .line 83
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    const/4 v10, 0x1

    invoke-virtual {v7, p3, v10}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 89
    :goto_3
    const/4 v10, 0x1

    return v10

    .line 74
    .end local v5    # "_arg2":Z
    .end local v6    # "_arg3":I
    .end local v7    # "_result":Landroid/content/Intent;
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/Intent;
    goto :goto_1

    .line 77
    .end local v4    # "_arg1":Landroid/content/Intent;
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Z
    goto :goto_2

    .line 87
    .restart local v6    # "_arg3":I
    .restart local v7    # "_result":Landroid/content/Intent;
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 93
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg2":Z
    .end local v6    # "_arg3":I
    .end local v7    # "_result":Landroid/content/Intent;
    :sswitch_3
    const-string/jumbo v10, "miui.security.IAppRunningControlManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    const/4 v2, 0x1

    .line 96
    .local v2, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v2}, Lmiui/security/IAppRunningControlManager$Stub;->setBlackListEnable(Z)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    const/4 v10, 0x1

    return v10

    .line 95
    .end local v2    # "_arg0":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 102
    :sswitch_4
    const-string/jumbo v10, "miui.security.IAppRunningControlManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 107
    .local v3, "_arg1":I
    invoke-virtual {p0, v0, v3}, Lmiui/security/IAppRunningControlManager$Stub;->matchRule(Ljava/lang/String;I)Z

    move-result v9

    .line 108
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v9, :cond_5

    const/4 v10, 0x1

    :goto_5
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    const/4 v10, 0x1

    return v10

    .line 109
    :cond_5
    const/4 v10, 0x0

    goto :goto_5

    .line 114
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v9    # "_result":Z
    :sswitch_5
    const-string/jumbo v10, "miui.security.IAppRunningControlManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lmiui/security/IAppRunningControlManager$Stub;->getNotDisallowList()Ljava/util/List;

    move-result-object v8

    .line 116
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 118
    const/4 v10, 0x1

    return v10

    .line 41
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
