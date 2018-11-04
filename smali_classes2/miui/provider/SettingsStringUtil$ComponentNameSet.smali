.class public Lmiui/provider/SettingsStringUtil$ComponentNameSet;
.super Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;
.source "SettingsStringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/SettingsStringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentNameSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/provider/SettingsStringUtil$ColonDelimitedSet",
        "<",
        "Landroid/content/ComponentName;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "colonSeparatedPackageNames"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;-><init>(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static add(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p0, "delimitedElements"    # Ljava/lang/String;
    .param p1, "element"    # Landroid/content/ComponentName;

    .prologue
    .line 137
    new-instance v0, Lmiui/provider/SettingsStringUtil$ComponentNameSet;

    invoke-direct {v0, p0}, Lmiui/provider/SettingsStringUtil$ComponentNameSet;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "set":Lmiui/provider/SettingsStringUtil$ComponentNameSet;
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    return-object p0

    .line 141
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {v0}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static contains(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "delimitedElements"    # Ljava/lang/String;
    .param p1, "element"    # Landroid/content/ComponentName;

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {p0, v0}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static remove(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p0, "delimitedElements"    # Ljava/lang/String;
    .param p1, "element"    # Landroid/content/ComponentName;

    .prologue
    .line 146
    new-instance v0, Lmiui/provider/SettingsStringUtil$ComponentNameSet;

    invoke-direct {v0, p0}, Lmiui/provider/SettingsStringUtil$ComponentNameSet;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "set":Lmiui/provider/SettingsStringUtil$ComponentNameSet;
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    return-object p0

    .line 150
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {v0}, Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected itemFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic itemFromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lmiui/provider/SettingsStringUtil$ComponentNameSet;->itemFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method protected itemToString(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Landroid/content/ComponentName;

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic itemToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 132
    check-cast p1, Landroid/content/ComponentName;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/provider/SettingsStringUtil$ComponentNameSet;->itemToString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
