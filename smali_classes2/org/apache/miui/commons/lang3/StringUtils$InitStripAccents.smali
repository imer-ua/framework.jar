.class Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/miui/commons/lang3/StringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitStripAccents"
.end annotation


# static fields
.field private static final java6Exception:Ljava/lang/Throwable;

.field private static final java6NormalizeMethod:Ljava/lang/reflect/Method;

.field private static final java6NormalizerFormNFD:Ljava/lang/Object;

.field private static final java6Pattern:Ljava/util/regex/Pattern;

.field private static final sunDecomposeMethod:Ljava/lang/reflect/Method;

.field private static final sunException:Ljava/lang/Throwable;

.field private static final sunPattern:Ljava/util/regex/Pattern;


# direct methods
.method static synthetic -get0()Ljava/lang/Throwable;
    .locals 1

    sget-object v0, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6Exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6NormalizeMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -get2()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6NormalizerFormNFD:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6Pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic -get4()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->sunDecomposeMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -get5()Ljava/lang/Throwable;
    .locals 1

    sget-object v0, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->sunException:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic -get6()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->sunPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .prologue
    .line 712
    const-string/jumbo v9, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->sunPattern:Ljava/util/regex/Pattern;

    .line 717
    sget-object v9, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->sunPattern:Ljava/util/regex/Pattern;

    sput-object v9, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6Pattern:Ljava/util/regex/Pattern;

    .line 721
    const/4 v2, 0x0

    .line 722
    .local v2, "_java6NormalizerFormNFD":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 723
    .local v1, "_java6NormalizeMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 724
    .local v3, "_sunDecomposeMethod":Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    .line 725
    .local v0, "_java6Exception":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 729
    .local v4, "_sunException":Ljava/lang/Throwable;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 730
    const-string/jumbo v10, "java.text.Normalizer$Form"

    .line 729
    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 731
    .local v8, "normalizerFormClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v9, "NFD"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 732
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 733
    const-string/jumbo v10, "java.text.Normalizer"

    .line 732
    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 734
    .local v7, "normalizerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v9, "normalize"

    .line 735
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const-class v11, Ljava/lang/CharSequence;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v11, 0x1

    aput-object v8, v10, v11

    .line 734
    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 751
    .end local v0    # "_java6Exception":Ljava/lang/Throwable;
    .end local v1    # "_java6NormalizeMethod":Ljava/lang/reflect/Method;
    .end local v2    # "_java6NormalizerFormNFD":Ljava/lang/Object;
    .end local v3    # "_sunDecomposeMethod":Ljava/lang/reflect/Method;
    .end local v4    # "_sunException":Ljava/lang/Throwable;
    .end local v7    # "normalizerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "normalizerFormClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    sput-object v0, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6Exception:Ljava/lang/Throwable;

    .line 752
    sput-object v2, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6NormalizerFormNFD:Ljava/lang/Object;

    .line 753
    sput-object v1, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6NormalizeMethod:Ljava/lang/reflect/Method;

    .line 754
    sput-object v4, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->sunException:Ljava/lang/Throwable;

    .line 755
    sput-object v3, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->sunDecomposeMethod:Ljava/lang/reflect/Method;

    .line 708
    return-void

    .line 736
    .restart local v0    # "_java6Exception":Ljava/lang/Throwable;
    .restart local v1    # "_java6NormalizeMethod":Ljava/lang/reflect/Method;
    .restart local v3    # "_sunDecomposeMethod":Ljava/lang/reflect/Method;
    .restart local v4    # "_sunException":Ljava/lang/Throwable;
    :catch_0
    move-exception v5

    .line 738
    .local v5, "e1":Ljava/lang/Exception;
    move-object v0, v5

    .line 741
    .local v0, "_java6Exception":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 742
    const-string/jumbo v10, "sun.text.Normalizer"

    .line 741
    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 743
    .restart local v7    # "normalizerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v9, "decompose"

    .line 744
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x1

    aput-object v11, v10, v12

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x2

    aput-object v11, v10, v12

    .line 743
    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .local v3, "_sunDecomposeMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 745
    .end local v7    # "normalizerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v3, "_sunDecomposeMethod":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v6

    .line 746
    .local v6, "e2":Ljava/lang/Exception;
    move-object v4, v6

    .local v4, "_sunException":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
