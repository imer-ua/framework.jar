.class public Lmiui/log/LogSwitch;
.super Ljava/lang/Object;
.source "LogSwitch.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final isOn:Z

.field public final tagGroupName:Ljava/lang/String;

.field public final tagName:Ljava/lang/String;

.field public final uniqueName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "tagGroupName"    # Ljava/lang/String;
    .param p3, "isOn"    # Z

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lmiui/log/LogSwitch;->tagGroupName:Ljava/lang/String;

    .line 19
    iput-boolean p3, p0, Lmiui/log/LogSwitch;->isOn:Z

    .line 20
    iget-object v0, p0, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tag_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    .line 16
    :goto_0
    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "group_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/log/LogSwitch;->tagGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static parseLogSwitch(Ljava/lang/String;)Lmiui/log/LogSwitch;
    .locals 7
    .param p0, "logSwitchStr"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 49
    return-object v3

    .line 51
    :cond_0
    const-string/jumbo v1, "\\s+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "switchParts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 53
    return-object v3

    .line 55
    :cond_1
    aget-object v1, v0, v4

    const-string/jumbo v2, "Tag"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    new-instance v1, Lmiui/log/LogSwitch;

    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    aget-object v4, v0, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/log/LogSwitch;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1

    .line 57
    :cond_2
    aget-object v1, v0, v4

    const-string/jumbo v2, "Group"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    new-instance v1, Lmiui/log/LogSwitch;

    const-string/jumbo v2, ""

    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/log/LogSwitch;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1

    .line 60
    :cond_3
    return-object v3
.end method

.method public static parseLogSwitches(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .param p0, "logSwitchesStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/LogSwitch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    const-string/jumbo v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "logSwitchStrs":[Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v3, "logSwitches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/LogSwitch;>;"
    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v2, v4

    .line 68
    .local v1, "logSwitchStr":Ljava/lang/String;
    invoke-static {v1}, Lmiui/log/LogSwitch;->parseLogSwitch(Ljava/lang/String;)Lmiui/log/LogSwitch;

    move-result-object v0

    .line 69
    .local v0, "logSwitch":Lmiui/log/LogSwitch;
    if-eqz v0, :cond_0

    .line 70
    iget-object v6, v0, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "logSwitch":Lmiui/log/LogSwitch;
    .end local v1    # "logSwitchStr":Ljava/lang/String;
    :cond_1
    return-object v3
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 40
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 29
    iget-boolean v1, p0, Lmiui/log/LogSwitch;->isOn:Z

    if-eqz v1, :cond_0

    const-string/jumbo v0, "on"

    .line 30
    .local v0, "statusStr":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 29
    .end local v0    # "statusStr":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "off"

    .restart local v0    # "statusStr":Ljava/lang/String;
    goto :goto_0

    .line 33
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/log/LogSwitch;->tagGroupName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
