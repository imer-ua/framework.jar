.class public Lmiui/contentcatcher/sdk/data/FeatureInfo;
.super Ljava/lang/Object;
.source "FeatureInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/sdk/data/FeatureInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/contentcatcher/sdk/data/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_BLACKLIST:Ljava/lang/String; = "blacklist"

.field public static final KEY_CATCHER_NAME:Ljava/lang/String; = "catchers"

.field public static final KEY_WHITELIST:Ljava/lang/String; = "whitelist"

.field public static final NAME_VALUE_FAV_MODE:Ljava/lang/String; = "fav_mode"

.field public static final NAME_VALUE_PICK_MODE:Ljava/lang/String; = "pick_mode"


# instance fields
.field public enable:Z

.field public jobTag:Ljava/lang/String;

.field public mParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public target:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lmiui/contentcatcher/sdk/data/FeatureInfo$1;

    invoke-direct {v0}, Lmiui/contentcatcher/sdk/data/FeatureInfo$1;-><init>()V

    sput-object v0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->enable:Z

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->mParams:Ljava/util/HashMap;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v0, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->enable:Z

    .line 16
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->mParams:Ljava/util/HashMap;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->name:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->target:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->jobTag:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->enable:Z

    .line 103
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->mParams:Ljava/util/HashMap;

    .line 98
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getBlackList()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 37
    iget-object v3, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->mParams:Ljava/util/HashMap;

    const-string/jumbo v4, "blacklist"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 38
    return-object v5

    .line 40
    :cond_0
    iget-object v3, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->mParams:Ljava/util/HashMap;

    const-string/jumbo v4, "blacklist"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 41
    .local v2, "blackListString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    return-object v5

    .line 44
    :cond_1
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "blackListArray":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 46
    .local v1, "blackListSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-object v1
.end method

.method public getCatcherNameList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 25
    iget-object v2, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->mParams:Ljava/util/HashMap;

    const-string/jumbo v3, "catchers"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 26
    return-object v4

    .line 28
    :cond_0
    iget-object v2, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->mParams:Ljava/util/HashMap;

    const-string/jumbo v3, "catchers"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 29
    .local v1, "catcherNamesString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    return-object v4

    .line 32
    :cond_1
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "catcherNameArray":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getWhiteList()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 50
    iget-object v3, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->mParams:Ljava/util/HashMap;

    const-string/jumbo v4, "whitelist"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    return-object v5

    .line 53
    :cond_0
    iget-object v3, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->mParams:Ljava/util/HashMap;

    const-string/jumbo v4, "whitelist"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 54
    .local v2, "whiteListString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    return-object v5

    .line 57
    :cond_1
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "whiteListArray":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 59
    .local v1, "whiteListSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-object v1
.end method

.method public isMatched(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "version"    # I

    .prologue
    const/4 v2, 0x1

    .line 63
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/data/FeatureInfo;->getWhiteList()Ljava/util/Set;

    move-result-object v1

    .line 64
    .local v1, "whiteList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    :cond_0
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/data/FeatureInfo;->getBlackList()Ljava/util/Set;

    move-result-object v0

    .line 68
    .local v0, "blackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 71
    :cond_1
    return v2

    .line 65
    .end local v0    # "blackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 69
    .restart local v0    # "blackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    :cond_4
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", enable:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->enable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    iget-object v5, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->mParams:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "name$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    .local v1, "name":Ljava/lang/String;
    iget-object v5, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->mParams:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 79
    .local v4, "valueObj":Ljava/lang/Object;
    const-string/jumbo v3, "non-string"

    .line 80
    .local v3, "value":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 81
    const/4 v3, 0x0

    .line 85
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 82
    .restart local v3    # "value":Ljava/lang/String;
    :cond_1
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    move-object v3, v4

    .line 83
    nop

    nop

    goto :goto_1

    .line 87
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "valueObj":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_3

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 90
    :cond_3
    const-string/jumbo v5, "}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->target:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->jobTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-boolean v0, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->enable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Lmiui/contentcatcher/sdk/data/FeatureInfo;->mParams:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 112
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
