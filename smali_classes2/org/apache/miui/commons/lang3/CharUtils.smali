.class public Lorg/apache/miui/commons/lang3/CharUtils;
.super Ljava/lang/Object;
.source "CharUtils.java"


# static fields
.field private static final CHAR_STRING_ARRAY:[Ljava/lang/String;

.field public static final CR:C = '\r'

.field public static final LF:C = '\n'


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/16 v1, 0x80

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lorg/apache/miui/commons/lang3/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    .local v0, "c":C
    :goto_0
    sget-object v1, Lorg/apache/miui/commons/lang3/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 56
    sget-object v1, Lorg/apache/miui/commons/lang3/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 55
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static isAscii(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 404
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAsciiAlpha(C)Z
    .locals 3
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 461
    const/16 v2, 0x41

    if-lt p0, v2, :cond_1

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x61

    if-lt p0, v2, :cond_2

    const/16 v2, 0x7a

    if-le p0, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isAsciiAlphaLower(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x0

    .line 499
    const/16 v1, 0x61

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isAsciiAlphaUpper(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x0

    .line 480
    const/16 v1, 0x41

    if-lt p0, v1, :cond_0

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isAsciiAlphanumeric(C)Z
    .locals 3
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 537
    const/16 v2, 0x41

    if-lt p0, v2, :cond_1

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x61

    if-lt p0, v2, :cond_2

    const/16 v2, 0x7a

    if-le p0, v2, :cond_0

    :cond_2
    const/16 v2, 0x30

    if-lt p0, v2, :cond_3

    const/16 v2, 0x39

    if-le p0, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isAsciiControl(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x1

    .line 442
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7f

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAsciiNumeric(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x0

    .line 518
    const/16 v1, 0x30

    if-lt p0, v1, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isAsciiPrintable(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x0

    .line 423
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7f

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static toChar(Ljava/lang/Character;)C
    .locals 2
    .param p0, "ch"    # Ljava/lang/Character;

    .prologue
    .line 131
    if-nez p0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The Character must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public static toChar(Ljava/lang/Character;C)C
    .locals 1
    .param p0, "ch"    # Ljava/lang/Character;
    .param p1, "defaultValue"    # C

    .prologue
    .line 151
    if-nez p0, :cond_0

    .line 152
    return p1

    .line 154
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public static toChar(Ljava/lang/String;)C
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The String must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public static toChar(Ljava/lang/String;C)C
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # C

    .prologue
    .line 196
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    return p1

    .line 199
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public static toCharacterObject(C)Ljava/lang/Character;
    .locals 1
    .param p0, "ch"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public static toCharacterObject(Ljava/lang/String;)Ljava/lang/Character;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public static toIntValue(C)I
    .locals 3
    .param p0, "ch"    # C

    .prologue
    .line 219
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/CharUtils;->isAsciiNumeric(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not in the range \'0\' - \'9\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    add-int/lit8 v0, p0, -0x30

    return v0
.end method

.method public static toIntValue(CI)I
    .locals 1
    .param p0, "ch"    # C
    .param p1, "defaultValue"    # I

    .prologue
    .line 241
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/CharUtils;->isAsciiNumeric(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    return p1

    .line 244
    :cond_0
    add-int/lit8 v0, p0, -0x30

    return v0
.end method

.method public static toIntValue(Ljava/lang/Character;)I
    .locals 2
    .param p0, "ch"    # Ljava/lang/Character;

    .prologue
    .line 264
    if-nez p0, :cond_0

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The character must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/CharUtils;->toIntValue(C)I

    move-result v0

    return v0
.end method

.method public static toIntValue(Ljava/lang/Character;I)I
    .locals 1
    .param p0, "ch"    # Ljava/lang/Character;
    .param p1, "defaultValue"    # I

    .prologue
    .line 287
    if-nez p0, :cond_0

    .line 288
    return p1

    .line 290
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/CharUtils;->toIntValue(CI)I

    move-result v0

    return v0
.end method

.method public static toString(C)Ljava/lang/String;
    .locals 3
    .param p0, "ch"    # C

    .prologue
    .line 309
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 310
    sget-object v0, Lorg/apache/miui/commons/lang3/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    aput-char p0, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static toString(Ljava/lang/Character;)Ljava/lang/String;
    .locals 1
    .param p0, "ch"    # Ljava/lang/Character;

    .prologue
    const/4 v0, 0x0

    .line 333
    if-nez p0, :cond_0

    .line 334
    return-object v0

    .line 336
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/CharUtils;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unicodeEscaped(C)Ljava/lang/String;
    .locals 2
    .param p0, "ch"    # C

    .prologue
    .line 354
    const/16 v0, 0x10

    if-ge p0, v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\\u000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 356
    :cond_0
    const/16 v0, 0x100

    if-ge p0, v0, :cond_1

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\\u00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 358
    :cond_1
    const/16 v0, 0x1000

    if-ge p0, v0, :cond_2

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\\u0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 361
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unicodeEscaped(Ljava/lang/Character;)Ljava/lang/String;
    .locals 1
    .param p0, "ch"    # Ljava/lang/Character;

    .prologue
    const/4 v0, 0x0

    .line 381
    if-nez p0, :cond_0

    .line 382
    return-object v0

    .line 384
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/CharUtils;->unicodeEscaped(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
