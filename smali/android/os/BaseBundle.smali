.class public Landroid/os/BaseBundle;
.super Ljava/lang/Object;
.source "BaseBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BaseBundle$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field static final BUNDLE_MAGIC:I = 0x4c444e42

.field static final DEBUG:Z = false

.field static final FLAG_DEFUSABLE:I = 0x1

.field private static final LOG_DEFUSABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "Bundle"

.field private static volatile sShouldDefuse:Z


# instance fields
.field private mClassLoader:Ljava/lang/ClassLoader;

.field mFlags:I

.field mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mParcelledData:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/BaseBundle;->sShouldDefuse:Z

    .line 34
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 113
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 149
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-direct {p0, v0, p1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 148
    return-void
.end method

.method constructor <init>(Landroid/os/BaseBundle;)V
    .locals 4
    .param p1, "b"    # Landroid/os/BaseBundle;

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 86
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 159
    monitor-enter p1

    .line 160
    :try_start_0
    iget-object v0, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 172
    :goto_0
    iget-object v0, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    .line 173
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 178
    :goto_1
    iget-object v0, p1, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 158
    return-void

    .line 164
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 165
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v1, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v2, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 166
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 169
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    goto :goto_0

    .line 175
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcelledData"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 86
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 124
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;)V

    .line 123
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcelledData"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 86
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 127
    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 138
    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;I)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "capacity"    # I

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 86
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 105
    if-lez p2, :cond_1

    .line 106
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 105
    :goto_0
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 107
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/os/BaseBundle;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .end local p1    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    iput-object p1, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 104
    return-void

    .line 106
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    goto :goto_0
.end method

.method private readFromParcelInner(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .prologue
    const/4 v4, 0x0

    .line 1446
    if-gez p2, :cond_0

    .line 1447
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad length in parcel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1449
    :cond_0
    if-nez p2, :cond_1

    .line 1451
    sget-object v3, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    iput-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 1452
    return-void

    .line 1455
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1456
    .local v0, "magic":I
    const v3, 0x4c444e42    # 5.146036E7f

    if-eq v0, v3, :cond_2

    .line 1457
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad magic number for Bundle: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1458
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 1457
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1462
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1463
    .local v1, "offset":I
    invoke-static {v1, p2}, Landroid/util/MathUtils;->addOrThrow(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1466
    .local v2, "p":Landroid/os/Parcel;
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1467
    invoke-virtual {v2, p1, v1, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 1470
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1472
    iput-object v2, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 1445
    return-void
.end method

.method public static setShouldDefuse(Z)V
    .locals 0
    .param p0, "shouldDefuse"    # Z

    .prologue
    .line 65
    sput-boolean p0, Landroid/os/BaseBundle;->sShouldDefuse:Z

    .line 64
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 341
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 339
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 352
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 353
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 364
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 365
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 705
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 708
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 742
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 743
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 744
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 745
    return p2

    .line 748
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 749
    :catch_0
    move-exception v6

    .line 750
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v4, "Boolean"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 751
    return p2
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1167
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1168
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1169
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1170
    return-object v3

    .line 1173
    :cond_0
    :try_start_0
    check-cast v1, [Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1174
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1175
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "byte[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1176
    return-object v3
.end method

.method getByte(Ljava/lang/String;)B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 763
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 764
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .prologue
    .line 776
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 777
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 778
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 779
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 782
    :cond_0
    :try_start_0
    check-cast v2, Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "o":Ljava/lang/Object;
    return-object v2

    .line 783
    .restart local v2    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 784
    .local v5, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "Byte"

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 785
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method getByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1190
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1191
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1192
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1193
    return-object v3

    .line 1196
    :cond_0
    :try_start_0
    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1197
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1198
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "byte[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1199
    return-object v3
.end method

.method getChar(Ljava/lang/String;)C
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 797
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 798
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    return v0
.end method

.method getChar(Ljava/lang/String;C)C
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    .prologue
    .line 810
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 811
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 812
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 813
    return p2

    .line 816
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Character;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 817
    :catch_0
    move-exception v6

    .line 818
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v4, "Character"

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 819
    return p2
.end method

.method getCharArray(Ljava/lang/String;)[C
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1236
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1237
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1238
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1239
    return-object v3

    .line 1242
    :cond_0
    :try_start_0
    check-cast v1, [C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1243
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1244
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "char[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1245
    return-object v3
.end method

.method getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1039
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1040
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1042
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1043
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "CharSequence"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1045
    const/4 v2, 0x0

    return-object v2
.end method

.method getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/CharSequence;

    .prologue
    .line 1061
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1062
    .local v0, "cs":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":Ljava/lang/CharSequence;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/CharSequence;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1374
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1375
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1376
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1377
    return-object v3

    .line 1380
    :cond_0
    :try_start_0
    check-cast v1, [Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1381
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1382
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "CharSequence[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1383
    return-object v3
.end method

.method getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1144
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1145
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1146
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1147
    return-object v3

    .line 1150
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1151
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1152
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "ArrayList<CharSequence>"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1153
    return-object v3
.end method

.method getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 967
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 968
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 980
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 981
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 982
    .local v4, "o":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 983
    return-wide p2

    .line 986
    :cond_0
    :try_start_0
    move-object v0, v4

    check-cast v0, Ljava/lang/Double;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 987
    :catch_0
    move-exception v7

    .line 988
    .local v7, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v5, "Double"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 989
    return-wide p2
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1328
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1329
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1330
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1331
    return-object v3

    .line 1334
    :cond_0
    :try_start_0
    check-cast v1, [D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1335
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1336
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "double[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1337
    return-object v3
.end method

.method getFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 933
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 934
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method getFloat(Ljava/lang/String;F)F
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 946
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 947
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 948
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 949
    return p2

    .line 952
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Float;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 953
    :catch_0
    move-exception v6

    .line 954
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v4, "Float"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 955
    return p2
.end method

.method getFloatArray(Ljava/lang/String;)[F
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1305
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1306
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1307
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1308
    return-object v3

    .line 1311
    :cond_0
    :try_start_0
    check-cast v1, [F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1312
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1313
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "float[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1314
    return-object v3
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 865
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 866
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 878
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 879
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 880
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 881
    return p2

    .line 884
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 885
    :catch_0
    move-exception v6

    .line 886
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v4, "Integer"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 887
    return p2
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1259
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1260
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1261
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1262
    return-object v3

    .line 1265
    :cond_0
    :try_start_0
    check-cast v1, [I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1266
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1267
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "int[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1268
    return-object v3
.end method

.method getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1098
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1099
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1100
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1101
    return-object v3

    .line 1104
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1105
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1106
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "ArrayList<Integer>"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1107
    return-object v3
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 899
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 900
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 912
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 913
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 914
    .local v4, "o":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 915
    return-wide p2

    .line 918
    :cond_0
    :try_start_0
    move-object v0, v4

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 919
    :catch_0
    move-exception v7

    .line 920
    .local v7, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v5, "Long"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 921
    return-wide p2
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1282
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1283
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1284
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1285
    return-object v3

    .line 1288
    :cond_0
    :try_start_0
    check-cast v1, [J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1289
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1290
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "long[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1291
    return-object v3
.end method

.method getMap()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 315
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getPairValue()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 192
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 193
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 194
    .local v2, "size":I
    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 195
    const-string/jumbo v3, "Bundle"

    const-string/jumbo v4, "getPairValue() used on Bundle with multiple pairs."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    if-nez v2, :cond_1

    .line 198
    return-object v6

    .line 200
    :cond_1
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 202
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 203
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "getPairValue()"

    const-string/jumbo v4, "String"

    invoke-virtual {p0, v3, v1, v4, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 205
    return-object v6
.end method

.method getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1075
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1076
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1077
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1078
    return-object v3

    .line 1081
    :cond_0
    :try_start_0
    check-cast v1, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1082
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1083
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "Serializable"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1084
    return-object v3
.end method

.method getShort(Ljava/lang/String;)S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 831
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 832
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method getShort(Ljava/lang/String;S)S
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    .prologue
    .line 844
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 845
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 846
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 847
    return p2

    .line 850
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Short;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 851
    :catch_0
    move-exception v6

    .line 852
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v4, "Short"

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 853
    return p2
.end method

.method getShortArray(Ljava/lang/String;)[S
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1213
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1214
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1215
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1216
    return-object v3

    .line 1219
    :cond_0
    :try_start_0
    check-cast v1, [S
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1220
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1221
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "short[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1222
    return-object v3
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1003
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1004
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1006
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1007
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1008
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "String"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1009
    const/4 v2, 0x0

    return-object v2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 1025
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1351
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1352
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1353
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1354
    return-object v3

    .line 1357
    :cond_0
    :try_start_0
    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1358
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1359
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "String[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1360
    return-object v3
.end method

.method getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1121
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1122
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1123
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1124
    return-object v3

    .line 1127
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1128
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1129
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "ArrayList<String>"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1130
    return-object v3
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 333
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEmptyParcel()Z
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    sget-object v1, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isParcelled()Z
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 406
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .prologue
    .line 384
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 385
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->unparcel()V

    .line 386
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 383
    return-void
.end method

.method putAll(Landroid/util/ArrayMap;)V
    .locals 1
    .param p1, "map"    # Landroid/util/ArrayMap;

    .prologue
    .line 395
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 396
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 394
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 417
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 418
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    return-void
.end method

.method public putBooleanArray(Ljava/lang/String;[Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .prologue
    .line 585
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 586
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    return-void
.end method

.method putByte(Ljava/lang/String;B)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    .prologue
    .line 429
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 430
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    return-void
.end method

.method putByteArray(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 597
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 598
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    return-void
.end method

.method putChar(Ljava/lang/String;C)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    .prologue
    .line 441
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 442
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    return-void
.end method

.method putCharArray(Ljava/lang/String;[C)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [C

    .prologue
    .line 621
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 622
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    return-void
.end method

.method putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 525
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 526
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    return-void
.end method

.method putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/CharSequence;

    .prologue
    .line 693
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 694
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    return-void
.end method

.method putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 562
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 501
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 502
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    return-void
.end method

.method public putDoubleArray(Ljava/lang/String;[D)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .prologue
    .line 669
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 670
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    return-void
.end method

.method putFloat(Ljava/lang/String;F)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 489
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 490
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    return-void
.end method

.method putFloatArray(Ljava/lang/String;[F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .prologue
    .line 657
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 658
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 465
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 466
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    return-void
.end method

.method public putIntArray(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .prologue
    .line 633
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 634
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    return-void
.end method

.method putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 537
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 538
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 477
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 478
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    return-void
.end method

.method public putLongArray(Ljava/lang/String;[J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .prologue
    .line 645
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 646
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    return-void
.end method

.method putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 573
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 574
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    return-void
.end method

.method putShort(Ljava/lang/String;S)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 453
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 454
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    return-void
.end method

.method putShortArray(Ljava/lang/String;[S)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [S

    .prologue
    .line 609
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 610
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 513
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 514
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    return-void
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .prologue
    .line 681
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 682
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    return-void
.end method

.method putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 549
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 550
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    return-void
.end method

.method readFromParcelInner(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1442
    .local v0, "length":I
    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 1438
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 374
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 375
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    return-void
.end method

.method setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 216
    iput-object p1, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 215
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 325
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/lang/ClassCastException;

    .prologue
    .line 730
    const-string/jumbo v4, "<null>"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 729
    return-void
.end method

.method typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/Object;
    .param p5, "e"    # Ljava/lang/ClassCastException;

    .prologue
    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    const-string/jumbo v1, " expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    const-string/jumbo v1, " but value was a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    const-string/jumbo v1, ".  The default value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 723
    const-string/jumbo v1, " was returned."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    const-string/jumbo v1, "Bundle"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const-string/jumbo v1, "Bundle"

    const-string/jumbo v2, "Attempt to cast generated internal exception:"

    invoke-static {v1, v2, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    return-void
.end method

.method unparcel()V
    .locals 7

    .prologue
    .line 231
    monitor-enter p0

    .line 232
    :try_start_0
    iget-object v4, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    .local v4, "parcelledData":Landroid/os/Parcel;
    if-nez v4, :cond_0

    monitor-exit p0

    .line 237
    return-void

    .line 245
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmptyParcel()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 248
    iget-object v5, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-nez v5, :cond_1

    .line 249
    new-instance v5, Landroid/util/ArrayMap;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v5, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 253
    :goto_0
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 254
    return-void

    .line 251
    :cond_1
    :try_start_2
    iget-object v5, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->erase()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 231
    .end local v4    # "parcelledData":Landroid/os/Parcel;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 257
    .restart local v4    # "parcelledData":Landroid/os/Parcel;
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 260
    .local v0, "N":I
    if-gez v0, :cond_3

    monitor-exit p0

    .line 261
    return-void

    .line 263
    :cond_3
    :try_start_4
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 264
    .local v3, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v3, :cond_4

    .line 265
    new-instance v3, Landroid/util/ArrayMap;

    .end local v3    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v3, v0}, Landroid/util/ArrayMap;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 271
    .restart local v3    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    :try_start_5
    iget-object v5, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4, v3, v0, v5}, Landroid/os/Parcel;->readArrayMapInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V
    :try_end_5
    .catch Landroid/os/BadParcelableException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 289
    :try_start_6
    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 290
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 291
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    monitor-exit p0

    .line 230
    return-void

    .line 267
    :cond_4
    :try_start_7
    invoke-virtual {v3}, Landroid/util/ArrayMap;->erase()V

    .line 268
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 280
    :catch_0
    move-exception v2

    .line 281
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_8
    sget-boolean v5, Landroid/os/BaseBundle;->sShouldDefuse:Z

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/ClassNotFoundException;

    if-eqz v5, :cond_5

    .line 282
    const-string/jumbo v5, "Bundle"

    const-string/jumbo v6, "Failed to parse Bundle, but defusing quietly"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    invoke-virtual {v3}, Landroid/util/ArrayMap;->erase()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 289
    :try_start_9
    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 290
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 291
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 285
    :cond_5
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 288
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v5

    .line 289
    :try_start_b
    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 290
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 291
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 288
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 272
    :catch_1
    move-exception v1

    .line 273
    .local v1, "e":Landroid/os/BadParcelableException;
    :try_start_c
    sget-boolean v5, Landroid/os/BaseBundle;->sShouldDefuse:Z

    if-eqz v5, :cond_6

    .line 274
    const-string/jumbo v5, "Bundle"

    const-string/jumbo v6, "Failed to parse Bundle, but defusing quietly"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    invoke-virtual {v3}, Landroid/util/ArrayMap;->erase()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 289
    :try_start_d
    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 290
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 291
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_2

    .line 277
    :cond_6
    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
.end method

.method writeToParcelInner(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const v7, 0x4c444e42    # 5.146036E7f

    const/4 v6, 0x0

    .line 1396
    monitor-enter p0

    .line 1399
    :try_start_0
    iget-object v5, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v5, :cond_1

    .line 1400
    iget-object v5, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    sget-object v6, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    if-ne v5, v6, :cond_0

    .line 1401
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 1408
    return-void

    .line 1403
    :cond_0
    :try_start_1
    iget-object v5, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    .line 1404
    .local v1, "length":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1405
    const v5, 0x4c444e42    # 5.146036E7f

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1406
    iget-object v5, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1396
    .end local v1    # "length":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1410
    :cond_1
    :try_start_2
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v3, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    monitor-exit p0

    .line 1414
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-gtz v5, :cond_3

    .line 1415
    :cond_2
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1416
    return-void

    .line 1418
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 1419
    .local v2, "lengthPos":I
    const/4 v5, -0x1

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1420
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 1423
    .local v4, "startPos":I
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeArrayMapInternal(Landroid/util/ArrayMap;)V

    .line 1424
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1427
    .local v0, "endPos":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1428
    sub-int v1, v0, v4

    .line 1429
    .restart local v1    # "length":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1430
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1392
    return-void
.end method
