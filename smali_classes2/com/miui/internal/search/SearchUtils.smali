.class public Lcom/miui/internal/search/SearchUtils;
.super Ljava/lang/Object;
.source "SearchUtils.java"


# static fields
.field private static final PATTERN_ALPHABET:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static sContextCache:Lmiui/util/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/cache/Cache",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstalledPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    const-string/jumbo v0, "\\w+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/search/SearchUtils;->PATTERN_ALPHABET:Ljava/util/regex/Pattern;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Levenshtein([C[C)I
    .locals 12
    .param p0, "array1"    # [C
    .param p1, "array2"    # [C

    .prologue
    const/4 v9, 0x0

    .line 109
    array-length v8, p0

    array-length v10, p1

    if-ge v8, v10, :cond_0

    .line 110
    move-object v7, p0

    .line 111
    .local v7, "temp":[C
    move-object p0, p1

    .line 112
    move-object p1, v7

    .line 114
    .end local v7    # "temp":[C
    :cond_0
    array-length v6, p0

    .local v6, "n":I
    array-length v5, p1

    .line 115
    .local v5, "m":I
    add-int/lit8 v8, v5, 0x1

    new-array v0, v8, [I

    .line 116
    .local v0, "f":[I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-gt v4, v5, :cond_1

    .line 117
    aput v4, v0, v4

    .line 116
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 119
    :cond_1
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    if-gt v3, v6, :cond_4

    .line 120
    add-int/lit8 v2, v3, -0x1

    .line 121
    .local v2, "fi_1j_1":I
    aput v3, v0, v9

    .line 122
    const/4 v4, 0x1

    :goto_2
    if-gt v4, v5, :cond_3

    .line 123
    aget v1, v0, v4

    .line 128
    .local v1, "fi_1j":I
    aget v8, v0, v4

    add-int/lit8 v10, v8, 0x1

    add-int/lit8 v8, v3, -0x1

    aget-char v8, p0, v8

    add-int/lit8 v11, v4, -0x1

    aget-char v11, p1, v11

    if-ne v8, v11, :cond_2

    move v8, v9

    :goto_3
    add-int/2addr v8, v2

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, v0, v4

    .line 129
    add-int/lit8 v8, v4, -0x1

    aget v8, v0, v8

    add-int/lit8 v8, v8, 0x1

    aget v10, v0, v4

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, v0, v4

    .line 130
    move v2, v1

    .line 122
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 128
    :cond_2
    const/4 v8, 0x1

    goto :goto_3

    .line 119
    .end local v1    # "fi_1j":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 133
    .end local v2    # "fi_1j_1":I
    :cond_4
    aget v8, v0, v5

    return v8
.end method

.method public static Levenshtein([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;",
            "Ljava/util/Comparator",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "array1":[Ljava/lang/Object;, "[TT;"
    .local p1, "array2":[Ljava/lang/Object;, "[TT;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    const/4 v9, 0x0

    .line 148
    array-length v8, p0

    array-length v10, p1

    if-ge v8, v10, :cond_0

    .line 149
    move-object v7, p0

    .line 150
    .local v7, "temp":[Ljava/lang/Object;, "[TT;"
    move-object p0, p1

    .line 151
    move-object p1, v7

    .line 153
    .end local v7    # "temp":[Ljava/lang/Object;, "[TT;"
    :cond_0
    array-length v6, p0

    .local v6, "n":I
    array-length v5, p1

    .line 154
    .local v5, "m":I
    add-int/lit8 v8, v5, 0x1

    new-array v0, v8, [I

    .line 155
    .local v0, "f":[I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-gt v4, v5, :cond_1

    .line 156
    aput v4, v0, v4

    .line 155
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    :cond_1
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    if-gt v3, v6, :cond_4

    .line 159
    add-int/lit8 v2, v3, -0x1

    .line 160
    .local v2, "fi_1j_1":I
    aput v3, v0, v9

    .line 161
    const/4 v4, 0x1

    :goto_2
    if-gt v4, v5, :cond_3

    .line 162
    aget v1, v0, v4

    .line 167
    .local v1, "fi_1j":I
    aget v8, v0, v4

    add-int/lit8 v10, v8, 0x1

    add-int/lit8 v8, v3, -0x1

    aget-object v8, p0, v8

    add-int/lit8 v11, v4, -0x1

    aget-object v11, p1, v11

    invoke-interface {p2, v8, v11}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-nez v8, :cond_2

    move v8, v9

    :goto_3
    add-int/2addr v8, v2

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, v0, v4

    .line 168
    add-int/lit8 v8, v4, -0x1

    aget v8, v0, v8

    add-int/lit8 v8, v8, 0x1

    aget v10, v0, v4

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, v0, v4

    .line 169
    move v2, v1

    .line 161
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 167
    :cond_2
    const/4 v8, 0x1

    goto :goto_3

    .line 158
    .end local v1    # "fi_1j":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 172
    .end local v2    # "fi_1j_1":I
    :cond_4
    aget v8, v0, v5

    return v8
.end method

.method public static clearPackageExistedCache()V
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/internal/search/SearchUtils;->sInstalledPackageList:Ljava/util/List;

    .line 369
    return-void
.end method

.method static doPinyinMatch(Ljava/lang/String;Ljava/lang/String;)D
    .locals 6
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 210
    const-wide/16 v0, 0x0

    .line 211
    .local v0, "score":D
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    :cond_0
    :goto_0
    const-string/jumbo v2, "Utils"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    const-string/jumbo v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_1
    return-wide v0

    .line 212
    :cond_2
    sget-object v2, Lcom/miui/internal/search/SearchUtils;->PATTERN_ALPHABET:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    .line 211
    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 214
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 216
    :cond_3
    cmpl-double v2, v0, v4

    if-nez v2, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    const-wide v0, 0x3fe999999999999aL    # 0.8

    .line 219
    :cond_4
    cmpl-double v2, v0, v4

    if-nez v2, :cond_0

    .line 222
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 223
    const-wide v0, 0x3fe3333333333333L    # 0.6

    .line 227
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/internal/search/SearchUtils;->Levenshtein([C[C)I

    move-result v2

    int-to-double v2, v2

    .line 228
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    .line 227
    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    goto/16 :goto_0

    .line 225
    :cond_5
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    goto :goto_1
.end method

.method static doSimpleMatch(Ljava/lang/String;Ljava/lang/String;)D
    .locals 8
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    .line 178
    const-wide/16 v0, 0x0

    .line 179
    .local v0, "score":D
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 180
    move-object v2, p0

    .line 181
    .local v2, "t":Ljava/lang/String;
    move-object p0, p1

    .line 182
    move-object p1, v2

    .line 184
    .end local v2    # "t":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 203
    :cond_1
    :goto_0
    const-string/jumbo v3, "Utils"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 204
    const-string/jumbo v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_2
    return-wide v0

    .line 186
    :cond_3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 187
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 190
    :cond_4
    cmpl-double v3, v0, v6

    if-nez v3, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 191
    const-wide v0, 0x3fe999999999999aL    # 0.8

    .line 194
    :cond_5
    cmpl-double v3, v0, v6

    if-nez v3, :cond_6

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 195
    const-wide v0, 0x3fe3333333333333L    # 0.6

    .line 198
    :cond_6
    cmpl-double v3, v0, v6

    if-nez v3, :cond_1

    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/internal/search/SearchUtils;->Levenshtein([C[C)I

    move-result v3

    int-to-double v4, v3

    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v6, v3

    .line 199
    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double v0, v6, v4

    goto :goto_0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "res"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 74
    .local v1, "resources":Landroid/content/res/Resources;
    const-string/jumbo v2, "bool"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 75
    .end local v1    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 78
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 384
    move-object v2, p1

    .line 385
    .local v2, "pkgOrigin":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 386
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    return-object p0

    .line 389
    :cond_0
    sget-object v3, Lcom/miui/internal/search/SearchUtils;->sContextCache:Lmiui/util/cache/Cache;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/miui/internal/search/SearchUtils;->sContextCache:Lmiui/util/cache/Cache;

    invoke-interface {v3, p1}, Lmiui/util/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 390
    sget-object v3, Lcom/miui/internal/search/SearchUtils;->sContextCache:Lmiui/util/cache/Cache;

    invoke-interface {v3, p1}, Lmiui/util/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    return-object v3

    .line 395
    :cond_1
    const/4 v3, 0x3

    .line 394
    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 396
    .local v1, "newContext":Landroid/content/Context;
    sget-object v3, Lcom/miui/internal/search/SearchUtils;->sContextCache:Lmiui/util/cache/Cache;

    if-nez v3, :cond_2

    .line 397
    new-instance v3, Lmiui/util/cache/LruCache;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lmiui/util/cache/LruCache;-><init>(I)V

    sput-object v3, Lcom/miui/internal/search/SearchUtils;->sContextCache:Lmiui/util/cache/Cache;

    .line 399
    :cond_2
    sget-object v3, Lcom/miui/internal/search/SearchUtils;->sContextCache:Lmiui/util/cache/Cache;

    const/4 v4, 0x1

    invoke-interface {v3, p1, v1, v4}, Lmiui/util/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    return-object v1

    .line 401
    .end local v1    # "newContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 404
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 409
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Application package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getPinyin(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const/4 v3, 0x0

    return-object v3

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, "pinyin":Ljava/lang/StringBuilder;
    invoke-static {}, Lmiui/text/ChinesePinyinConverter;->getInstance()Lmiui/text/ChinesePinyinConverter;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, p0, v4, v5}, Lmiui/text/ChinesePinyinConverter;->get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "token$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/text/ChinesePinyinConverter$Token;

    .line 94
    .local v1, "token":Lmiui/text/ChinesePinyinConverter$Token;
    iget-object v3, v1, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 96
    .end local v1    # "token":Lmiui/text/ChinesePinyinConverter$Token;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "res"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 48
    .local v1, "resources":Landroid/content/res/Resources;
    const-string/jumbo v2, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 49
    .end local v1    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_1
    const-string/jumbo v2, "com.android.settings"

    invoke-static {p0, v2}, Lcom/miui/internal/search/SearchUtils;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 54
    .restart local v1    # "resources":Landroid/content/res/Resources;
    const-string/jumbo v2, "string"

    const-string/jumbo v3, "com.android.settings"

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    return-object v2

    .line 55
    .end local v1    # "resources":Landroid/content/res/Resources;
    :catch_1
    move-exception v0

    .line 58
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    const-string/jumbo v2, ""

    return-object v2
.end method

.method public static isEmpty(Ljava/util/List;)Z
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    .prologue
    .line 295
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isOldmanMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 339
    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 353
    sget-object v2, Lcom/miui/internal/search/SearchUtils;->sInstalledPackageList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 354
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 355
    const/16 v3, 0x80

    .line 354
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/miui/internal/search/SearchUtils;->sInstalledPackageList:Ljava/util/List;

    .line 357
    :cond_0
    sget-object v2, Lcom/miui/internal/search/SearchUtils;->sInstalledPackageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pi$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 358
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    const/4 v2, 0x1

    return v2

    .line 362
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public static isSecondSpace()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 284
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static logCost(DDLjava/lang/Object;)V
    .locals 4
    .param p0, "startTime"    # D
    .param p2, "endTime"    # D
    .param p4, "extra"    # Ljava/lang/Object;

    .prologue
    .line 245
    const-string/jumbo v0, "Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 246
    const-string/jumbo v2, " takes "

    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 246
    sub-double v2, p2, p0

    .line 245
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 246
    const-string/jumbo v2, "ms"

    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method

.method public static readJSONObject(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 260
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 261
    .local v4, "reader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/16 v5, 0x400

    new-array v0, v5, [C

    .line 265
    .local v0, "buffer":[C
    :goto_0
    :try_start_0
    array-length v5, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v3

    .local v3, "i":I
    if-lez v3, :cond_0

    .line 266
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 269
    .end local v3    # "i":I
    :catchall_0
    move-exception v5

    .line 271
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 269
    :goto_1
    throw v5

    .line 268
    .restart local v3    # "i":I
    :cond_0
    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 268
    :goto_2
    return-object v5

    .line 272
    :catch_0
    move-exception v2

    .line 273
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v6, "Utils"

    const-string/jumbo v7, "close InputStream failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 272
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "i":I
    :catch_1
    move-exception v2

    .line 273
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "Utils"

    const-string/jumbo v7, "close InputStream failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static removeViaFeature(Ljava/lang/String;)Z
    .locals 8
    .param p0, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 317
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v4

    .line 318
    :cond_0
    const-string/jumbo v3, "&&"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "conditions":[Ljava/lang/String;
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v0, v1, v3

    .line 320
    .local v0, "cond":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 321
    const/4 v2, 0x1

    .line 322
    .local v2, "expect":Z
    const-string/jumbo v6, "!"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 323
    const/4 v2, 0x0

    .line 324
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    :cond_1
    invoke-static {v0, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eq v6, v2, :cond_2

    .line 327
    return v7

    .line 319
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 330
    .end local v0    # "cond":Ljava/lang/String;
    .end local v2    # "expect":Z
    :cond_3
    return v4
.end method

.method public static removeViaSecondSpace(Z)Z
    .locals 1
    .param p0, "isSecondSpace"    # Z

    .prologue
    .line 306
    if-nez p0, :cond_0

    invoke-static {}, Lcom/miui/internal/search/SearchUtils;->isSecondSpace()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
