.class public abstract Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;
.super Ljava/util/HashSet;
.source "SettingsStringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/SettingsStringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ColonDelimitedSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashSet",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "colonSeparatedItems"    # Ljava/lang/String;

    .prologue
    .line 47
    .local p0, "this":Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;, "Lmiui/provider/SettingsStringUtil$ColonDelimitedSet<TT;>;"
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 48
    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 50
    .local v0, "cn":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;->itemFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "cn":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 60
    .local p0, "this":Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;, "Lmiui/provider/SettingsStringUtil$ColonDelimitedSet<TT;>;"
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "str":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method protected abstract itemFromString(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected itemToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;, "Lmiui/provider/SettingsStringUtil$ColonDelimitedSet<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    .local p0, "this":Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;, "Lmiui/provider/SettingsStringUtil$ColonDelimitedSet<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 67
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;->itemToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;->itemToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
