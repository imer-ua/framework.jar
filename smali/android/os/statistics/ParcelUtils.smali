.class public Landroid/os/statistics/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# static fields
.field private static final MAX_STRING_ARRAY_LENGTH:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ParcelUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;
    .locals 5
    .param p0, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 31
    if-nez p0, :cond_0

    .line 32
    return-object v4

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 35
    .local v1, "length":I
    if-ltz v1, :cond_1

    const/16 v3, 0x64

    if-le v1, v3, :cond_2

    .line 36
    :cond_1
    return-object v4

    .line 39
    :cond_2
    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    .line 40
    .local v2, "res":[Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return-object v2

    .line 42
    .end local v2    # "res":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    return-object v4
.end method

.method public static writeStringArray(Landroid/os/Parcel;[Ljava/lang/String;)V
    .locals 3
    .param p0, "des"    # Landroid/os/Parcel;
    .param p1, "s"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 14
    if-nez p0, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    if-nez p1, :cond_1

    .line 17
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    return-void

    .line 19
    :cond_1
    array-length v0, p1

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    .line 20
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 22
    const-string/jumbo v0, "ParcelUtils"

    const-string/jumbo v1, "array is too long, write failed!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void

    .line 26
    :cond_2
    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 13
    return-void
.end method
