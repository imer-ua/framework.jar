.class public final Landroid/bluetooth/BleScanWrapper;
.super Ljava/lang/Object;
.source "BleScanWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BleScanWrapper$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BleScanWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClientIf:I

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpPackageName:Ljava/lang/String;

.field private final mResultStorages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSettings:Landroid/bluetooth/le/ScanSettings;

.field private final mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Landroid/bluetooth/BleScanWrapper$1;

    invoke-direct {v0}, Landroid/bluetooth/BleScanWrapper$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BleScanWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    return-void
.end method

.method public constructor <init>(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p4, "workSource"    # Landroid/os/WorkSource;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/os/WorkSource;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .local p5, "resultStorages":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/bluetooth/le/ResultStorageDescriptor;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    .line 28
    iput-object p2, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    .line 29
    iput-object p3, p0, Landroid/bluetooth/BleScanWrapper;->mFilters:Ljava/util/List;

    .line 30
    iput-object p4, p0, Landroid/bluetooth/BleScanWrapper;->mWorkSource:Landroid/os/WorkSource;

    .line 31
    iput-object p5, p0, Landroid/bluetooth/BleScanWrapper;->mResultStorages:Ljava/util/List;

    .line 32
    iput-object p6, p0, Landroid/bluetooth/BleScanWrapper;->mOpPackageName:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    sget-object v1, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanSettings;

    iput-object v1, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    .line 51
    :goto_0
    sget-object v1, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BleScanWrapper;->mFilters:Ljava/util/List;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    iput-object v1, p0, Landroid/bluetooth/BleScanWrapper;->mWorkSource:Landroid/os/WorkSource;

    .line 57
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 58
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BleScanWrapper;->mResultStorages:Ljava/util/List;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BleScanWrapper;->mOpPackageName:Ljava/lang/String;

    .line 44
    return-void

    .line 49
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_0
    iput-object v2, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    goto :goto_0

    .line 55
    :cond_1
    iput-object v2, p0, Landroid/bluetooth/BleScanWrapper;->mWorkSource:Landroid/os/WorkSource;

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/BleScanWrapper;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/bluetooth/BleScanWrapper;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    if-ne p0, p1, :cond_0

    .line 108
    return v1

    .line 110
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 111
    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 113
    check-cast v0, Landroid/bluetooth/BleScanWrapper;

    .line 114
    .local v0, "other":Landroid/bluetooth/BleScanWrapper;
    iget v3, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    iget v4, v0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    if-ne v3, v4, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public startScan(Landroid/bluetooth/IBluetoothGatt;)V
    .locals 8
    .param p1, "gatt"    # Landroid/bluetooth/IBluetoothGatt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 36
    iget v1, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    iget-object v4, p0, Landroid/bluetooth/BleScanWrapper;->mFilters:Ljava/util/List;

    .line 37
    iget-object v5, p0, Landroid/bluetooth/BleScanWrapper;->mWorkSource:Landroid/os/WorkSource;

    iget-object v6, p0, Landroid/bluetooth/BleScanWrapper;->mResultStorages:Ljava/util/List;

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 36
    const/4 v2, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Landroid/bluetooth/IBluetoothGatt;->startScan(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public stopScan(Landroid/bluetooth/IBluetoothGatt;)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/IBluetoothGatt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    iget v0, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/bluetooth/IBluetoothGatt;->stopScan(IZ)V

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[mClientIf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 69
    iget v0, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/le/ScanSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 76
    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mFilters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 77
    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, p1, v1}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 83
    :goto_1
    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mResultStorages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 84
    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mOpPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return-void

    .line 74
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
