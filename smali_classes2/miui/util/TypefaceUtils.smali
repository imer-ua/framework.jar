.class public Lmiui/util/TypefaceUtils;
.super Ljava/lang/Object;
.source "TypefaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/TypefaceUtils$FontsWhiteListHolder;,
        Lmiui/util/TypefaceUtils$Holder;
    }
.end annotation


# static fields
.field private static final MIUI_TYPEFACE_FAMILY:Ljava/lang/String; = "miui"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static replaceTypeface(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldTypeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "newTypeface":Landroid/graphics/Typeface;
    invoke-static {p0}, Lmiui/util/TypefaceUtils;->usingMiuiFonts(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    if-eqz p1, :cond_0

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 261
    if-nez v2, :cond_0

    .line 263
    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v2, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 261
    if-eqz v2, :cond_1

    .line 264
    :cond_0
    if-nez p1, :cond_2

    const/4 v1, 0x0

    .line 265
    .local v1, "style":I
    :goto_0
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->-get0()[Landroid/graphics/Typeface;

    move-result-object v2

    aget-object v0, v2, v1

    .line 268
    .end local v0    # "newTypeface":Landroid/graphics/Typeface;
    .end local v1    # "style":I
    :cond_1
    if-nez v0, :cond_3

    .end local p1    # "oldTypeface":Landroid/graphics/Typeface;
    :goto_1
    return-object p1

    .line 264
    .restart local v0    # "newTypeface":Landroid/graphics/Typeface;
    .restart local p1    # "oldTypeface":Landroid/graphics/Typeface;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .restart local v1    # "style":I
    goto :goto_0

    .end local v0    # "newTypeface":Landroid/graphics/Typeface;
    .end local v1    # "style":I
    :cond_3
    move-object p1, v0

    .line 268
    goto :goto_1
.end method

.method public static usingMiuiFonts(Landroid/content/Context;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method
