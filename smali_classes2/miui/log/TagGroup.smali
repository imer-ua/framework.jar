.class public final Lmiui/log/TagGroup;
.super Ljava/lang/Object;
.source "TagGroup.java"

# interfaces
.implements Lmiui/log/ILogTag;


# instance fields
.field private final androidTags:[Ljava/lang/String;

.field private isGroupOn:Z

.field private final miuiTags:[Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field private onNumber:I


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "miuiTags"    # [Ljava/lang/String;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/log/TagGroup;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "miuiTags"    # [Ljava/lang/String;
    .param p3, "androidTags"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lmiui/log/TagGroup;->name:Ljava/lang/String;

    .line 21
    if-nez p2, :cond_0

    new-array p2, v0, [Ljava/lang/String;

    .end local p2    # "miuiTags":[Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lmiui/log/TagGroup;->miuiTags:[Ljava/lang/String;

    .line 22
    if-nez p3, :cond_1

    new-array p3, v0, [Ljava/lang/String;

    .end local p3    # "androidTags":[Ljava/lang/String;
    :cond_1
    iput-object p3, p0, Lmiui/log/TagGroup;->androidTags:[Ljava/lang/String;

    .line 23
    iput-boolean v0, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    .line 24
    iput v0, p0, Lmiui/log/TagGroup;->onNumber:I

    .line 19
    return-void
.end method


# virtual methods
.method public isOn()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    return v0
.end method

.method public declared-synchronized switchOff()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 52
    :try_start_0
    iget v4, p0, Lmiui/log/TagGroup;->onNumber:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmiui/log/TagGroup;->onNumber:I

    .line 53
    const/4 v2, 0x0

    .line 54
    .local v2, "needSwitchOffTags":Z
    iget v4, p0, Lmiui/log/TagGroup;->onNumber:I

    if-nez v4, :cond_1

    .line 55
    const/4 v4, 0x0

    iput-boolean v4, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    .line 56
    const/4 v2, 0x1

    .line 61
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    .line 62
    iget-object v5, p0, Lmiui/log/TagGroup;->miuiTags:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    .line 63
    .local v1, "miuiTag":Ljava/lang/String;
    invoke-static {v1}, Lmiui/log/MiuiTags;->switchOff(Ljava/lang/String;)V

    .line 62
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 57
    .end local v1    # "miuiTag":Ljava/lang/String;
    :cond_1
    iget v4, p0, Lmiui/log/TagGroup;->onNumber:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 58
    const/4 v4, 0x0

    iput-boolean v4, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    .line 59
    const/4 v2, 0x1

    goto :goto_0

    .line 65
    :cond_2
    iget-object v4, p0, Lmiui/log/TagGroup;->androidTags:[Ljava/lang/String;

    array-length v5, v4

    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v0, v4, v3

    .line 66
    .local v0, "androidTag":Ljava/lang/String;
    invoke-static {v0}, Lmiui/log/AndroidTags;->switchOff(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "androidTag":Ljava/lang/String;
    :cond_3
    monitor-exit p0

    .line 51
    return-void

    .end local v2    # "needSwitchOffTags":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized switchOn()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    .line 32
    :try_start_0
    iget v4, p0, Lmiui/log/TagGroup;->onNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmiui/log/TagGroup;->onNumber:I

    .line 33
    const/4 v2, 0x0

    .line 34
    .local v2, "needSwitchOnTags":Z
    iget v4, p0, Lmiui/log/TagGroup;->onNumber:I

    if-nez v4, :cond_1

    .line 35
    const/4 v4, 0x0

    iput-boolean v4, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    .line 36
    const/4 v2, 0x1

    .line 41
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    .line 42
    iget-object v5, p0, Lmiui/log/TagGroup;->androidTags:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v0, v5, v4

    .line 43
    .local v0, "androidTag":Ljava/lang/String;
    invoke-static {v0}, Lmiui/log/AndroidTags;->switchOn(Ljava/lang/String;)V

    .line 42
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 37
    .end local v0    # "androidTag":Ljava/lang/String;
    :cond_1
    iget v4, p0, Lmiui/log/TagGroup;->onNumber:I

    if-ne v4, v5, :cond_0

    .line 38
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    .line 39
    const/4 v2, 0x1

    goto :goto_0

    .line 45
    :cond_2
    iget-object v4, p0, Lmiui/log/TagGroup;->miuiTags:[Ljava/lang/String;

    array-length v5, v4

    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v1, v4, v3

    .line 46
    .local v1, "miuiTag":Ljava/lang/String;
    invoke-static {v1}, Lmiui/log/MiuiTags;->switchOn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1    # "miuiTag":Ljava/lang/String;
    :cond_3
    monitor-exit p0

    .line 31
    return-void

    .end local v2    # "needSwitchOnTags":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
