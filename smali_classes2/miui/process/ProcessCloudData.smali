.class public Lmiui/process/ProcessCloudData;
.super Ljava/lang/Object;
.source "ProcessCloudData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/process/ProcessCloudData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/process/ProcessCloudData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppProtectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraMemThresholdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFastBootList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFgProtectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lmiui/process/ProcessCloudData$1;

    invoke-direct {v0}, Lmiui/process/ProcessCloudData$1;-><init>()V

    sput-object v0, Lmiui/process/ProcessCloudData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lmiui/process/ProcessCloudData;->readFromParcel(Landroid/os/Parcel;)V

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public getAppProtectMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lmiui/process/ProcessCloudData;->mAppProtectMap:Ljava/util/Map;

    return-object v0
.end method

.method public getCameraMemThresholdMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lmiui/process/ProcessCloudData;->mCameraMemThresholdMap:Ljava/util/Map;

    return-object v0
.end method

.method public getCloudWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lmiui/process/ProcessCloudData;->mCloudWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public getFastBootList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lmiui/process/ProcessCloudData;->mFastBootList:Ljava/util/List;

    return-object v0
.end method

.method public getFgProtectMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lmiui/process/ProcessCloudData;->mFgProtectMap:Ljava/util/Map;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    const-class v4, Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lmiui/process/ProcessCloudData;->mCloudWhiteList:Ljava/util/List;

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    .local v3, "value":I
    iget-object v4, p0, Lmiui/process/ProcessCloudData;->mAppProtectMap:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 82
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lmiui/process/ProcessCloudData;->mAppProtectMap:Ljava/util/Map;

    .line 84
    :cond_1
    iget-object v4, p0, Lmiui/process/ProcessCloudData;->mAppProtectMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":I
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 88
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_4

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 91
    .restart local v3    # "value":I
    iget-object v4, p0, Lmiui/process/ProcessCloudData;->mFgProtectMap:Ljava/util/Map;

    if-nez v4, :cond_3

    .line 92
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lmiui/process/ProcessCloudData;->mFgProtectMap:Ljava/util/Map;

    .line 94
    :cond_3
    iget-object v4, p0, Lmiui/process/ProcessCloudData;->mFgProtectMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":I
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 98
    const-class v4, Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lmiui/process/ProcessCloudData;->mFastBootList:Ljava/util/List;

    .line 101
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 102
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_7

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 105
    .restart local v3    # "value":I
    iget-object v4, p0, Lmiui/process/ProcessCloudData;->mCameraMemThresholdMap:Ljava/util/Map;

    if-nez v4, :cond_6

    .line 106
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lmiui/process/ProcessCloudData;->mCameraMemThresholdMap:Ljava/util/Map;

    .line 108
    :cond_6
    iget-object v4, p0, Lmiui/process/ProcessCloudData;->mCameraMemThresholdMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 72
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":I
    :cond_7
    return-void
.end method

.method public setAppProtectMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "mAppProtectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lmiui/process/ProcessCloudData;->mAppProtectMap:Ljava/util/Map;

    .line 44
    return-void
.end method

.method public setCameraMemThresholdMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "cameraMemThresholdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lmiui/process/ProcessCloudData;->mCameraMemThresholdMap:Ljava/util/Map;

    .line 68
    return-void
.end method

.method public setCloudWhiteList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "mCloudWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lmiui/process/ProcessCloudData;->mCloudWhiteList:Ljava/util/List;

    .line 36
    return-void
.end method

.method public setFastBootList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "mFastBootList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lmiui/process/ProcessCloudData;->mFastBootList:Ljava/util/List;

    .line 60
    return-void
.end method

.method public setFgProtectMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "mFgProtectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lmiui/process/ProcessCloudData;->mFgProtectMap:Ljava/util/Map;

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "ProcessCloudData{"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v6, p0, Lmiui/process/ProcessCloudData;->mCloudWhiteList:Ljava/util/List;

    if-eqz v6, :cond_0

    .line 183
    const-string/jumbo v6, "mCloudWhiteList="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/process/ProcessCloudData;->mCloudWhiteList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_0
    iget-object v6, p0, Lmiui/process/ProcessCloudData;->mAppProtectMap:Ljava/util/Map;

    if-eqz v6, :cond_2

    .line 187
    const-string/jumbo v6, " mAppProtectMap="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v6, p0, Lmiui/process/ProcessCloudData;->mAppProtectMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 189
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 190
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 191
    .local v3, "priorityLevel":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 192
    const-string/jumbo v6, "{packageName="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 193
    const-string/jumbo v7, ",priorityLevel="

    .line 192
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 193
    const-string/jumbo v7, "} "

    .line 192
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 198
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "priorityLevel":Ljava/lang/Integer;
    :cond_2
    iget-object v6, p0, Lmiui/process/ProcessCloudData;->mFgProtectMap:Ljava/util/Map;

    if-eqz v6, :cond_4

    .line 199
    const-string/jumbo v6, " mFgProtectMap="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v6, p0, Lmiui/process/ProcessCloudData;->mFgProtectMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 201
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 202
    .restart local v2    # "packageName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 203
    .restart local v3    # "priorityLevel":Ljava/lang/Integer;
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 204
    const-string/jumbo v6, "{packageName="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 205
    const-string/jumbo v7, ",priorityLevel="

    .line 204
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 205
    const-string/jumbo v7, "} "

    .line 204
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 210
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "priorityLevel":Ljava/lang/Integer;
    :cond_4
    iget-object v6, p0, Lmiui/process/ProcessCloudData;->mFastBootList:Ljava/util/List;

    if-eqz v6, :cond_5

    .line 211
    const-string/jumbo v6, " mFastBootList="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/process/ProcessCloudData;->mFastBootList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_5
    iget-object v6, p0, Lmiui/process/ProcessCloudData;->mCameraMemThresholdMap:Ljava/util/Map;

    if-eqz v6, :cond_7

    .line 215
    const-string/jumbo v6, " mCameraMemThresholdMap="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v6, p0, Lmiui/process/ProcessCloudData;->mCameraMemThresholdMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 217
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 218
    .restart local v2    # "packageName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 219
    .local v5, "threshold":Ljava/lang/Integer;
    if-eqz v2, :cond_6

    if-eqz v5, :cond_6

    .line 220
    const-string/jumbo v6, "{packageName="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 221
    const-string/jumbo v7, ",sizeLimit="

    .line 220
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 221
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    div-int/lit16 v7, v7, 0x400

    .line 220
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 221
    const-string/jumbo v7, "MB"

    .line 220
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 221
    const-string/jumbo v7, "} "

    .line 220
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 226
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v5    # "threshold":Ljava/lang/Integer;
    :cond_7
    const-string/jumbo v6, "}"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    iget-object v2, p0, Lmiui/process/ProcessCloudData;->mCloudWhiteList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object v2, p0, Lmiui/process/ProcessCloudData;->mCloudWhiteList:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 121
    :goto_0
    iget-object v2, p0, Lmiui/process/ProcessCloudData;->mAppProtectMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lmiui/process/ProcessCloudData;->mAppProtectMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v2, p0, Lmiui/process/ProcessCloudData;->mAppProtectMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 124
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 118
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    :cond_2
    iget-object v2, p0, Lmiui/process/ProcessCloudData;->mFgProtectMap:Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 132
    iget-object v2, p0, Lmiui/process/ProcessCloudData;->mFgProtectMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v2, p0, Lmiui/process/ProcessCloudData;->mFgProtectMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 134
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 138
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    :cond_4
    iget-object v2, p0, Lmiui/process/ProcessCloudData;->mFastBootList:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 143
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v2, p0, Lmiui/process/ProcessCloudData;->mFastBootList:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 149
    :goto_3
    iget-object v2, p0, Lmiui/process/ProcessCloudData;->mCameraMemThresholdMap:Ljava/util/Map;

    if-eqz v2, :cond_6

    .line 150
    iget-object v2, p0, Lmiui/process/ProcessCloudData;->mCameraMemThresholdMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v2, p0, Lmiui/process/ProcessCloudData;->mCameraMemThresholdMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 152
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 146
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 156
    :cond_6
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    :cond_7
    return-void
.end method
