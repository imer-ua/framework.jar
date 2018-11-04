.class public Lmiui/content/res/SimulateNinePngUtil;
.super Ljava/lang/Object;
.source "SimulateNinePngUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;
    }
.end annotation


# static fields
.field private static PNG_HEAD_FORMAT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/content/res/SimulateNinePngUtil;->PNG_HEAD_FORMAT:[B

    .line 11
    return-void

    .line 79
    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computePatchColor([B)I
    .locals 1
    .param p0, "srcImageData"    # [B

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method private static convertByteToIntByBigEndian([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "start"    # I

    .prologue
    .line 140
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v0, v1, 0x0

    .line 141
    .local v0, "ret":I
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 142
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 143
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 144
    return v0
.end method

.method private static convertBytesFromIntByBigEndian([BII)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "start"    # I
    .param p2, "N"    # I

    .prologue
    .line 132
    add-int/lit8 v0, p1, 0x0

    ushr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 133
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 134
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 135
    add-int/lit8 v0, p1, 0x3

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 131
    return-void
.end method

.method public static convertIntoNinePngData([B)[B
    .locals 11
    .param p0, "srcData"    # [B

    .prologue
    const/4 v10, 0x0

    const/16 v8, 0x29

    const/16 v9, 0x21

    .line 34
    if-eqz p0, :cond_0

    .line 35
    array-length v7, p0

    if-ge v7, v8, :cond_1

    .line 38
    :cond_0
    return-object v10

    .line 36
    :cond_1
    invoke-static {p0}, Lmiui/content/res/SimulateNinePngUtil;->isPngFormat([B)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 40
    invoke-static {p0}, Lmiui/content/res/SimulateNinePngUtil;->isNinePngFormat([B)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 41
    return-object p0

    .line 44
    :cond_2
    invoke-static {p0}, Lmiui/content/res/SimulateNinePngUtil;->getNinePatchChunk([B)[B

    move-result-object v5

    .line 45
    .local v5, "ninePatchChunk":[B
    array-length v7, p0

    add-int/lit8 v7, v7, 0xc

    array-length v8, v5

    add-int/2addr v7, v8

    new-array v3, v7, [B

    .line 48
    .local v3, "destData":[B
    const/16 v6, 0x21

    .line 49
    .local v6, "pngHeadEnd":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v9, :cond_3

    .line 50
    aget-byte v7, p0, v4

    aput-byte v7, v3, v4

    .line 49
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 54
    :cond_3
    array-length v7, v5

    invoke-static {v3, v9, v7}, Lmiui/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    .line 57
    invoke-static {v3}, Lmiui/content/res/SimulateNinePngUtil;->fillNinePngFormatMark([B)V

    .line 60
    const/16 v0, 0x29

    .line 61
    .local v0, "chunkHeadStart":I
    const/4 v4, 0x0

    :goto_1
    array-length v7, v5

    if-ge v4, v7, :cond_4

    .line 62
    add-int/lit8 v7, v4, 0x29

    aget-byte v8, v5, v4

    aput-byte v8, v3, v7

    .line 61
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 66
    :cond_4
    array-length v7, v5

    add-int/lit8 v2, v7, 0x29

    .line 67
    .local v2, "crcPostion":I
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 68
    .local v1, "crc":Ljava/util/zip/CRC32;
    array-length v7, v5

    add-int/lit8 v7, v7, 0x4

    const/16 v8, 0x25

    invoke-virtual {v1, v3, v8, v7}, Ljava/util/zip/CRC32;->update([BII)V

    .line 69
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    long-to-int v7, v8

    invoke-static {v3, v2, v7}, Lmiui/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    .line 72
    const/4 v4, 0x0

    :goto_2
    array-length v7, p0

    add-int/lit8 v7, v7, -0x21

    if-ge v4, v7, :cond_5

    .line 73
    add-int/lit8 v7, v2, 0x4

    add-int/2addr v7, v4

    add-int/lit8 v8, v4, 0x21

    aget-byte v8, p0, v8

    aput-byte v8, v3, v7

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 76
    :cond_5
    return-object v3
.end method

.method public static convertIntoNinePngStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 7
    .param p0, "pngInputStream"    # Ljava/io/InputStream;

    .prologue
    .line 14
    const/4 v3, 0x0

    .line 16
    .local v3, "retStream":Ljava/io/InputStream;
    const/16 v6, 0x29

    :try_start_0
    new-array v5, v6, [B

    .line 17
    .local v5, "srcHeader":[B
    invoke-virtual {p0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 18
    .local v1, "n":I
    if-gtz v1, :cond_2

    .line 19
    const/4 v5, 0x0

    .line 23
    .end local v5    # "srcHeader":[B
    :cond_0
    :goto_0
    invoke-static {v5}, Lmiui/content/res/SimulateNinePngUtil;->convertIntoNinePngData([B)[B

    move-result-object v2

    .line 24
    .local v2, "nineHeader":[B
    if-eqz v2, :cond_1

    .line 25
    new-instance v4, Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;

    invoke-direct {v4, p0, v2}, Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;-><init>(Ljava/io/InputStream;[B)V

    .local v4, "retStream":Ljava/io/InputStream;
    move-object v3, v4

    .line 30
    .end local v1    # "n":I
    .end local v2    # "nineHeader":[B
    .end local v3    # "retStream":Ljava/io/InputStream;
    .end local v4    # "retStream":Ljava/io/InputStream;
    :cond_1
    :goto_1
    return-object v3

    .line 20
    .restart local v1    # "n":I
    .restart local v3    # "retStream":Ljava/io/InputStream;
    .restart local v5    # "srcHeader":[B
    :cond_2
    array-length v6, v5

    if-ge v1, v6, :cond_0

    .line 21
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 27
    .end local v1    # "n":I
    .end local v5    # "srcHeader":[B
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private static fillNinePngFormatMark([B)V
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 96
    const/16 v0, 0x6e

    const/16 v1, 0x25

    aput-byte v0, p0, v1

    .line 97
    const/16 v0, 0x70

    const/16 v1, 0x26

    aput-byte v0, p0, v1

    .line 98
    const/16 v0, 0x54

    const/16 v1, 0x27

    aput-byte v0, p0, v1

    .line 99
    const/16 v0, 0x63

    const/16 v1, 0x28

    aput-byte v0, p0, v1

    .line 95
    return-void
.end method

.method private static getNinePatchChunk([B)[B
    .locals 6
    .param p0, "srcImageData"    # [B

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 103
    const/16 v3, 0x10

    invoke-static {p0, v3}, Lmiui/content/res/SimulateNinePngUtil;->convertByteToIntByBigEndian([BI)I

    move-result v2

    .line 104
    .local v2, "width":I
    const/16 v3, 0x14

    invoke-static {p0, v3}, Lmiui/content/res/SimulateNinePngUtil;->convertByteToIntByBigEndian([BI)I

    move-result v1

    .line 108
    .local v1, "height":I
    const/16 v3, 0x34

    new-array v0, v3, [B

    .line 109
    .local v0, "chunk":[B
    const/4 v3, 0x0

    aput-byte v4, v0, v3

    .line 110
    aput-byte v5, v0, v4

    .line 111
    aput-byte v5, v0, v5

    .line 112
    const/4 v3, 0x3

    aput-byte v4, v0, v3

    .line 113
    const/16 v3, 0x24

    invoke-static {v0, v3, v2}, Lmiui/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    .line 114
    const/16 v3, 0x2c

    invoke-static {v0, v3, v1}, Lmiui/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    .line 115
    invoke-static {p0}, Lmiui/content/res/SimulateNinePngUtil;->computePatchColor([B)I

    move-result v3

    const/16 v4, 0x30

    invoke-static {v0, v4, v3}, Lmiui/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    .line 116
    return-object v0
.end method

.method private static isNinePngFormat([B)Z
    .locals 4
    .param p0, "data"    # [B

    .prologue
    const/16 v3, 0x28

    const/4 v0, 0x0

    .line 90
    if-eqz p0, :cond_0

    array-length v1, p0

    if-le v1, v3, :cond_0

    .line 91
    const/16 v1, 0x25

    aget-byte v1, p0, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_0

    const/16 v1, 0x26

    aget-byte v1, p0, v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_0

    .line 92
    const/16 v1, 0x27

    aget-byte v1, p0, v1

    const/16 v2, 0x54

    if-ne v1, v2, :cond_0

    aget-byte v1, p0, v3

    const/16 v2, 0x63

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 90
    :cond_0
    return v0
.end method

.method private static isPngFormat([B)Z
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmiui/content/res/SimulateNinePngUtil;->PNG_HEAD_FORMAT:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 82
    aget-byte v1, p0, v0

    sget-object v2, Lmiui/content/res/SimulateNinePngUtil;->PNG_HEAD_FORMAT:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_0

    .line 83
    const/4 v1, 0x0

    return v1

    .line 81
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
