.class Lmiui/util/TypefaceUtils$Holder;
.super Ljava/lang/Object;
.source "TypefaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/TypefaceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final MIUI_TYPEFACES:[Landroid/graphics/Typeface;


# direct methods
.method static synthetic -get0()[Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_TYPEFACES:[Landroid/graphics/Typeface;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 249
    const/4 v1, 0x4

    new-array v0, v1, [Landroid/graphics/Typeface;

    .line 250
    .local v0, "typefaces":[Landroid/graphics/Typeface;
    const-string/jumbo v1, "miui"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    aput-object v1, v0, v2

    .line 251
    const-string/jumbo v1, "miui"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    aput-object v1, v0, v3

    .line 252
    const-string/jumbo v1, "miui"

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    aput-object v1, v0, v4

    .line 253
    const-string/jumbo v1, "miui"

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    aput-object v1, v0, v5

    .line 254
    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_TYPEFACES:[Landroid/graphics/Typeface;

    .line 246
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
