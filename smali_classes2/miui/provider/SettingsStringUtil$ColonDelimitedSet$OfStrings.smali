.class public Lmiui/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;
.super Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;
.source "SettingsStringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfStrings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/provider/SettingsStringUtil$ColonDelimitedSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "colonSeparatedItems"    # Ljava/lang/String;

    .prologue
    .line 80
    .local p0, "this":Lmiui/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;, "Lmiui/provider/SettingsStringUtil$ColonDelimitedSet<TT;>.OfStrings;"
    invoke-direct {p0, p1}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;-><init>(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "delimitedElements"    # Ljava/lang/String;
    .param p1, "element"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;

    invoke-direct {v0, p0}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "set":Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;, "Lmiui/provider/SettingsStringUtil$ColonDelimitedSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    return-object p0

    .line 100
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {v0}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static addAll(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 2
    .param p0, "delimitedElements"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;

    invoke-direct {v0, p0}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "set":Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;, "Lmiui/provider/SettingsStringUtil$ColonDelimitedSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "delimitedElements":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "delimitedElements"    # Ljava/lang/String;
    .param p1, "element"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string/jumbo v1, ":"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "elements":[Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "delimitedElements"    # Ljava/lang/String;
    .param p1, "element"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v0, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;

    invoke-direct {v0, p0}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "set":Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;, "Lmiui/provider/SettingsStringUtil$ColonDelimitedSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    return-object p0

    .line 110
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v0}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected bridge synthetic itemFromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 84
    .local p0, "this":Lmiui/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;, "Lmiui/provider/SettingsStringUtil$ColonDelimitedSet<TT;>.OfStrings;"
    invoke-virtual {p0, p1}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;->itemFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected itemFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 85
    .local p0, "this":Lmiui/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;, "Lmiui/provider/SettingsStringUtil$ColonDelimitedSet<TT;>.OfStrings;"
    return-object p1
.end method
