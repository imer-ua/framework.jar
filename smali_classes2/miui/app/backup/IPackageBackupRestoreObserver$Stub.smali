.class public abstract Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;
.super Landroid/os/Binder;
.source "IPackageBackupRestoreObserver.java"

# interfaces
.implements Lmiui/app/backup/IPackageBackupRestoreObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/IPackageBackupRestoreObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.app.backup.IPackageBackupRestoreObserver"

.field static final TRANSACTION_onBackupEnd:I = 0x2

.field static final TRANSACTION_onBackupStart:I = 0x1

.field static final TRANSACTION_onCustomProgressChange:I = 0x7

.field static final TRANSACTION_onError:I = 0x6

.field static final TRANSACTION_onRestoreEnd:I = 0x4

.field static final TRANSACTION_onRestoreError:I = 0x5

.field static final TRANSACTION_onRestoreStart:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IPackageBackupRestoreObserver;
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
    const-string/jumbo v1, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/app/backup/IPackageBackupRestoreObserver;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lmiui/app/backup/IPackageBackupRestoreObserver;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v8, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 45
    :sswitch_0
    const-string/jumbo v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v8

    .line 50
    :sswitch_1
    const-string/jumbo v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onBackupStart(Ljava/lang/String;I)V

    .line 56
    return v8

    .line 60
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_2
    const-string/jumbo v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 65
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onBackupEnd(Ljava/lang/String;I)V

    .line 66
    return v8

    .line 70
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_3
    const-string/jumbo v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onRestoreStart(Ljava/lang/String;I)V

    .line 76
    return v8

    .line 80
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_4
    const-string/jumbo v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 85
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onRestoreEnd(Ljava/lang/String;I)V

    .line 86
    return v8

    .line 90
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_5
    const-string/jumbo v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 96
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 97
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onRestoreError(Ljava/lang/String;II)V

    .line 98
    return v8

    .line 102
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_6
    const-string/jumbo v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 109
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onError(Ljava/lang/String;II)V

    .line 110
    return v8

    .line 114
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_7
    const-string/jumbo v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 122
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 124
    .local v4, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg4":J
    move-object v0, p0

    .line 125
    invoke-virtual/range {v0 .. v7}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onCustomProgressChange(Ljava/lang/String;IIJJ)V

    .line 126
    return v8

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
